// Vectores
// Inserte el caracter cada 3 dígitos en la cadena. Ej. 2552552550 y . debería devolver 255.255.255.0


#include <stdio.h>
#include <string.h>

void insertar_cada_tres(char *cadena, char caracter) {
    char resultado[50] = "";
    int len = strlen(cadena);
    int count = 0;

    for (int i = 0; i < len; i++) {
        if (count == 3) {
            strncat(resultado, &caracter, 1);
            count = 0;
        }
        strncat(resultado, &cadena[i], 1);
        count++;
    }
    
    strcpy(cadena, resultado);
}

int main() {
    char cadena[] = "2552552550";
    insertar_cada_tres(cadena, '.');
    printf("Cadena modificada: %s\n", cadena);
    return 0;
}
