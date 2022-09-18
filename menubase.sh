#!/bin/bash
#todoreal.com
while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Ejer1 bandit0: "
    echo "2. Ejer2 bandit1"
    echo "3. Ejer3 bandit2"
    echo "5. Ejer5 bandit3"
    echo "6. Ejer5 bandit4"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)  
        echo "Para conectarme al nivel 0 : ssh bandit0@bandit.labs.overthewire.org -p 2220
"
        echo "Bandido Nivel 0 → Nivel 1
Objetivo de nivel
La contraseña para el siguiente nivel se almacena en un archivo llamado Léame ubicado en el directorio de inicio. Use esta contraseña para iniciar sesión en bandit1 usando SSH. Siempre que encuentre una contraseña para un nivel, use SSH (en el puerto 2220) para iniciar sesión en ese nivel y continuar el juego.

Comandos que puedes necesitar para resolver este nivel
ls , cd , gato , archivo , du , encontrar"
        echo " cat readme y la contraseña:boJ9jbbUNNfktd78OOpsqOltutMc3MY1"
        echo "cat /home/bandit1/- otr forma cat /home/bandit1/*"
        cat "cat $(pwd)/-"
        read foo
        ;;
    2)
        echo "Bandido Nivel 1 → Nivel 2
Objetivo de nivel
La contraseña para el siguiente nivel se almacena en un archivo llamado - ubicado en el directorio de inicio

Comandos que puedes necesitar para resolver este nivel
ls , cd , gato , archivo , du , encontrar"
        echo "cat ./-
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9 "
        echo "============"
        echo "Otra forma por ruta absoluta cat /home/bandit1/-"
        echo "============"
        echo "Otra forma por ruta absoluta cat /home/bandit1/*"
        echo "============"
        echo "Otra forma por output aplicado a nivel de sistema  cat $(pwd)/-"
        echo "============"
        echo "Otra forma por output aplicado a nivel de sistema  cat $(pwd)/*"
        read foo
        ;;
    3)
        echo "Bandido Nivel 2 → Nivel 3
Objetivo de nivel
La contraseña para el siguiente nivel se almacena en un archivo llamado espacios en este nombre de archivo ubicado en el directorio de inicio

Comandos que puedes necesitar para resolver este nivel
ls , cd , gato , archivo , du , encontrar"
        # Escapamos espacios
        echo "cat spaces\ in\ this\ filename "
        echo "cat cp* o con cat *ame o con cat *this"
        echo " cat /home/bandit2/*"
        echo "cat $(pwd)/* o con cat *"
        echo "aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG"
        read foo
        ;;
    5)
        echo "Ejer5 bandit3"
        echo "
Bandit Level 3 → Level 4
Level Goal

The password for the next level is stored in a hidden file in the inhere directory.
Commands you may need to solve this level

ls , cd , cat , file , du , find
"
        echo "bandit3@bandit:~$ ls
inhere
bandit3@bandit:~$ find .
.
./.profile
./.bashrc
./.bash_logout
./inhere
./inhere/.hidden
bandit3@bandit:~$ cd inhere/ | cat ./inhere/.hidden 
2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe
bandit3@bandit:~$ 
"
        echo " find . -type f:Para ver ficheros"
        echo " find . -type f -printf '%f\t%p\t%u\t%g\t%m\n'| column -t:Para ver ficheros"
        echo "find y xargs,me dice en que fichero seencuentra la palabra leaving"
        echo "find -type f | xargs grep 'leaving'"
        read foo
        ;;
    6)
        echo "Ejer5 bandit4"
        echo ""

        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
