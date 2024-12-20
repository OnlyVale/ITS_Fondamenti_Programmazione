#include <stdio.h>

void saluto_benvenuto(){
    char nome[64];
    char cognome[64];

    printf("Ciao, inserisci il tuo nome: ");
    scanf("%s", nome);

    printf("...e ora il tuo cognome: ");
    scanf("%s", cognome);

    printf("-------------------------------------------------------\n");

    printf("Ciao e benvenuto %s %s, grazie di aver utilizzato il mio programma!\nTi auguro un Buon Natale e un Buon Capodanno!!!\n", nome, cognome);
}

void stampa_albero(){
    printf("   *   \n  ***  \n ***** \n*******\n  ***  ");
}

int main(){

    saluto_benvenuto();

    stampa_albero();

    return 0;
}