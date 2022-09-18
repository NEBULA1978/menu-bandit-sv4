#!/bin/bash
# SOLUCION bandit 9  a 10

# La !$ es una referencia al ultimo argumento de comando no comando
# COn seq hacemos secuenciadores
# seq 1 10
# Ejemplo1 igual abajo mejor abajo
# cat /etc/passwd | while read line;do
#     echo "Estamos aqui: $line" 

# done

# Ejemplo 2  mejor que arriba
# while read line;do
#     echo "Estamos aqui: $line" 
# done < /etc/passwd

# Ejemplo 3  con contador
contador=1

while read line;do
    echo "Linea $contador: $line" 
    let contador+=1 #contador = contadodr + 1
# Estamos leyendo de un archivo
done < /etc/passwd

# SOLUCION bandit 9  a 10
# Escrimos lo mismo que arriba pero en la consola sin contador
# strings data.txt | grep "===" | while read line; do echo "Hola: $line"; done 
# Escrimos lo mismo que arriba pero en la consola con contador
contador=1; strings data.txt | grep "===" | while read line; do echo "Linea $contador: $line"; let contador+=1; done | awk 'NR==4' | 'NF{print $NF}'
# SOLUCION bandit 9  a 10