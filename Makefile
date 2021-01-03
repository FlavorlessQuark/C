NAME="CLIB"

INCL= incl/

FILENAMES=\
	cfile\
	clist\
	cutils\


CFILES= $(addprefix srcs/, $(addsuffix .c $(FILENAMES)))
OBJFILES= $(addprefix objs/, $(addsuffix .o $(FILENAMES)))


all:

clean:

fclean:
