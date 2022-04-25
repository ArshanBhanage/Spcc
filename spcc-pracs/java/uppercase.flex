%option noyywrap
%{
#include<stdio.h>
int op=0,id=0,b=0;
%}
%%
[a-zA-Z]+[a-zA-Z0-9]* {id++;}
[*|/|+|-|/|=] {op++;} 
"(" {b++;}
\n ")"; {b--;if(op+1==id && b==0){printf("Expression is valid");}else{printf("Expression is invalid");}}
%%
int main()
{
  printf("Enter sentence: ");
  yylex();
  return 0;
}