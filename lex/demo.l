%{
#include<stdio.h>
%}
%%
^[-][0-9]* {printf("Negative");}
[0-9]+ {printf("positive");}
%%
int main()
{
 printf("Enter the input:");
 yylex();
 return 0;
}
int yywrap()
{
 return 1;
}

