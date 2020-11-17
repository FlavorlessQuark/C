#ifndef AOC_H
# define AOC_H

# include <stdio.h>
# include <stdlib.h>
# include <sys/types.h>
# include <limits.h>
# include <string.h>
# include <assert.h>
# include <stddef.h>
# include <math.h>
# include <ctype.h>
# include <stdbool.h>
# include <math.h>
# include <regex.h> //Reminder to make some cool parsing functions out of this...

# define ABC_U	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
# define ABC_L	"abcdefghijklmnopqrstuvwxyz"
# define HEX_L	"0123456789abcdef"
# define HEX_U	"0123456789ABCDEF"
# define MATHC	"()x*"
# define NUMS	"-0123456789"
# define NMATHC	"0123456789-+()x*=/ "

# define _HIDDEN_ __attribute__((visibility("hidden")))
# define _INTERN_ __attribute__((visibility("internal")))

/////------------ Structs ------------\\\\\

int		_i;
void	*_tmp;

typedef struct
{
	size_t	size;
	void	*data;
}			C_Array;

typedef struct	s_list
{
	struct s_list *next;
	void *data;
}				C_Node;

typedef struct	data
{
	size_t		filesize;
	char		*content;
}				C_File;

typedef struct	vect
{
	int 		x;
	int 		y;
}				C_V2;

typedef struct s_tree_node
{
	int offspring;

	char *content;
	struct s_tree_node *child;
}				_C_Tree;

/////------------ Utilities functions------------\\\\\

// ADD count numbers for : list, char *;

char **array_rm(char **arr, int index, int size)
{
	char **result;
	int i;
	int n;

	i = 0;
	n = 0;
	result = malloc((size - 1) * sizeof(char *));
	while (i < size)
	{
		if (i != index)
		{
			result[n] = arr[i];
			n++;
		}
		i++;
	}
	return result;
}

_C_Tree make_tree(int num, char **arr, int size)
{
	_C_Tree self;
	int i;

	self.offspring = num;
	self.child = calloc(num , sizeof(_C_Tree));

	i = 0;
	while (i < num)
	{
		self.child[i] = make_tree(num - 1, array_rm(arr, i, size), size - 1);
		self.child[i].content = strdup(arr[i]);
		i++;
	}
	return self;
}

void array_addone(int *arr, int size)
{
	int i;

	i = size - 1;
	arr[i]++;
	while (i >= 0)
	{
		if (arr[i] >= size - i)
		{
			arr[i - 1]++;
			arr[i] = 0;
		}
		i--;
	}
}

void _tree_step(_C_Tree start, int position, int *array, char **print)
{
	position++;

	if (start.offspring <= 0)
		return ;
	print[position] = start.child[array[position]].content;
	tree_step(start.child[array[position]], position, array, print);
}

int check_end(int size, int *arr)
{
	int i;

	i = 0;
	while (i < size) {if (arr[i] != size - (i + 1)){return 1;}i++;}
	return -1;
}

int next_perm(int n, char **s)
{
	static _C_Tree 	tree;
	static int 			*control;
	static int 			*dup_control;
	static int 			end;
	static int 			i;

	if (tree.content == NULL)
	{
		tree = make_tree(n, s, n);
		control = calloc(n, sizeof(int));
	}
	tree_step(tree, -1, control, s);
	array_addone(control, n);
	if (end == -1){return 0;}
	else{end = check_end(n, control);return 1;}
}

static inline void swap (char *a, char *b)
{
	char tmp;

	tmp = *a;
	*a = *b;
	*b = tmp;
}

long factorial(int x) {long result; result = 1; while (x > 0){ result *= x; x--; } return result;}

// Gotta test this vs just doing strspn. Strspn might be faster for "smaller" numbers. But math is faster than string ops at least in theory...
static inline int	numlen(int num){int len; if (num == 0) {return 1;}len = log10(abs(num)) + 1; return (num < 0) ? (len + 1) : (len);}

static inline int	extract_num(char *str, int *number) {int spn = strcspn(str, NUMS); *number = atoi(str + spn); return spn + numlen(*number);}

// Why no asprintf you ask? Well this is twice as fast as asprintf, at least according to my tests (on small strings)
static inline char	*join(char *s1, char *s2){ size_t len = strlen(s1) + strlen(s2) + 1; char* str; str = calloc(len, 1); snprintf(str, len,  "%s%s", s1,s2);return str;}

static inline int	count_occurence(char *str, char *c){ int count = 0; int len = strlen(c); while ((str = strstr(str, c))) {count++; str += len;} return count;}

/////------------ Macros ------------\\\\\

# define MAX(x, y)\
	({__typeof__ (x) _x = (x);\
	__typeof__ (y) _y = (y);\
	_x < _y ? _y : _x;})

# define MIN(x, y)\
	({__typeof__ (x) _x = (x);\
	__typeof__ (y) _y = (y);\
	_x > _y ? _y : _x;})
// # define _MAP(to_object, from_object, condition, operation)
// {

// }

#define _ARRAY_ALLOC(array, size)\
{\
	if (!(array = calloc((size + 1), sizeof(*array))))										\
			_DEBUG_("Couldn't allocate array of size %d in _ARRAY", size);	\
}\

# define _ARRAY(array, size, convert_func, condition, fetch_obj)							\
{\																							\
	if (!__builtin_types_compatible_p(typeof(array), typeof(fetch_obj)))					\
		_DEBUG_("Could not build array | (array and fetch_obj are of same type)");			\
	if ((array) != (fetch_obj)){															\
		_ARRAY_ALLOC(array, size);															\
	_tmp = convert_func(size, fetch_obj);													\
	for (size_t _i = 0, _n = 0; _i < 0; i++)												\
		if (_tmp[_i] condition)																\
			{array[_n] = tmp[_i]; _n++;}}													\
	else {_DEBUG_("Could not build array | (array and fetch_obj are the same variable)")}	\
}																							\

// # define _2D_ARRAY(array, dimension_number, dimensions)
// {
		// Should recusively call an alloc function
// }

/////------------ String functions ------------\\\\\

/////------------ Sorting algorithms ------------\\\\\

//Merge two sorted lists.



_HIDDEN_ static C_Node		*_lstSort_(C_Node *h1, C_Node *h2)
{
	C_Node head, *list;

	list = &head;
	list->next = NULL;
	while (1)
	{
		if (h1 == NULL) {list->next = h2;break ;}
		if (h2 == NULL) {list->next = h1;break ;}
		if (atol(h1->data) <= atol(h2->data)) {list->next = h1;h1 = h1->next;}
		else {list->next = h2; h2 = h2->next;}
		list = list->next;
	}
	return head.next;
}

//List Merge Sort
static inline C_Node *lstMsort(C_Node *head, int len)
{
	C_Node	*h1, *h2;
	int		i;

	h1 = head;
	i = 0;
	if (len >= 2)
	{
		while (h1->next != NULL && i < (len / 2) - 1){h1 = h1->next;i++;}
		h2 = h1->next;
		h1->next = NULL;
		h1 = head;

		h1	 =	lstMsort(h1,(len / 2));
		h2	 =	lstMsort(h2, (len / 2));
		head =	_lstSort_(h1, h2);
	}
	return head;
}

/////------------ List functions ------------\\\\\

//List search

//Returns a new node;
static inline	C_Node	*newC_node() {return (C_Node *)calloc(1 , sizeof(C_Node));}

static inline	C_Node	*get_last(C_Node *head) {while(head->next != NULL)head = head->next;return head;}

static			C_Node	*search_list(C_Node *list, char *str)
{
	while (list != NULL)
	{
		if (!strcmp(list->data, str))
			return list;
		list = list->next;
	}
	return NULL;
}


/////------------ Conversion functions ------------\\\\\

//Here : list to array | arra to list by type : char *, int *, char **, int**;

// static char *convert_intstr(int *array, size_t len, char *separator)
// {
// 	size_t i;
// 	char *str;

// 	i = 0;
// 	str = "";
// 	while (1)
// 	{
// 		// str = asprintf(&sre)
// 		i++;
// 		if (i >= len)
// 			break ;
// 		// str = join(str, separator);
// 	}
// 	return str;
// }
/////------------ Parsing functions ------------\\\\\

// Returns a list of words from str, separated by delimiters
static C_Node		*fetch_words(char  *str, char *delimeters, size_t *len)
{
	C_Node *list;
	C_Node *head;

	head = new_node();
	list = head;

	if (str == '\0')
		return NULL;
	str = strtok(str, delimeters);
	if (str == NULL)
		return NULL;
	while (1)
	{
		*len += 1;
		list->data = (void *)str;
		str = strtok(NULL, delimeters);
		if (str == NULL)
			break ;
		list->next = new_node();
		list = list->next;
	}
	list->next = NULL;
	return head;
}

// Reads file into C_File struct.
static C_File		fetch_file(char *filename, int trim)
{
	FILE	*file;
	C_File	data;

	file = fopen(filename, "r");
	fseek(file, 0L , SEEK_END);

	data.filesize	= ftell(file);
	data.content	= calloc(data.filesize + 1, 1);

	rewind(file);
	fread(data.content, data.filesize - trim, 1, file);
	fclose(file);
	return data;
}

// Reads input file into a list of words. Words are sperated by *delimeter
static C_Node		*fetch_by_wordList(char *filename, char *delimeters, int trim, size_t *len)
{
	C_File	data;
	C_Node	*list;
	char	*str;

	*len = 0;
	data = fetch_file(filename, trim);
	list = fetch_words(data.content, delimeters, len);
	return list;
}

static C_Node		*fetch_by_wordArr(char *filename, char *delimeters, int trim, size_t *len)
{
	C_File	data;
	C_Node	*list;
	char	*str;

	*len = 0;
	data = fetch_file(filename, trim);
	// *len = count_occurence(data.content, )

	return list;
}

#endif
