#include <unistd.h> //Also includes getpigesize
#include <stdlib.h>
#include <stdio.h>
#include <sys/mman.h> //For mmap and munmap
#include <sys/time.h> //Contains getrlimit
		   
void*	ft_malloc(size_t size);
void	ft_free(void* ptr);
void*	ft_realloc(void* ptr, size_t size);
