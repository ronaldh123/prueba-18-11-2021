#!/bin/bash

# colores
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
# contador
tests_passed=0
# funciones
test_output() {
  output=$($1)
  expected=$2
  if [[ "$output" == "$expected" ]]
  then
    echo -e "[  ${GREEN}OK${NC}  ]: $1 => $2 ${GREEN}✔️${NC}"
    tests_passed=$((tests_passed + 1))
  else
    echo -e "[ ${RED}Fail${NC} ]: Esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
  fi
}

# ejercicio 1
echo "------- Testeando 1_ez -------"
# test 1.1
test_output "./1_ez Monduela" "Hola, Monduela"
# test 1.2
test_output "./1_ez Muruchi" "Hola, Muruchi"
# test 1.3
test_output "./1_ez Marconi" "Hola, Marconi"
# test 1.4
test_output "./1_ez Aquino" "Hola, Aquino"
# test 1.5
test_output "./1_ez Clemente" "Hola, Clemente"
# ejercicio 2
echo "------- Testeando 2_potencias -------"
# test 2.1
test_output "./2_potencias 0 1 2 3" "1 2 4 8"
# test 2.2
test_output "./2_potencias 4 5 6 7" "16 32 64 128"
# test 2.3
test_output "./2_potencias 10 11 12 13" "1024 2048 4096 8192"
# test 2.4
test_output "./2_potencias 0 3 4 7" "1 8 16 128"
# test 2.5
test_output "./2_potencias 10 11 8 2" "1024 2048 256 4"
# ejercicio 3
echo "------- Testeando 3_vectores -------"
# test 3.1
test_output "./3_vectores 0 1 2 3" "2 4 "
# test 3.2
test_output "./3_vectores 1 2 3 4 1 2 3 4" "2 4 6 8 "
# test 3.3
test_output "./3_vectores 0 1 2 3 9 2" "3 10 4 "
# test 3.4
test_output "./3_vectores 1 1 1 1" "2 2 "
# test 3.5
test_output "./3_vectores 4 5 6 7 7 6 5 4" "11 11 11 11 "
# ejercicio 4
echo "------- Testeando 4_cesar -------"
# test 4.1
test_output "./4_cesar 4 al ataque" "ep exeuyi "
# test 4.2
test_output "./4_cesar 1 zzz" "aaa "
# test 4.3
test_output "./4_cesar 9 hello world" "qnuux fxaum "
# test 4.4
test_output "./4_cesar 7 enigma" "lupnth "
# test 4.5
test_output "./4_cesar 13 listo el pollo" "yvfgb ry cbyyb "
# resultado final
echo "-------  Resultado  -------"
if [[ $tests_passed -eq 20 ]]
then
  echo -e "Todos los tests pasaron ${GREEN}✔️${NC}"
else
  echo "Resultado: $tests_passed/5 tests OK."
fi
exit 0
