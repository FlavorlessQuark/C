#ifndef CSTRUCTS_H
# define CSTRUCTS_H

# include <sys/types.h>
# include <stdio.h>

# define MATHC	("()x*")
# define PNUMS  ("0123456789")
# define NNUMS	("-0123456789")
# define HEX_L	("0123456789abcdef")
# define HEX_U	("0123456789ABCDEF")
# define NMATHC	("0123456789-+()x*=/ ")
# define ABC_U	("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
# define ABC_L	("abcdefghijklmnopqrstuvwxyz")

typedef struct		s_list
{
	void			*data;

	struct s_list	*next;
}					C_Node;

typedef struct	data
{
	size_t		filesize;
	char		*content;
}				C_File;

typedef struct	vect
{
				int x;
				int y;
}				C_V2;


#endif
