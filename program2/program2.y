%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%token A B

%%

input: s'\n' {
    printf("Successful Grammer");
    exit(0);
}

s: A s1 B|B
s1: ; | A s1

%%

int yyerror(){
    printf("Error\n");
    exit(0);
}

main(){
    printf("Enter a String");
    yyparse();
}