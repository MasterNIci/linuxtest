#DIR="/etc/httpd/"

roller89=1
schlaufe=1

de(){
    roller1=1
    while [ $roller1 -eq 1 ] 
    do
    read -p "Geben Sie denn Pfad Ein:" pfad
    if [ -d $pfad ] ; then
    roller1=0
    else
    echo "verzeichnis NICHT vorhanden"
    mkdir $pfad
    echo "verzeichnis Erfolgleich Erstellt"
    fi
    done
    roller1=1
    while [ $roller1 -eq 1 ]
    do
    read -p "Geben Sie denn Datei Namen Ein:" dateiname
    if [ -e $pfad/$dateiname ] ; then
    echo "Datei Name vorhanden"
    else
    cd $pfad
    touch $dateiname
    echo "Erfolgleich Erstellt"
    roller1=0
    fi
    done
}

dl(){
roller91=1
while [ $roller91 -eq 1 ] 
do
read -p "Geben Sie denn Pfad und denn Datei Namen Ein: " pfn
    if [ -e $pfn ] ; then
        echo "Datei Vorhanden"
        rm $pfn
        echo "Sie wurde Gelöscht"
        roller91=0
    else 
        echo "Datei Nicht Gefunden"
    fi
    done
}

da(){
roller=1
while [ $roller92 -eq 1 ] 
do
read -p "Geben Sie denn Pfad und denn Datei Namen Ein: " pfn
    if [ -e $pfn ] ; then
        echo "Datei Vorhanden"
        read -p "Besitzer Name: " name
        chown $name $pfn
        roller92=0
    else 
        echo "Datei Nicht Gefunden"
    fi
    done
}

nw(){
roller93=1
while [ $roller93 -eq 1 ] 
do

read -p "Geben Sie denn Pfad und denn Datei Namen Ein: " pfn
    if [ -e $pfn ] ; then
        echo "Datei Vorhanden"
        error1=1
        while [ $error1 -eq 1 ] 
        do
        echo "Besitzer"
        read -p "Wahl Rechte: " zahl1
        if [ $zahl1 -lt 1 ] || [ $zahl1 -gt 7 ] ; then
        echo "1 bis 7"
        else
        error1=0
        fi
        done
        error2=1
        while [ $error2 -eq 1 ]
        do
        echo "Besitzer Gruppe"
        read -p "Wahl Rechte: " zahl2
        if [ $zahl2 -lt 1 ] || [ $zahl2 -gt 7 ] ; then
        echo "1 bis 7"
        else
        error2=0
        fi
        done
        error3=1
        while [ $error3 -eq 1 ]
        do
        echo "Alle Benutzer"
        read -p "Wahl Rechte: " zahl3
        if [ $zahl3 -lt 1 ] || [ $zahl3 -gt 7 ] ; then
        echo "1 bis 7"
        else
        error3=0
        fi
        done
        chmod $zahl1$zahl2$zahl3 $pfn
        roller93=0
    else 
        echo "Datei Nicht Gefunden"
    fi
    done
    
}




while [ $schlaufe -eq 1 ] 
do
error55=1
while [ $error55 -eq 1 ]
do
echo "0) Beenden"
echo "1) Datei Erstellen"
echo "2) Datei Löschen"
echo "3) Datei Besitzer Ändern"
echo "4) Zugriffs Rechte Ändern"

read -p "Was wollen Sie machen:" wahl
if [ $wahl -lt 0 ] || [ $wahl -gt 4 ] ; then
echo "0 bis 4"
else
error55=0
fi
done
case $wahl in

0)
schlaufe=0
echo "Es Wurde Beendet"
;;
1)
de
;;
2)
dl
;;
3)
da
;;
4)
nw
;;
esac
done
