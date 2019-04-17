%{
%}
%%
#.* {printf("%s is a preprocessor\n",yytext);}
\int|\float|\char|\void|\for|\if|\while|\do|\switch|\case|\double|\else|\exit|\break|\continue {printf("%s is a keyword\n",yytext);}
\= {printf("%s is an assignment operator\n",yytext);}
\==|\<|\>|\<=|\>=|\!= {printf("%s is an relational operator\n",yytext);}
\+|\/|\*|\- {printf("%s is an arithmetic operator\n",yytext);}
[a-zA-Z][a-zA-Z0-9]* {printf("%s is a identifier\n",yytext);}
[a-zA-Z][a-zA-Z0-9]*\( {printf("%s is a function\n",(yytext);}
[a-zA-Z][a-zA-Z0-9]*\{ {printf("%s is the begining of a section\n",yytext);}
[a-zA-Z][a-zA-Z0-9]*\} {printf("%s is the end of a section\n",yytext);}
[0-9] {printf("%s is a number\n",yytext);}
"//".* {}
"/*".* {}
"\t" {}
%%

int main(int argc,char **argv)
{
	FILE *fp;
	fp=fopen("sample.c","r");
	if(!fp)
	{
		printf("cant open file\n");
		exit(0);
	}
	yyin=fp;
	yylex();
}
