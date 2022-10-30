imports   "#include<stdio.h>"|"#include<bits/stdc++.h>"
start     "main()"
def       "define"
show      "printf"
take      "scanf"
input      "&"{Letter}+{Digit}*
brk1       [()]
brk2       [{}]
brk3       [[]]
int_i      "int"
float_f    "float"
double_d   "double"
char_c     "char"
str        "string"
llint      "long long int"
Bool       "bool"
brk        "break"
extend     "continue"
switch_s   "switch"
cse        "case"
reuse      "return"
Digit      [0-9]
Letter     [a-zA-Z]
jog        [+]
biyog      [-]
gun        [*]
vag        [/]
exp       "pow"
equ       "=="
assign     [=]
GT         [>]
GTEQ       ">="
LT         [<]
LTEQ       "<="
int_number   "%d"
float_number  "%f"
character     "%c"
String        "%s"
Token         [,;]
iff           "if"
elif          "else if"
otherwise     "else"
floop         ("for")("(")
wloop         ("while")("(")
array         {Letter}+("["){Digit}+("]")
inc       "++"
decr      "--"
sum_as    "+="
sub_as    "-="
modd      "%"
not_equ   "!="
and       "&&"
or        "||"
not       "!"
space     [ ]

%{
	

%}
%%
{brk}                              printf("%s is a Break Statement\n",yytext);
{extend}                           printf("%s is a Continue Statement\n",yytext);
{switch_s}                         printf("%s is a Switch Statement\n",yytext);
{reuse}                            printf("%s is Return a Value\n",yytext);
{Digit}+                           printf("%s is a Positive Digit\n",yytext);
{imports}                          printf("%s is a Header File\n",yytext);
{start}                            printf("%s is a Main Function\n",yytext);
("{")                              printf("%s is a Single Bracket Open\n",yytext);
("}")                              printf("%s is a Single Bracket Close\n",yytext);
{input}                            printf("%s is an Input Specifier\n",yytext);
{take}                             printf("%s is a scanf Function\n",yytext);
{iff}                              printf("%s is a Conditional Statement\n",yytext);
{elif}                             printf("%s is a Conditional Statement\n",yytext);
{otherwise}                        printf("%s is a Conditional Statement\n",yytext);
{show}                             printf("%s is a Print Function\n",yytext);
{take}                             printf("%s is a scanf Function\n",yytext);
{int_i}                            printf("%s is a integer\n",yytext);
{float_f}                          printf("%s is a float\n",yytext);
{double_d}                         printf("%s is a double\n",yytext);
{char_c}                           printf("%s is a character\n",yytext);
{str}                              printf("%s is a string\n",yytext);
{llint}                            printf("%s is a long long integer\n",yytext);
{Letter}+{Digit}*                  printf("%s is a Variable\n",yytext);
[-]{Digit}+                        printf("%s is a Negative Digit\n",yytext);
{jog}                              printf("%s is a Add Opetator\n",yytext);
{inc}                              printf("%s is a Increment Opetator\n",yytext);
{decr}                             printf("%s is a Decrement Opetator\n",yytext);
{biyog}                            printf("%s is a Substraction Opetator\n",yytext);
{gun}                              printf("%s is a Multiplication Opetator\n",yytext);
{sum_as}                           printf("%s is a Summation And Assignment Opetator\n",yytext);
{sub_as}                           printf("%s is a Substraction And Assignment Opetator\n",yytext);
{modd}                             printf("%s is a Modulation Opetator\n",yytext);
{not_equ}                          printf("%s is a NotEqual Opetator\n",yytext);
{and}                              printf("%s is an  And  Opetator\n",yytext);
{or}                               printf("%s is an Or Opetator\n",yytext);
{not}                              printf("%s is a Not Opetator\n",yytext);
{vag}                              printf("%s is a Division Opetator\n",yytext);
{equ}                              printf("%s is a Equal Opetator\n",yytext); 
{assign}                           printf("%s is a Assignment Opetator\n",yytext);
{GT}                               printf("%s is a Greater Than Opetator\n",yytext);
{GTEQ}                             printf("%s is a Greater Than Equal Opetator\n",yytext);
{LT}                               printf("%s is a Lesser Than  Opetator\n",yytext);
{LTEQ}                             printf("%s is a Lesser Than Equal Opetator\n",yytext);
{int_number}                       printf("%s is a Integer Identifier\n",yytext);
{float_number}                     printf("%s is a Floating Identifier\n",yytext);
{character}                        printf("%s is a Character Identifier\n",yytext);
{String}                           printf("%s is a String Identifier\n",yytext);
{Token}                            printf("%s is end of a statement\n",yytext);
{array}                            printf("%s Is an Array\n",yytext);
\n                                 printf( "newline\n");
{floop}                            printf("%s is a For Loop\n",yytext);
{wloop}                            printf("%s is a While Loop\n",yytext); 

("\""){space}*{Digit}*{Letter}+{space}*{Letter}*("\"")				printf("%s is a Message Print\n\n",yytext);
("/*"){Letter}+{space}+{Letter}+{space}*("*/")                      printf("%s is a comment line\n\n",yytext);
%%
int yywrap()
{
	return 1;
}
int main()
{
    	yyin = freopen( "input.txt", "r",stdin);
	yyout = freopen("output.txt", "w",stdout);
	yylex();
	fclose(yyin);
	fclose(yyout);	
}