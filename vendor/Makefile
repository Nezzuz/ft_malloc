.PHONY: build clean fclean re

build:
	@echo "Creating all libraries"
	@cd Libft && make re && cp libft.a .. 
	@cd ft_printf42 && make re && cp libftprintf.a ..
	@cd GNL_42 && make re && cp libget_next_line.a ..

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
