%{
#include<stdio.h>
%}
%%
^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])"."){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]) printf("Valid IP Address\n");
^.* printf("Invaild IP Address\n");
\n {return 0;}
%%
int main()
{
printf("Enter the ip address:");
yylex();
}
int yywrap()
{
return 1;
}
