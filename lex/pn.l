%{
#include<stdio.h>
int pos,neg;
%}
%%
^[-][0-9]* {printf("negative");
            neg++;}
[0-9]* {printf("positive");
        pos++;}
%%
int main()
{
 yyin=fopen("input.txt","r");
 yylex();
}
int yywrap()
{
 return 1;
}
