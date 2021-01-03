#ifndef CLIB_H
# define CLIB_H
// # include <CommonCrypto/CommonDigest.h>
// # include <regex.h>

# include <stdbool.h>
# include <stdlib.h>
# include <limits.h>
# include <string.h>
# include <assert.h>
# include <stddef.h>
# include <ctype.h>
# include <math.h>


# include "cstructs.h"

# define _HIDDEN_	 __attribute__((visibility("hidden")))
# define _INTERN_	 __attribute__((visibility("internal")))

# define ITER		 (_i)


/////------------ Structs ------------\\\\\

void 	*_tmp_ptr;
int		_tmp_int;
size_t 	_i;
/////------------ Utilities functions------------\\\\\

// ADD count numbers for : list, char *;
static inline void	printbool(bool *lst, size_t len){size_t i; i = 0; while (i < len) {printf("%d ", lst[i]);  i++;} putchar('\n');}

static inline void	printnum(int *list, size_t len){size_t i; i = 0; while (i < len) {printf("%d ", list[i]); i++;} putchar('\n');}

/////------------ Macros ------------\\\\\

# define DEBUG(msg, ...) fprintf(stderr, "\033[1;91m[LOG](%s:%d) >>\033[0m "msg"\n", __FILE__, __LINE__, ##__VA_ARGS__)

# define MAX(x, y)\
	({__typeof__ (x) _x = (x);\
	__typeof__ (y) _y = (y);\
	_x < _y ? _y : _x;})

# define MIN(x, y)\
	({__typeof__ (x) _x = (x);\
	__typeof__ (y) _y = (y);\
	_x > _y ? _y : _x;})

# define FOREACH(condition, body){ _i = 0; while (condition){body; _i++;}}

# define MAP_INPLACE(obj, func, len)						\
{															\
	FOREACH(obj, ITER < len, OBJ = func(OBJ))				\
}															\

# define MAP(obj, func, len, dest)							\
{															\
	_tmp_int = sizeof(func(obj[0]));						\
	dest = calloc(_tmp_int, len);							\
	FOREACH(ITER < len, dest[ITER] = func(obj[ITER]))		\
}															\

void intp	(int *ptr, size_t len)	{size_t i; i = 0;while (i < len) {printf("%d\n", ptr[i]); i++;};}
void boolp(bool *ptr, size_t len)	{size_t i; i = 0;while (i < len) {ptr[i] == true ? printf("True\n") : printf("False\n"); i++;}}
void vectp(C_V2 **ptr, size_t len)	{size_t i; i = 0; while (i < len) {printf("(%d,%d)\n", ptr[i]->x, ptr[i]->y); i++;}}
void nodep(C_Node *ptr, size_t len) {while (ptr != NULL){printf("%s\n", (char *)ptr->data);ptr = ptr->next;}}
void defp	(void *ptr, size_t len)	{DEBUG("Using undefined type | use printf for char * |");}


# define _PRINT_1D(array, size) _Generic((array),	\
	int		*: intp ((int  *)array, size),		\
	bool	*: boolp((bool *)array, size),		\
	_Node	*: nodep((_Node *)array, size),		\
	_V2		**:vectp((_V2 **)array, size),		\
	default	 : defp (array, size))				\

# define SPLIT(data, dest, sep) 													\
{																					\
	_tmp_int= count_occurence(data, sep) + 1;										\
	*dest	= malloc(sizeof(char *) * _tmp_int);									\
	data 	= strtok(data, sep);													\
	FOREACH(data != NULL, (*dest)[ITER] = strdup(data); data = strtok(NULL, sep));	\
}
#endif
