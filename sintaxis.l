%{
#include <stdio.h>
%}

%%
"let"|"const"|"string"|"int"|"float"|"double"|"bool"|"char"|"true"|"false"|"do"|"while"|"if"|"else"|"file"|"for"|"func" {
    printf("Es una palabra reservada: %s.\n", yytext);
}

"//"[^\n]* {
    printf("Comentario de una línea: %s\n", yytext);
}

"/*"(.|\n)*"*/" {
    printf("Comentario de varias líneas: %s\n", yytext);
}

"+"|"-"|"*"|"/"|"^"|"%"|":"|";"|"{"|"}"|"&&"|"||"|"<="|">="|"="|"=="|"!="|"<"|">" {
    printf("Es un operador: %s\n", yytext);
}

[+-]?[0-9]+ {
    printf("Es un número entero: %s\n", yytext);
}

[+-]?[0-9]+"."[0-9]+ {
    printf("Es un número decimal: %s\n", yytext);
}

[+-]?[0-9]+"."[0-9]+"e"[+-]?[0-9]+|[+-]?[0-9]+"e"[+-]?[0-9]+ {
    printf("Es un número en notación científica: %s\n", yytext);
}

\"[^\"]*\" {
    printf("Es una cadena de texto: %s\n", yytext);
}

\'[^\']\' {
    printf("Es un caracter: %s\n", yytext);
}

[^\n\t ]+ {
    printf("Es una cadena no reconocida: %s\n", yytext);
}

%%

int main(int argc, char **argv){
    /* yylex();
    return 0; */

	++argv, --argc;
	if(argc > 0)
			yyin = fopen(argv[0], "r");
	else
			yyin = stdin;
			
	yylex();


	return 0;
}

