

auswahlausgeben(){
    echo "1) Ausführen"
    echo "2) Schreiben"
    echo "3) Schreiben + Ausführen"
    echo "4) Lesen"
    echo "5) Lesen + Ausführen"
    echo "6) Lesen + Schreiben"
    echo "7) Vollzugriff"
}

roller=1

while [ $roller -eq 1 ] 
do
read -p "Geben Sie denn Pfad Ein und Namen: " pfad
auswahlausgeben
echo "Besitzer"
read -p "Wahl Rechte" zahl1
auswahlausgeben
echo "Besitzer Gruppe"
read -p "Wahl Rechte" zahl2
auswahlausgeben
echo "Alle Benutzer"
read -p "Wahl Rechte" zahl3

chmod $zahl1$zahl2$zahl3 $pfad


read -p "Wollen Sie noch mal geben sie 1 Ein: " roller 
#if [ $nochmal -ne 1 ]; then
#    $roller=0
#fi
done

