%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%token num
%left '+' '-'
%left '*' '/'

%%
input: exp {
    printf("%d\n", $$);
    exit(0);
}
exp: exp '+' exp {
    $$ = $1 + $3;
}
| exp '-' exp {
    $$ = $1 - $3;
}
| exp '*' exp {
    $$ = $1 * $3;
}
| exp '/' exp {
    if ($3 == 0) {
        printf("Divide by Zero.\n Invalid expression.");
        exit(0);
    }
    else {
        $$ = $1 / $3;
    }
}
| '(' exp ')' {
    $$ = $2;
}
| num {
    $$ = $1;
}
%%

int yyerror(){
    printf("Invalid Expression.\n");
    exit(0);
}

int main(){
    printf("Enter and Expression: ");
    yyparse();
    return 0;
}
