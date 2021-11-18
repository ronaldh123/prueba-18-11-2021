1_ez: 1_ez.c libprueba.c
	@gcc -o 1_ez 1_ez.c libprueba.c

2_potencias: 2_potencias.c libprueba.c
	@gcc -o 2_potencias 2_potencias.c libprueba.c

3_vectores: 3_vectores.c libprueba.c
	@gcc -o 3_vectores 3_vectores.c libprueba.c

4_cesar: 4_cesar.c libprueba.c
	@gcc -o 4_cesar 4_cesar.c libprueba.c

clean:
	@rm 1_ez 2_potencias 3_vectores 4_cesar

test: 1_ez 2_potencias 3_vectores 4_cesar
	@bash tests.sh
