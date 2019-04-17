%{
#include<stdio.h>
FILE *fp;
%}
%%
[A-Z] {fprintf(fp,"%c",yytext[0]);}
[a-z] {fprintf(fp,"%c",toupper(yytext[0]));}
[\n] {fprintf(fp,"\n");}
. {fprintf(fp,"%c",yytext[0]);}
%%

int main(int argc,char **argv)
{

	yyin=fopen(argv[1],"r");
	fp=fopen(argv[2],"w");
	if(!fp)
	{
		printf("cant open file\n");
		exit(0);
	}
	yylex();
}												
