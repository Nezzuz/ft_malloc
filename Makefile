.PHONY: HOSTTYPE confirm all clean fclean re

.DEFAULT_GOAL := all

SHELL := /bin/bash

ifeq ($(HOSTTYPE),)
        HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

confirm:
	@echo "$(HOSTTYPE)"

SRCS =  src/ft_malloc.c \
        src/ft_free.c \
        src/ft_realloc.c

OBJS = $(SRCS:.c=.o)

CC = @cc 
RM = @rm -f
CFLAGS  = -Wall -Wextra -Werror 
# While-archives thing lets me include libraries functions and pour them into this .so
LIBS = -Wl,--whole-archive vendor/libft.a vendor/libftprintf.a vendor/libget_next_line.a -Wl,--no-whole-archive

NAME = libft_malloc.so
SONAME = libft_malloc_$(HOSTTYPE).so

all: $(NAME)

$(SONAME): $(OBJS)
	@$(MAKE) -C vendor re 
	@$(CC) -shared -fPIC -o $(SONAME) $(OBJS) $(LIBS)
	@echo "Created $(SONAME)"

$(NAME): $(SONAME)
	@ln -sf $(SONAME) $(NAME)
	@echo "Created symlink: $(NAME) -> $(SONAME)"

$(OBJS): %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled $<"

clean:
	@echo "Cleaning..."
	@$(MAKE) -C vendor clean
	@$(RM) $(OBJS)

fclean: clean
	@$(MAKE) -C vendor fclean
	@$(RM) $(SONAME) $(NAME)

re: fclean $(NAME)
