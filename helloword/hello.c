#include <stdio.h>


int calcolo(int x, int y){
    int z = x + y;

   return z;
}

void saluto(){
    printf("Hello World");
}

int main()
{
    printf("Hello World");

    int numero1 = 10;
    int numero2 = 20;

    int risultato = calcolo(numero1, numero2);

    printf("\n%d\n", risultato);
    saluto();
    return 0;
}