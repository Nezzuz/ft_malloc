#include <ft_malloc.h>

void*	ft_realloc(void* ptr, size_t size)
{
	int	i;
	char*	new_malloc;

	if (size == 0)
		return (free(ptr), NULL);
	i = 0;
	while (((char*)ptr)[i] != '\0')
		i++;
	if (i > size)
	{
		i = 0;
		while (i < (size - 1))
			i++;
		/* ((char*)ptr)[i] = '\0'; */	
		return (printf("%s\n", (char*)ptr), ptr);
	}
	new_malloc = (char*)malloc((sizeof(char) * size) + 1);
	if (!new_malloc)
		return (NULL);
	i = 0;
	while (i < size)
		new_malloc[i] = ((char*)ptr)[i], i++;
	/* new_malloc[i] = '\0'; */
	return (free(ptr), printf("%s\n", new_malloc), new_malloc);
}

int	oldmainforbeforeproyecttests(void)
{
	char*	str;
	char*	ptr;

	str = malloc(5 * sizeof(char) + 1);
	str[0] = 'H';
	str[1] = 'o';
	str[2] = 'l';
	str[3] = 'a';
	str[4] = 'H';
	printf("%s\n", str);
	str = (char*)ft_realloc(str, 7);
	/* int	i = 0; */
	/* while (i < 10) */
	/* 	str[i] = 'x', i++; */
	printf("%s\n", str);
	return (0);
}

int	main(void)
{
	return (0);
}
