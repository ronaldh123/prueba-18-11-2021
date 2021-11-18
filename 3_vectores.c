#include <stdlib.h>
#include "libprueba.h"

int main(int argc, char *argv[]) {
  // creamos dos arrays u y v (vectores)
  int dimension = argc / 2;
  int u[dimension];
  int v[dimension];
  // les damos valores
  for (int i = 0; i < dimension; i++) {
    u[i] = atoi(argv[i+1]);
  }
  for (int i = 0; i < dimension; i++) {
    v[i] = atoi(argv[i + argc / 2 + 1]);
  }
  // otro vector para el resultado de la suma
  int r[dimension]; // resultado de u + v
  // implementar estas dos funciones en libprueba.c
  suma_vectorial(u, v, r, dimension);
  print_array(r, dimension);
  return 0;
}
