%{
    #include<stdio.h>
    int v = 0, op = 0, id = 0, flag = 0;
%}

%%
[a-zA-Z]+[0-9a-zA-Z]* {
    id++;
    printf("\n identifier: ");
    ECHO;
}

[\+\*\=] {
    op++;
    printf("\n operator: ");
    ECHO;
}

"(" {
    v++;
}

")" {
    v--;
}

";" {
    flag = 1;
}

.|\n {
    ;
}
%%

int main() {
    printf("Enter the Expression: \n");
    yylex();
    if((op+1) == id && v == 0 && flag == 0) {
        printf("\nExpression is valid");
        printf("\nThe no. of identifiers are: %d", id);
        printf("\nThe no. of operators are: %d", op);
    } else {
        printf("\nExpression is invalid");
    }
}