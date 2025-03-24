// Vectores
// Reemplace todos los dígitos en la cadena por el caracter. Ej: su clave es: 1540 y X debería devolver su clave es: XXXX

#include <stdio.h>
#include <ctype.h>

void reemplazar_digitos(char *cadena, char caracter) {
    for (int i = 0; cadena[i] != '\0'; i++) {
        if (isdigit(cadena[i])) {
            cadena[i] = caracter;
        }
    }
}

int main() {
    char cadena[] = "su clave es: 1540";
    reemplazar_digitos(cadena, 'X');
    printf("Cadena modificada: %s\n", cadena);
    return 0;
}
