#include <stdio.h>
#include <math.h>

/* Primer programa */
int main_primer_programa() {
    printf("Hola mundo!\n"); // Imprime saludo
    return 0;                // Fin
}

/* Segundo programa */
int main_segundo_programa() {
    double  x, y; // Variables reales

    x = 1.0;      // x = 1
    x = x / 3.0;  // x = x / 3
    /* x = x + x; */ // Comentado
    y = sqrt(x);  // y = raíz cuadrada de x

    printf("Raiz cuadrada de %g = %g\n", x, y); // Muestra x y su raíz
    return 0;                                 // Fin
}

/* Tercer programa*/

int main() {
    double  x, x2, y;     // Variables reales
    double  lnsqrt(double); // Declara función lnsqrt

    x = 1.0;        // x = 1
    x = x / 3.0;    // x = x / 3

    y = lnsqrt(x);  // y = lnsqrt(x)

    printf("Raiz cuadrada de %g = %g\n", x, y); // Muestra x e lnsqrt(x)

    x2 = 2 * x;     // x2 = 2 * x
    y = lnsqrt(x2); // y = lnsqrt(x2)

    printf("Raiz cuadrada de %g = %g\n", x2, y); // Muestra x2 e lnsqrt(x2)

    return 0;                                  // Fin
}

double lnsqrt(double x) {
    double y; // Variable real local
    y = log(sqrt(x)); // y = log(raíz cuadrada de x)
    return (y);       // Devuelve y
}