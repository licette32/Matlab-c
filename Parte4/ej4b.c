#include <stdio.h>
#include <math.h>
#include <string.h>

double binarioADecimal(const char* bin_entero, const char* bin_frac) {
    int decimal_entero = strtol(bin_entero, NULL, 2);
    double decimal_frac = 0.0;
    
    for (int i = 0; i < strlen(bin_frac); i++) {
        if (bin_frac[i] == '1') {
            decimal_frac += pow(2, -(i + 1));
        }
    }
    
    return decimal_entero + decimal_frac;
}

int main() {
    const char* bin_entero = "101111010";
    const char* bin_frac = "011";

    double decimal = binarioADecimal(bin_entero, bin_frac);
    printf("Número en decimal: %.6f\n", decimal);
    printf("Número en hexadecimal: %X\n", (int)decimal);

    return 0;
}

