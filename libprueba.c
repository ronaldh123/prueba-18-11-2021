// implementar las funciones de libprueba.h aca
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

void saludar(char *name) {
printf("Hola, %s\n",name );
}

int potencia_de_dos (int n) {
int a =1;
   for (int i = 1; i <= n; i++) {
    a = a*2;
  }
  return a;
}

void suma_vectorial(int u[], int v[], int r[], int dimension) {
for (int i = 0; i < dimension; i++) {
  r[i] = u[i] + v[i];
}

}
int print_array(int r[], int dimension){
  for (int i = 0; i < dimension; i++) {
    printf("%d ",r[i] );
  }
  printf("\n");
}
