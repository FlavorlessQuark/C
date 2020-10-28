# include "clib.h"

int main()
{
	char *thischar;
	char *thatchar;

	thatchar = thischar;
	
	_ARRAY(thischar, 0, NULL, NULL, thatchar);
}
