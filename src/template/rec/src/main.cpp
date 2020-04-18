#include<iostream>
extern "C"{
void ftparvoid();
void ftparint(int*);
void ftparintarr(int*,int*);
void ftpardouble(double*);
void ftpardoublearr(double*,int*);
}
int main(int argc,char** argv){
	int _int=1;
	int _intarr[]={0,1,2,3};
	double _double=1.23;
	double _doublearr[]={0,1.2,3.45,6.789};
	ftparvoid();
	ftparint(&_int);
	ftpardouble(&_double);
	_int=sizeof(_intarr)/sizeof(_intarr[0]);
	ftparintarr(_intarr,&_int);
	_int=sizeof(_doublearr)/sizeof(_doublearr[0]);
	ftpardoublearr(_doublearr,&_int);
	return 0;
}
