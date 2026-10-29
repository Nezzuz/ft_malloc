#ifndef FT_MALLOC
#define FT_MALLOC
#include <unistd.h> //Also includes getpigesize
#include <stdlib.h>
#include <stdio.h>
#include <sys/mman.h> //For mmap and munmap
#include <sys/time.h> //Contains getrlimit
		      
/* static struct	s_metadata */
extern struct	s_metadata
{
	void*		payload;
	size_t		payload_size;
	unsigned int	is_vacant;
}		t_metadata;
  
void*	ft_malloc(size_t size);
void	ft_free(void* ptr);
void*	ft_realloc(void* ptr, size_t size);

#endif

