ling(){
    echo "---------------------------"
}

echo "Willkommen"
roller=1




while [ $roller -eq 1 ]
do
errorwahl=1
while [ $errorwahl -eq 1 ] 
do
    echo "0) Beenden"
    echo "1) Benutzer Erstellen"
    echo "2) Benutzer Einer Gruppe Hinzufügen"
    echo "3) Benutzer Gruppe Erstellen "
    echo "4) Text Datei Erstellen"
    echo "5) Text Datei Auslesen"
    echo "6) In Text Datei Schreiben"
    

    read -p "Was Wollen Sie: " wahl
    if [ $wahl -le 6 -a $wahl -ge 0 ]; then
        errorwahl=0
        else
            ling
            echo "Auserhalb des Bereichs"
            ling
        fi
 done
    case $wahl in 
    0)
    roller=0
    echo "BB"
    ;;
    1)
    read -p "Geben Sie Denn Benutzer Namen Ein: " benutzer
    read -p "Geben Sie Denn Pfad Ein: /home " pfad
    read -p "Geben Sie Eine Gruppe Ein: " gruppe
    useradd -m $benutzer -d $pfad/$benutzer -G $gruppe
    passwd $benutzer 
    ;;
    2)
        read -p "Geben Sie Denn Benutzer Namen Ein: " benutzer
        read -p "Geben Sie Eine Gruppe Ein: " gruppe
        usermod -aG $gruppe $benutzer
    ;;
    3)
        read -p "Gruppen Namen: " gname
        groupadd $gname
    ;;
    4)
    read -p "Geben Sie denn Pfad An: " pfad
    read -p "Geben Sie denn text Datei Namen: name.txt" txtname
    cd $pfad
    touch $txtname
    ;;
    5)
    read -p "Geben Sie denn Pfad An: " pfad
    read -p "Geben Sie denn text Datei Namen: name.txt" txtname
    cd $pfad
    cat $txtname
    ;;
    6)
    read -p "Geben Sie denn Pfad An: " pfad
    read -p "Geben Sie denn text Datei Namen: name.txt" txtname
    cd $pfad
    nano $txtname
    ;;
    esac
done


#DIR="/etc/httpd/"
#if [ -d "$DIR" ]; then
#  ### Take action if $DIR exists ###
#  echo "Installing config files in ${DIR}..."
#else
#  ###  Control will jump here if $DIR does NOT exists ###
#  echo "Error: ${DIR} not found. Can not continue."
#  exit 1
#fi
