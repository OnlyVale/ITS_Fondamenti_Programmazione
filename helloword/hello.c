#include <stdio.h>
#include <string.h>

int calcolo(int x, int y){
    int z = x + y;

   return z;
}

void saluto(){
    printf("Hello World");
}

char *frase_utente() {
  char frase[64];
  printf("Inserisci una frase: ");
  scanf("%s", frase);
  char *frase_utente;
  frase_utente = (char *) malloc(6 * sizeof (char));
  strcpy(frase_utente, frase);
  return frase_utente;
}

int main()
{
    printf("Hello World");

    int numero1 = 10;
    int numero2 = 20;

     char *frase_utente_2 = frase_utente();

    int risultato = calcolo(numero1, numero2);

    printf("\n%d\n", risultato);
    saluto();

    printf("%s", frase_utente_2);
    return 0;
}