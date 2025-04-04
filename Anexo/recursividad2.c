/* Recursividad */
#include <stdio.h>
#include <math.h>

/* Variables externas */
int  F1count, F2count; // Contadores de llamadas a F1 y F2

int main() {
    int  a, b; // Variables locales
    int  F1(int); // Declaración de F1

    F1count = 0; // Inicializa contador de F1
    F2count = 0; // Inicializa contador de F2

    a = 1; // Asigna valor a 'a'
    b = F1(a); // Llama a F1 y guarda el resultado

    return 0; // Fin exitoso
}

int F1(int a) {
    int F2(int); // Declaración de F2

    F1count++; // Incrementa contador de F1
    printf("%da llamada a F1\n", F1count); // Muestra número de llamada a F1

    return(F2(a)); // Llama a F2 y devuelve su resultado
}

int F2(int a) {
    int F1(int); // Declaración de F1

    F2count++; // Incrementa contador de F2
    printf("%da llamada a F2\n", F2count); // Muestra número de llamada a F2

    return(F1(a)); // Llama a F1 y devuelve su resultado
}