#include <stdio.h>

int main(void){
	//static const char *sp1 = "This string is long.";	
	printf("sizeof(short)     = %ld\n", sizeof(short));
	printf("sizeof(int)       = %ld\n", sizeof(int));
	printf("sizeof(long)      = %ld\n", sizeof(long));
	printf("sizeof(long long) = %ld\n", sizeof(long long));
	printf("sizeof(float)     = %ld\n", sizeof(float));
	printf("sizeof(double)    = %ld\n", sizeof(double));

	printf("sizeof(char*)      = %ld\n", sizeof(char*));
	printf("sizeof(long long*) = %ld\n", sizeof(long long*));
	printf("sizeof(double*)    = %ld\n", sizeof(double*));
	return 0;
}
