#include "cstructs.h"

inline	C_Node	*list_node() {return (C_Node *)calloc(1 , sizeof(C_Node));}

inline	C_Node	*list_last(C_Node *head) {while(head->next != NULL)head = head->next;return head;}

static C_Node		*lstSort(C_Node *h1, C_Node *h2, int(*cmp_func)(void *, void *))
{
	C_Node head, *list;

	list = &head;
	list->next = NULL;
	while (1)
	{
		if (h1 == NULL) {list->next = h2;break ;}
		if (h2 == NULL) {list->next = h1;break ;}
		if (cmp_func(&h1->data, &h2->data) <= 0) {list->next = h1;h1 = h1->next;}
		else {list->next = h2; h2 = h2->next;}
		list = list->next;
	}
	return head.next;
}

C_Node	*list_search(C_Node *list, char *str)
{
	while (list != NULL)
	{
		if (!strcmp(list->data, str))
			return list;
		list = list->next;
	}
	return NULL;
}



//List Merge Sort
C_Node 		*lstMsort(C_Node *head, int len, int(*cmp_func)(void *, void *))
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

		h1	 =	lstMsort(h1,(len / 2), cmp_func);
		h2	 =	lstMsort(h2, (len / 2), cmp_func);
		head =	lstSort(h1, h2, cmp_func);
	}
	return head;
}
