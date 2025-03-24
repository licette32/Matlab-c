//Vectores
// a) Escribir una función que reciba dos vectores y devuelva su producto escalar.

#include <stdio.h>

double producto_escalar(int v1[], int v2[], int n) {
    double producto = 0;
    for (int i = 0; i < n; i++) {
        producto += v1[i] * v2[i];
    }
    return producto;
}

int main() {
    int v1[] = {1, 2, 3};
    int v2[] = {4, 5, 6};
    int n = 3;

    printf("Producto escalar: %.2f\n", producto_escalar(v1, v2, n));
    return 0;
}
