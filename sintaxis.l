%{
#include <stdio.h>
%}

%%
["let" | "const"] {
    printf("Se define una variable: %s.\n", yytext);
    return 0;
}

"string" {
    printf("Se define el tipo string: %s.\n", yytext);
    return 0;
}

"int" {
    printf("Se define el tipo entero: %s.\n", yytext);
    return 0;
}

"float" {
    printf("Se define el tipo flotante: %s.\n", yytext);
    return 0;
}

"double" {
    printf("Se define el tipo doble: %s.\n", yytext);
    return 0;
}

"bool" {
    printf("Se define el tipo booleano: %s.\n", yytext);
    return 0;
}

"char" {
    printf("Se define el tipo caracter: %s.\n", yytext);
    return 0;
}

"&&" {
    printf("Se define el operador 'y': %s.\n", yytext);
    return 0;
}

"||" {
    printf("Se define el operador 'o': %s.\n", yytext);
    return 0;
}


"true" {
    printf("Se define el valor verdadero: %s.\n", yytext);
    return 0;
}

"false" {
    printf("Se define el valor falso: %s.\n", yytext);
    return 0;
}

"{" {
    printf("Se define el inicio del bloque: %s.\n", yytext);
    return 0;
}

"}" {
    printf("Se define el fin del bloque: %s.\n", yytext);
    return 0;
}

"do" {
    printf("Se define el 'haz algo' complemento del 'while': %s.\n", yytext);
    return 0;
}

"while" {
    printf("Se define el ciclo 'while' (mientras): %s.\n", yytext);
    return 0;
}

"for" {
    printf("Se define el ciclo 'for' (para): %s.\n", yytext);
    return 0;
}

"if" {
    printf("Se define el bloque condicional: %s.\n", yytext);
    return 0;
}

"else" {
    printf("Se define el  bloque condicional complemento: %s.\n", yytext);
    return 0;
}




.* {
    printf("Caracter no reconocido: %s \n", yytext);
    // return 0;
}

%%

int main() {
    yylex();
    return 0;
}

