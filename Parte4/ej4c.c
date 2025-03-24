#include <stdio.h>

int main() {
    printf("Valor sin signo (0 a 15): ");
    for (int i = 0; i < 16; i++) printf("%d ", i);
    printf("\n");

    printf("Enteros con signo (magnitud y signo, -7 a 7): ");
    for (int i = -7; i <= 7; i++) printf("%d ", i);
    printf("\n");

    printf("Enteros complemento a 2 (-8 a 7): ");
    for (int i = -8; i <= 7; i++) printf("%d ", i);
    printf("\n");

    printf("Enteros con sesgo 7 (-7 a 8): ");
    for (int i = 0; i < 16; i++) printf("%d ", i - 7);
    printf("\n");

    printf("Reales en punto fijo (mantisa de 2 bits): ");
    for (int i = 0; i < 16; i++) printf("%.2f ", i / 4.0);
    printf("\n");

    return 0;
}
