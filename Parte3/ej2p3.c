// Vectores
//b) Escribir una función que reciba dos vectores y devuelva si son o no ortogonales.

#include <stdio.h>

int son_ortogonales(int v1[], int v2[], int n) {
    return producto_escalar(v1, v2, n) == 0;
}

int main() {
    int v1[] = {1, 2};
    int v2[] = {-2, 1};
    int n = 2;

    if (son_ortogonales(v1, v2, n)) {
        printf("Los vectores son ortogonales.\n");
    } else {
        printf("Los vectores NO son ortogonales.\n");
    }
    return 0;
}
