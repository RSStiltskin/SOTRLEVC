#include <stdio.h>
extern char D[];
int fun_mod7(int);

long main(){
	int intI, intJ, intK, intL, intSUMA=0;
	printf("HOLA MUNDO SOTR!\n");
	intI=fun_mod7(16);
	intJ=2;/*febrero*/
	intK=18+18/4;
	intL=0;
	int intM=0;
	intSUMA=intI+intJ+intK+intL+intM;
	printf("Hoy es %c\n",D[fun_mod7(intSUMA)]);
	return 0;
}/*end main()*/

