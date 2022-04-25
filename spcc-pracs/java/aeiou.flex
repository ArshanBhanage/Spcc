%option noyywrap
%{
#include<stdio.h>
int op=0,id=0,b=0;
%}
%%
[a-zA-Z]+[a-zA-Z0-9]* {id++;}
[*|/|+|-|/|=] {op++;} 
"(" {b++;}
\n ")"; {b--;}
%%
int main()
{
  printf("Enter sentence: ");
  yylex();
  if(op+1==id && b==0){
  printf("Expression is valid");
}else{
  printf("Expression is invalid");
}
  return 0;
}