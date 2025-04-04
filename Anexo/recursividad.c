/* Recursividad */
#include <stdio.h>
#include <math.h> 

/* Variables externas */
int  ExtV1; // Variable global

int main() {
    int n, nfact; // Número y su factorial
    int fact(int); // Declaración de la función factorial

    printf("Entre n: "); // Pide entrada
    scanf("%d", &n);    // Lee el número

    nfact = fact(n); // Calcula el factorial

    printf("n! = %d\n", nfact); // Muestra el resultado

    return 0; // Fin exitoso
}

int fact(int n) {
    /* Calcula factorial de n */
    printf("Llamada fact(%d)\n", n); // Muestra llamada recursiva

    if (n > 1) {
        return(n * fact(n - 1)); // Caso recursivo
    } else if (n >= 0) {
        return(1.0); // Caso base (0! = 1, 1! = 1)
    } else {
        printf("ERROR: n! con n < 0\n"); // Error para negativos
        return(0);
    }
}