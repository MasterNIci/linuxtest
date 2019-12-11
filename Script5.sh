#DIR="/etc/httpd/"

allewerte(){
echo "Alle Werte: "${zahlentag[*]}
}

durchschnitt(){
i=0

while [ $i -le 7 ]
do
result=$(({$zahlentag[$i]} + $result))
let i=$i+1
done
echo "Durchschnittswert: "$(($result/7))


}

tief(){
echo "Tiefstwert: "
}

hoch(){
echo "Höchstwert: "
}

zahlentag=(1 2 3 4 5 6 7)



i=0
while [ $i -le 7 ]
do
read -p "Geben Sie die Werte Ein: " wert
zahlentag[$i]=$wert
echo ${zahlentag[$i]}
let i=$i+1
done

allewerte
durchschnitt
tief
hoch

roller=1
while [ $roller -eq 1 ] 
do
echo "0) Bennden"
echo "1) Werte Ändern"
read -p "Was wollen Sie wählen: " wahl
case $wahl in
    0)
    roller=0
    echo "bb"
    ;;
    1)
    read -p "Geben Sie den Tag Ein denn Sie ändern wollen: " day
    read -p "Geben Sie den Wert Ein: " wertnew
    day=$(($day-1))
    zahlentag[$day]=$wertnew
    echo "Der Neue Wert ist: "${zahlentag[$day]}
    allewerte
    durchschnitt
    tief
    hoch
;;
    esac
done
