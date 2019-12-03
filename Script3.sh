#DIR="/etc/httpd/"
auswahl1(){
    echo "0. Zurück"
    echo "1. einen neuen Ordner Erstellen"
    echo "2. einen Ordner Löschen"
    echo "3. einen Ordner Verschieben"
    echo "4. einen Ordner umbennen"
    echo "5. einen Ordner kopieren"
}

auswahl2(){
    echo "0. Zurück"
    echo "1. eine Textedatei erstellen"
    echo "2. in eine Textdatei schreiben"
    echo "3. aus einer Textdatei lesen und den Text ausgeben"
    echo "4. eine Datei verschieben"
    echo "5. eine Datei kopieren"
}
roller=1
while [ $roller -eq 1 ] 
do

echo "0 --> Programm beenden"
echo "1 --> Ordner bearbeiten"
echo "2 --> Dateien bearbeiten"

read -p "Was ist Ihre Wahl: " wahl

case $wahl in
    0)
    echo "Schönen Tag Noch"
    roller=0
    ;;
    1)
    auswahl1
    read -p "Was wollen Sie machen: " ordnerwahl
    case $ordnerwahl in
    0)
    echo "Sie sind Zurück"
    ;;
    1)
    read -p "Geben Sie denn Pfad und Ordner Namen Ein: " pfad
    mkdir $pfad
    ;;
    2)
    read -p "Geben Sie denn Pfad und Ordner Namen Ein: " pfad
    rmdir $pfad
    ;;
    3)
    read -p "Geben Sie denn Pfad Ein und Ordner Namen: " orpfad
    read -p "Geben Sie denn neuen pfad ein: " newpfad
    mv $orpfad $newpfad
    ;;
    4)
    read -p "Geben Sie den Ordnernamen ein" orname
    read -p "Geben Sie den Neuen Ordner Namen Ein" ornewname
    mv $orname $ornewname
    ;;
    5)
    cp -r 
    ;;
    esac
    ;;
    2)
    auswahl2
    read -p "Was wollen Sie machen: " textdateiwahl
    case $textdateiwahl in
    0)
    echo "Sie Sind Zurück"
    ;;
    1)
    read -p "Geben Sie denn Pfad An: " pfad
    read -p "Geben Sie denn text Datei Namen: name.txt" txtname
    cd $pfad
    touch $txtname
    ;;
    2)
    read -p "Geben Sie denn Pfad An: " pfad
    read -p "Geben Sie denn text Datei Namen: name.txt" txtname
    read -p "Schreiben Sie einen Text" text
    cd $pfad
    echo $text > $txtname
    ;;
    3)
    read -p "Geben Sie denn Pfad An: " pfad
    read -p "Geben Sie denn text Datei Namen: name.txt" txtname
    cd $pfad
    cat $txtname
    ;;
    4)
    read -p "Geben Sie denn Pfad An: " pfad
    read -p "Geben Sie denn text Datei Namen: name.txt" txtname
    read -p "Geben Sie denn Verschiebungs Pfad ein" pfadmove
    cd $pfad
    mv $pfad/$txtname $pfadmove
    ;;
    5)
    read -p "Geben Sie denn Pfad An: " pfad
    read -p "Geben Sie denn text Datei Namen: name.txt" txtname
    read -p "Geben Sie denn Verschiebungs Pfad ein" pfadcp
    cd $pfad
    cp $pfad/$txtname $pfadcp
    ;;
    esac
    esac
done
