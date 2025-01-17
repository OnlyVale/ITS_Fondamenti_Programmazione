#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>  // Per malloc()

#define P_GRECO 3.14

int calcolo(int x, int y){
    int z = x + y;
    return z;
}

void saluto(){
    printf("Hello World\n");
}

/*
char *frase_utente() {
    char frase[64];
    printf("Inserisci una frase: ");
    scanf("%63s", frase);  // Limita l'input a 63 caratteri per evitare overflow
    char *frase_utente = (char *) malloc(strlen(frase) + 1);  // Alloca memoria in base alla lunghezza della stringa
    strcpy(frase_utente, frase);
    return frase_utente;
}
*/

float CalcoloAreaCerchio(float raggio){
    float calcolo_area = raggio * raggio * P_GRECO;
    return calcolo_area;
}

int main()
{
    float raggio, area;
    printf("Inserisci il raggio del cerchio: ");
    scanf("%f", &raggio);
    area = CalcoloAreaCerchio(raggio);
    printf("L'area del cerchio è: %.2f\n", area);

    // Esegui altre operazioni se desiderato
    saluto();

    // Facoltativo: Chiedi una frase all'utente
    //char *frase_utente_2 = frase_utente();
    //printf("La frase inserita è: %s\n", frase_utente_2);
    //free(frase_utente_2);  // Non dimenticare di liberare la memoria

    return 0;
}