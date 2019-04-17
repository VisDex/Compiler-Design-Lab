%{
int count;
%}
%%
[A-Z] {printf("%s is a capital letter \n",yytext);count++;}
. {printf("%s not caps \n",yytext);}
\n {return 0;}
%%
main ()
{
	printf("Enter the string: \n");
	yylex();
	printf("capcount is %d",count);
}
