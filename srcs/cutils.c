#include "cstructs.h"

inline int	numlen(int num){int len; if (num == 0) {return 1;}len = log10(abs(num)) + 1; return (num < 0) ? (len + 1) : (len);}

inline int	extract_num(char *str, int *number) {int spn = strcspn(str, NNUMS); *number = atoi(str + spn); return spn + strspn(str + spn, PNUMS);}

inline char	*join(char *s1, char *s2){ size_t len = strlen(s1) + strlen(s2) + 1; char* str; str = calloc(len, 1); snprintf(str, len,  "%s%s", s1,s2);return str;}

inline int	count_occurence(char *str, char *find) {int count = 0; size_t l = strlen(find); while ((str = strstr(str, find)) != NULL) {count++;str += l;} return count;}

inline int		int_CmpLess		(void *a, void *b){return (int *)a < (int *)b;}
inline int		int_CmpLessEq	(void *a, void *b){return (int *)a > (int *)b;}
inline int		int_CmpGreater	(void *a, void *b){return (int *)a <= (int *)b;}
inline int		int_CmpGreaterEq(void *a, void *b){return (int *)a >= (int *)b;}
inline int		int_CmpEq		(void *a, void *b){return (int *)a == (int *)b;}

inline int		str_CmpLess		(void *a, void *b){return strcmp((char *)a, (char *)b);}
inline int		str_CmpGreater	(void *a, void *b){return strcmp((char *)a, (char *)b) * - 1;}

inline void swap(char *a, char *b)
{
	char tmp;

	tmp = *a;
	*a = *b;
	*b = tmp;
}
