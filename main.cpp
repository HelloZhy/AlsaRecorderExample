#include "includes.h"

int main() {
	char* _pbuf = NULL;	
	int len = record(5000, &_pbuf);
	printf("_pbuf address: %lxH\n", (long unsigned int)_pbuf);
#if DEBUG
	if(len >= 0){
		for(int i = 0; i < len; i += 2){
			printf("%d\t", (int16_t)(_pbuf[i]));
			if(i % (2*5) == 0) printf("\n");
		}
		printf("\n");
	}
#endif
	complex<double>* x1 = NULL;
	x1 = extract((uint16_t*)_pbuf, len / 2);
	free((void*)_pbuf);
	return 0;
}
