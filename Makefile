.PHONY: HOSTTYPE confirm all clean fclean re

SHELL := /bin/bash

ifeq ($(HOSTTYPE),)
        HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

confirm:
	@echo "$(HOSTTYPE)"

SRCS =  ft_malloc.c \
        ft_free.c \
        ft_realloc.c \
        main.c

OBJS = $(SRCS:.c=.o)

CC = @cc 
RM = @rm -f
CFLAGS  = -Wall -Wextra -Werror

NAME = libft_malloc.so
SONAME = libft_malloc_$(HOSTTYPE).so

all: $(NAME)

$(SONAME): $(OBJS)
	@$(CC) -shared -fPIC -o $(SONAME) $(OBJS)
	@echo "Created $(SONAME)"

$(NAME): $(SONAME)
	@ln -sf $(SONAME) $(NAME)
	@echo "Created symlink: $(NAME) -> $(SONAME)"

$(OBJS): %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled $<"

clean:
	@echo "Cleaning..."
	@$(RM) $(OBJS)

fclean: clean
	@$(RM) $(SONAME) $(NAME)

re: fclean $(NAME)

