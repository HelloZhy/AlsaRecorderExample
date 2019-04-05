#include "includes.h"

int main() {
	char* _pbuf = NULL;	
	record(5000, &_pbuf);
	printf("_pbuf address: %lxH\n", (long unsigned int)_pbuf);
	free((void*)_pbuf);
	return 0;
}
