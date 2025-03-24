#include <stdio.h>
#include <math.h>

void decimalABinario(double num) {
    int parteEntera = (int)num;
    double parteFracc = num - parteEntera;
    
    char binarioEntero[20];
    itoa(parteEntera, binarioEntero, 2); // Convierte parte entera a binario
    
    printf("Parte entera en binario: %s.", binarioEntero);
    
    printf(" Parte fraccionaria en binario: ");
    for (int i = 0; i < 10 && parteFracc > 0; i++) {
        parteFracc *= 2;
        if (parteFracc >= 1) {
            printf("1");
            parteFracc -= 1;
        } else {
            printf("0");
        }
    }
    printf("\n");
}

int main() {
    double num = 123.51;
    
    printf("Número en hexadecimal: %X\n", (int)num); // Convierte parte entera a hexadecimal
    decimalABinario(num);
    
    return 0;
}
