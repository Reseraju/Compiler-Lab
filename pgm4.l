%{
#include<stdio.h>
int count=0;

%}

digit[0-9]
letter[a-zA-Z_]

%%
if |
else |
printf {printf("\n%s is a keyword", yytext);}
[0-9]+ {printf("\n%s is a number", yytext);}
[(a-zA-Z_)((a-zA-Z_)|(0-9))*]+ {{count++;} printf("\n %d identifiers.",count);}
[*+-/%]+ {printf("\n%s is an operator", yytext);}
.|\n {ECHO;}
%%

int main()
{
	printf("\n Enter the string: ");
	yylex();
}
int yywrap(){
	return 1;
}
