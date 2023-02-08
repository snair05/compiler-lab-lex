%{
#include<stdio.h>
int count=0;
%}
%%
[a-zA-Z]+ {if(yyleng<5)
           {
              count++;
           };
           }
%%
int main()
{
yyin=fopen("sample.txt","r");
yylex();
printf("%d",count);
}
int yywrap()
{
 return 1;
}
