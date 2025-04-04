
#include<stdio.h>

/*comienzo del programa*/
int main(int argc, char **argv) {

    /*puntero al stream del archivo*/
    FILE * archivo;      

    /*variable string a guardar en el archivo*/
    char str[20] = "hola";

    /*variable entera a guardar en el archivo*/
    int i=23;

    /*apertura del archivo para escritura*/
    archivo = fopen("archivo.txt", "w");
    if(archivo == NULL) {
	    printf("No se pudo abrir el archivo \n");
	    exit(-1);
    }

    /*escritura de las variables en el archivo*/
    fprintf(archivo, "%s %d", str, i);

    /*se cierra el archivo*/
    fclose(archivo);


    /*apertura del archivo para lectura*/
    archivo = fopen("archivo.txt", "r");
    if(archivo == NULL) {
        printf("No se pudo abrir el archivo \n");
        exit(-1);
    }

    /*lectura y escaneado de la linea del archivo*/
    fscanf(archivo, "%s %d",str, &i);
	
    /*escritura en pantalla de lo que se lee del archivo*/
    printf("%s\n", str);
    printf("%d\n", i);

    /*se cierra el archivo*/
    fclose(archivo);
    
    /*fin del programa*/
    return 0;
}