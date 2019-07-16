//#define STR1	"The quick brown fox jumps over the lazy dog."
const char* STR1 = "The quick brown fox jumps over the lazy dog.";
#define NULL ((void *)0)

int main(void){
	const char *pc[10];

#if 0
	pc[0] = NULL;
	pc[1] = NULL;
	pc[2] = NULL;
	pc[3] = NULL;
	pc[4] = NULL;
	pc[5] = NULL;
	pc[6] = NULL;
	pc[7] = NULL;
	pc[8] = NULL;
	pc[9] = NULL;
#else
	pc[0] = STR1;
	pc[1] = STR1;
	pc[2] = STR1;
	pc[3] = STR1;
	pc[4] = STR1;
	pc[5] = STR1;
	pc[6] = STR1;
	pc[7] = STR1;
	pc[8] = STR1;
	pc[9] = STR1;
#endif

	return *(int*)pc[0];
}
