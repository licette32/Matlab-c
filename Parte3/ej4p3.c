// Vectores

// Escribir una función que reciba un vector y devuelva su norma.

#include <stdio.h>
#include <math.h>

double norma_vector(int v[], int n) {
    double suma = 0;
    for (int i = 0; i < n; i++) {
        suma += v[i] * v[i];
    }
    return sqrt(suma);
}

int main() {
    int v[] = {3, 4};
    int n = 2;

    printf("Norma del vector: %.2f\n", norma_vector(v, n));
    return 0;
}
