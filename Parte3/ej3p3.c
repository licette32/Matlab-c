//Vectores

// Escribir una función que reciba dos vectores y devuelva si son paralelos o no.

#include <stdio.h>

int son_paralelos(int v1[], int v2[], int n) {
    double razon = (double)v1[0] / v2[0];

    for (int i = 1; i < n; i++) {
        if ((double)v1[i] / v2[i] != razon) {
            return 0;
        }
    }
    return 1;
}

int main() {
    int v1[] = {2, 4, 6};
    int v2[] = {1, 2, 3};
    int n = 3;

    if (son_paralelos(v1, v2, n)) {
        printf("Los vectores son paralelos.\n");
    } else {
        printf("Los vectores NO son paralelos.\n");
    }
    return 0;
}
s