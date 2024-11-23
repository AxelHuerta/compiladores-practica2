%{
#include <stdio.h>
%}

%%

[aeiouAEIOU][a-z]* {
    printf("La palabra %s comienza con una vocal \n", yytext);
}

[A-z]* {
    printf("La palabra %s comienza con una consonante \n", yytext);
}

[ \t\n] {
/* Ignora los espacios en blanco, tabuladores y saltos de linea */
}

. {
    printf("Caracter invalido %s \n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}