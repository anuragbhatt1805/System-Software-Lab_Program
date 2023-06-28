#include<stdio.h>
#include<stdlib.h>
#include<string.h>

char prod[3][10] = {
    "A -> aBa",
    "B -> bB",
    "B -> @"
};
char input[10], stack[25];
int k, l, top = -1, j = 0;

void push(char item){
    stack[++top] = item;
}

void pop(){
    top--;
}

void display(){
    int j;
    for(j = top; j >= 0; j--)
        printf("%c", stack[j]);
}

void stackpush(char p){
    if (p == 'A'){
        pop();
        for(j = strlen(prod[0])-1; j >=3; j--)
            push(prod[0][j]);
    } else {
        pop();
        for(j = strlen(prod[1])-1; j >=3; j--)
            push(prod[1][j]);
    }
}

void main(){
    char c; int i;
    printf("first(A) = {a} \t");
    printf("follow(A) = {$}\n");
    printf("first(B) = {b,@} \t");
    printf("follow(B) = {a}\n\n");
    printf("\t a \t b \t $\n");
    printf("A\t %s \n", prod[0]);
    printf("B\t%s\t%s\n", prod[2], prod[1]);
    printf("Enter the input string followed by $: ");
    scanf("%s", input);
    for ( i = 0; input[i] != '\0'; i++)
        if ((input[i] != 'a' && input[i] != 'b') && (input[i] != '$')){
            printf("Invalid input\n");
            exit(0);
        }
    if (input[i-1] != '$') {
        printf("\nInput string entered without end marker $");
        exit(0);
    }
    push('$');
    push('A');
    i=0;
    printf("\nStack\tInput\tAction\n");
    printf("-----\t-----\t------\n");
    while(i != strlen(input) && stack[top]!= '$'){
        printf("\n");
        for(l = top; l >= 0; l--)
            printf("%c", stack[l]);
        printf("\t");
        for(l = i; l < strlen(input); l++)
            printf("%c", input[l]);
        printf("\t");
        if(stack[top] == 'A'){
            printf("A -> aBa");
            stackpush('A');
        } else if (stack[top] == 'B'){
            if (input[i] == 'b'){
                printf("B -> @");
                printf("\t Matched @");
                pop();
            } else {
                printf("B -> bB");
                stackpush('B');
            }
        } else {
            if (stack[top] == input[i]){
                printf("pop %c", input[i]);
                printf("\t Matched %c", input[i]);
                pop();
                i++;
            } else
                break;
        }
    }
    if (stack[top] == '$' && input[i] == '$')
        printf("\nVALID STRING\nString is accepted\n");
    else
        printf("\nINVALID STRING\nString is not accepted\n");


}