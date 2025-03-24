#include <stdio.h>
#include <math.h>

int main() {
    double pi_real = M_PI;
    double pi_fixed = round(pi_real * 256.0) / 256.0;
    double error_relativo = fabs(pi_real - pi_fixed) / fabs(pi_real);

    printf("Valor de π en punto fijo: %.6f\n", pi_fixed);
    printf("Error relativo: %.6f\n", error_relativo);

    return 0;
}


