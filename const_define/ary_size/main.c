
//#define DEF_MACRO

#ifdef DEF_MACRO
#define NUM 5
#endif

int main(void){
#ifndef DEF_MACRO
	static const int NUM = 5;
#endif
	//int ary[NUM] = {0};
	int ary[NUM];
	ary[0] = 10;

	return ary[0];
}
