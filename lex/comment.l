%{
 #include<stdio.h>
%}
%%
"//".*
"/*"[^*/]*"*/"
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
