.PHONY: build clean fclean re
.DEFAULT_GLOBAL : build

build:
	@echo "Creating all libraries"
	@$(MAKE) -C Libft 
	@cp Libft/libft.a .
	@$(MAKE) -C ft_printf42
	@cp ft_printf42/libftprintf.a .
	@$(MAKE) -C GNL_42
	@cp GNL_42/libget_next_line.a .

clean:
	@echo "Cleaning..."
	@rm -f Libft/*.o
	@rm -f ft_printf42/*.o
	@rm -f GNL_42/*.o

fclean: clean
	@rm -f *.a
	@rm -f Libft/*.a
	@rm -f ft_printf42/*.a
	@rm -f GNL_42/*.a

re:	fclean build
