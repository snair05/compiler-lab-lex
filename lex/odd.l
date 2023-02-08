%{
#include<stdio.h>
int odd,even;
%}
%%
^[0-9]*[02468]$ {printf("even");
          even++;
         }
[0-9]* {printf("odd");
         odd++;
       }
%%
int main()
{
printf("enter num:");
yylex();
}
int yywrap()
{
 return 1;
}
