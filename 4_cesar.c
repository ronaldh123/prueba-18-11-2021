#include <stdio.h>
#include <stdlib.h>
#include "libprueba.h"

int main(int argc, char *argv[]) {
  // el primer argumento es la clave para cifrar
  // la cantidad de letras a desplazar (un entero)
  int key = atoi(argv[1]);
  // para cada arg restante tratado como un string cada uno
  // cifrarlos con la clave e imprimir el mensaje entero cifrado
  // ejemplo: ./a.out 2 ab cd => cd ef
  return 0;
}
