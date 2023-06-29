%{
    #include<stdio.h>
    int c = 0;
%}

%%

[/][*][^"*/"]*[*][/] {
    c++;
}
[//].*[^\n] {
    c++;
}
[a-zA-Z0-9] {
    fprintf(yyout, "%s", yytext);
}

%%

int main(int argc, char* argv[]) {
    yyin = fopen(argv[1], "r");
    yyout = fopen(argv[2], "w");
    yylex();
    printf("The number of Commented lines are %d\n", c);
    return 0;
}