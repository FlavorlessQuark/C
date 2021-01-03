#include "cstructs.h"

static C_File		fetch_data_raw(char *filename, int trim)
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

static int fetch_data(char *filename, char ***dest, char *sep)
{
	C_File file;
	char **tmp;

	file 	= fetch_data_raw(filename, 1);
	SPLIT(file.content, dest, sep)
	return _tmp_int;
}

