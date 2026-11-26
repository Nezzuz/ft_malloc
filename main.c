#include "includes/ft_malloc.h"
//Compiling .so's test: gcc main.c -g3 -Iincludes -L. -lft_malloc -Wl,-rpath,'$ORIGIN'

int	main(void)
{
	ft_printf("Hola");
	return (0);
}
