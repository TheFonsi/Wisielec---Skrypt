#!/bin/bash

############################################################
# Zapisujemy do $different_characters ilosc roznych znakow #
############################################################
function setDifferentCharacters()
{
    declare -A diffChar #Uzywamy mapy, poniewaz znak bedzie kluczem a chcemy policzyc unikalne znaki
    word_length=$((${#random_word} - 1))
    x=0
    while [ $x -le $word_length ]
    do
        x=$(( $x + 1 ))
        char=$(echo $random_word | cut -c$x)
        diffChar[$char]=$x
    done
    letter=$x
    different_characters=${#diffChar[@]}
}

######################################################################
# Ustawiamy haslo w postaci _____ odpowiednio do ilosci znakow hasla #
######################################################################
function setHiddenWord()
{
    for (( i=0; i<=$word_length; i++ ))
    do
        hidden_word+="_"
    done
}

###################################################
# Wysyłamy pierwszy text po uruchomieniu programu #
###################################################
function sendStartMessage()
{
    printGraphWithTag
    printf "#####################################\n"
    printf "# Hasło: $hidden_word\n#\n"
    printf "# Twoje hasło składa się z $letter znaków,\n# spróbuj je odgadnąć!\n# Możesz skuć tylko 10 razy.\n#\n# Powodzenia!\n"
    printf "#####################################\n"
}

######################################################################
# Funkcja rysująca wisielca odpowiednio do wartości zmiennej $chance #
######################################################################
function printGraphWithTag()
{
    clear
    printTAG

    case $chance in
         0)
            printf "\n ___________.._______\n"
	    printf "| .__________))______|\n"
            printf "| | / /      ||\n"
            printf "| |/ /       ||\r\n"
	    printf "| | /        ||.-...\\n"
	    printf "| |/         |/  _  \\\\\n"
	    printf "| |          ||   /,|\r\\n"
	    printf "| |          (\\\\ _.'\n"
	    printf "| |         .- -- .\r\n"
	    printf "| |        /Y . . Y\\\\\n"
	    printf "| |       // |   | \\\\\\\\\n"
	    printf "| |      //  | . |  \\\\\\\\\n"
	    printf "| |      )   | _ |   ( \n"
	    printf "| |          || ||\r\n"
	    printf "| |          || ||\r\n"
	    printf "| |          || ||\r\n"
	    printf "| |          || ||\r\n"
	    printf "| |\        / | | \\\\\n"
	    printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\r\n"
	    printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\r\n"
	    printf "| |        \\ \\        | |\r\n"
	    printf ": :         \\ \\       : :  \r\n"
	    printf ". .                   . .\n"
            ;;
         1)
            printf "\n ___________.._______\r\n"
            printf "| .__________))______|\r\n"
            printf "| | / /      ||\r\n"
            printf "| |/ /       ||\r\n"
            printf "| | /        ||.-...\\n"
            printf "| |/         |/  _  \\\\\n"
            printf "| |          ||   /,|\r\\n"
            printf "| |          (\\\\ _.'\n"
            printf "| |         .- -- .\r\n"
            printf "| |        /Y . . Y\\\\\n"
            printf "| |       // |   | \\\\\\\\\n"
            printf "| |      //  | . |  \\\\\\\\\n"
            printf "| |      )   | _ |   ( \n"
            printf "| |             ||\r\n"
            printf "| |             ||\r\n"
            printf "| |             ||\r\n"
            printf "| |             ||\r\n"
            printf "| |\            | \\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\r\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\r\n"
            printf "| |        \\ \\        | |\r\n"
            printf ": :         \\ \\       : :  \r\n"
            printf ". .                   . .\n"
            ;;
         2)
            printf "\n ___________.._______\r\n"
            printf "| .__________))______|\r\n"
            printf "| | / /      ||\r\n"
            printf "| |/ /       ||\r\n"
            printf "| | /        ||.-...\\n"
            printf "| |/         |/  _  \\\\\n"
            printf "| |          ||   /,|\r\\n"
            printf "| |          (\\\\ _.'\n"
            printf "| |         .- -- .\r\n"
            printf "| |        /Y . . Y\\\\\n"
            printf "| |       // |   | \\\\\\\\\n"
            printf "| |      //  | . |  \\\\\\\\\n"
            printf "| |      )   | _ |   ( \n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\r\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\r\n"
            printf "| |        \\ \\        | |\r\n"
            printf ": :         \\ \\       : :  \r\n"
            printf ". .                   . .\n"
            ;; 
         3)
            printf "\n ___________.._______\r\n"
            printf "| .__________))______|\r\n"
            printf "| | / /      ||\r\n"
            printf "| |/ /       ||\r\n"
            printf "| | /        ||.-...\\n"
            printf "| |/         |/  _  \\\\\n"
            printf "| |          ||   /,|\r\\n"
            printf "| |          (\\\\ _.'\n"
            printf "| |          - -- .\r\n"
            printf "| |          |. . Y\\\\\n"
            printf "| |          |   | \\\\\\\\\n"
            printf "| |          | . |  \\\\\\\\\n"
            printf "| |          | _ |   ( \n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\r\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\r\n"
            printf "| |        \\ \\        | |\n"
            printf ": :         \\ \\       : :\n"
            printf ". .                   . .\n"
            ;;
         4)
            printf "\n ___________.._______\n"
            printf "| .__________))______|\n"
            printf "| | / /      ||\n"
            printf "| |/ /       ||\n"
            printf "| | /        ||.-...\\n"
            printf "| |/         |/  _  \\\\\n"
            printf "| |          ||   /,|\\n"
            printf "| |          (\\\\ _.'\n"
            printf "| |          - -- \n"
            printf "| |          |. .| \n"
            printf "| |          |   |\n"
            printf "| |          | . |\n"
            printf "| |          | _ |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\n"
            printf "| |        \\ \\        | |\n"
            printf ": :         \\ \\       : :\n"
            printf ". .                   . .\n"
            ;;
         5)
            printf "\n ___________.._______\n"
            printf "| .__________))______|\n"
            printf "| | / /      ||\n"
            printf "| |/ /       ||\n"
            printf "| | /        ||.-...\\n"
            printf "| |/         |/  _  \\\\\n"
            printf "| |          ||   /,|\\n"
            printf "| |          (\\\\ _.'\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\n"
            printf "| |        \\ \\        | |\n"
            printf ": :         \\ \\       : :\n"
            printf ". .                   . .\n"
            ;;
         6)
            printf "\n ___________.._______\n"
            printf "| .__________))______|\n"
            printf "| | / /      ||\n"
            printf "| |/ /       ||\n"
            printf "| | /        ||\n"
            printf "| |/         ||\n"
            printf "| |          ||\n"
            printf "| |          ()\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\n"
            printf "| |        \\ \\        | |\n"
            printf ": :         \\ \\       : :\n"
            printf ". .                   . .\n"
            ;;
         7)
            printf "\n ___________.._______\n"
            printf "| .__________))______|\n"
            printf "| | / /\n"
            printf "| |/ /\n"
            printf "| | /\n"
            printf "| |/\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\n"
            printf "| |        \\ \\        | |\n"
            printf ": :         \\ \\       : :\n"
            printf ". .                   . .\n"
            ;;
         8)
            printf "\n ___________.._______\n"
            printf "| .__________))______|\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\n"
            printf "| |        \\ \\        | |\n"
            printf ": :         \\ \\       : :\n"
            printf ". .                   . .\n"
            ;;
         9)
            printf "\n\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\n"
            printf "| |\\\\\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\n"
            printf "| |        \\ \\        | |\n"
            printf ": :         \\ \\       : :\n"
            printf ". .                   . .\n"
            ;;
         10)
            printf "\n\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\n"
            printf "\"\"\"\"\"\"\"\"\"\"|_ -   -  |\"\"\"|\n"
            printf "|\"|\"\"\"\"\"\"\"\\ \\        \"|\"|\n"
            printf "| |        \\ \\        | |\n"
            printf ": :         \\ \\       : :\n"
            printf ". .                   . .\n"
    esac
}

#############################
# Funkcja wyswietlajaca TAG #
#############################
function printTAG()
{
    printf "\n __      __                          ___                      ____                \n"
    printf "/\\ \\  __/\\ \\  __          __        /\\_ \\                    /\\  _ \\              \n"
    printf "\\ \\ \\/\\ \\ \\ \\/\\_\\    ____/\\_\\     __\\//\\ \\      __    ___    \\ \\ \\L\\ \\  __  __    \n"
    printf " \\ \\ \\ \\ \\ \\ \\/\\ \\  / ,__\\/\\ \\  / __ \\\\ \\  \\   / __ \\ / ___\\   \\ \\  _ < /\\ \\/\\ \\   \n"
    printf "  \\ \\ \\_/ \\_\\ \\ \\ \\/\\__,  \\ \\ \\/\\  __/ \\_\\ \\_/\\  __//\\ \\__/    \\ \\ \\L\\ \\ \\ \\_\\ \\  \\n"
    printf "   \\  \\___x___/\\ \\_\\/\\____/\\ \\_\\ \\____\\/\\____\\ \\____\\ \\____\\    \\ \\____/\\/ ____ \\ \n"
    printf "     \\/__//__/  \\/_/\\/___/  \\/_/\\/____/\\/____/\\/____/\\/____/     \\/___/   /___/> \\\\\n"
    printf "                                                                            /\\___/\n"
    printf "                                                                            \\/__/ \n"
    printf " ____                                  __      ____         \n"
    printf "/\\  _ \\                         __    /\\ \\    /\\  _ \\       \n"
    printf "\\ \\ \\/\\ \\     __     __  __  __/\\_\\   \\_\\ \\   \\ \\ \\ \\_\\     \n"
    printf " \\ \\ \\ \\ \\  / __ \\  /\\ \\/\\ \\/\\ \\/\\ \\  / _  \\   \\ \\ \\ __      \n"
    printf "  \\ \\ \\_\\ \\/\\ \\ \\.\\_\\ \\ \\_/ \\_/ \\ \\ \\/\\ \\ \\ \\   \\ \\ \\/,\\\\\n"
    printf "   \\ \\____/\\ \\__/.\\_ \\\\ \\___x___/ \\ \\_\\ \\___,_\\   \\ \\____/\\_\\n"
    printf "    \\/___/  \\/__/\\/_/ \\/__//__/   \\/_/\\/__,_ /    \\/___/\\/_/\\n"
}

#############################################################################
# Funkcja dodajaca znak w odpowiednie miejsce w naszym ukrytym hasle ___a__ #
#############################################################################
function addCharToHiddenWord()
{
    echo "${random_word}"
    array=()
    for ((i = 0; i < ${#hidden_word}; i++)); do
        array+=("${hidden_word:i:1}")
    done

    for ((i = 0; i < ${#random_word}; i++)); do
        if [[ "${random_word:i:1}" == $char ]]; then
            array[i]=$char
        fi
    done
    IFS=;
    hidden_word="${array[*]}"
}

####################################################
# Funkcja uruchamiana po wpisaniu poprawnej litery #
####################################################
function correctly()
{
    used_char+=($char)
    addCharToHiddenWord
    printGraphWithTag
    printf "#####################################\n"
    printf "# Hasło: $hidden_word\n#\n"
    printf "# Trafione!\n# Pozostało tobie: $chance szans!\n#"
    if [ $different_characters == ${#used_char[@]} ]; then
        printf "\n# Wygrana! :)\n"
    fi
    printf "#####################################\n"
}

##################################################
# Funkcja uruchamiana po wpisaniu blednego znaku #
# Za kazdym razem odejmuje liczbe szans          #
##################################################
function incorrectly()
{
    chance=$(( $chance-1 ))
    printGraphWithTag
    printf "#####################################\n"
    printf "# Hasło: $hidden_word\n#\n#"
    if [ $chance == 0 ]; then
        printf " Nie odgadnięto hasła: $random_word\n#\n#"
        printf " Przegrana :(\n"
    else
         printf " Błąd!\n# Pozostało tobie: $chance szans!\n#"
    fi
    printf "#####################################\n"
}


##################
# MAIN VARIABLES #
##################
readonly FILE_LOC=/usr/share/dict/polish #Przypisujemy sciezke do slownika
random_word=$(shuf -n 1 $FILE_LOC) #Pobieramy 1 losowa linie ze slownika
hidden_word="" #Przypisujemy do zmiennej ukryte haslo w postaci _____
used_char=() #Przechowywujemy uzyte znaki podczas proby odgadniecia hasla
chance=10 #Liczba pozostalych szans
different_characters=0 #Liczba liter do odgadniecia
letter=0 #Ilosc liter w hasle

####################################
#Głowna funkcja  rozpoczynająca grę#
####################################
function start()
{
    setDifferentCharacters
    setHiddenWord
    sendStartMessage
    while [ $chance != 0 ]
    do
        read -n1 -p "Wprowadź literę: " char #Wczytujemy i zatwierdzamy 1 znak

        if [[ " ${used_char[*]} " != *"$char"* && "$random_word" == *"$char"*  ]]; then #Sprawdzamy czy nie podano uztego znaku i czy podano znak z hasła
            correctly
            if [ $different_characters == ${#used_char[@]} ]; then #Porownujemy ilosc roznych znakow z hasla z uzytymi poprawnymi znakami
                break #Wychodzimy z petli aby zakonczyc gre
            fi
        else
            incorrectly
        fi
    done
}
        ##
       ####
      ######
     ########
    ##########
   ############
  ##############
 ################
##################
# ROZPOCZYNA GRE #
     start
##################
 ################
  ##############
   ############
    ##########
     ########
      ######
       ####
        ##
