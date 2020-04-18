#include<iostream>
extern "C"{
void ftparvoid();
void ftparint(int*);
void ftparintarr(int*,int*);
void ftpardouble(double*);
void ftpardoublearr(double*,int*);
void ftarr(void);
int  ftfnint(void);
}
int main(int argc,char** argv){
	ftarr();
	printf("%d\n",ftfnint());
	return 0;
}
