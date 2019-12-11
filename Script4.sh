#DIR="/etc/httpd/"

plus(){
    read -p "Geben Sie Zahl1 ein: " zahl1
    read -p "Geben Sie Zahl2 ein: " zahl2
    echo $(($zahl1+$zahl2)) 
    
}

minus(){
    read -p "Geben Sie Zahl1 ein: " zahl1
    read -p "Geben Sie Zahl2 ein: " zahl2
    echo $(($zahl1-$zahl2)) 
}

mal(){
    read -p "Geben Sie Zahl1 ein: " zahl1
    read -p "Geben Sie Zahl2 ein: " zahl2
    echo $(($zahl1*$zahl2)) 
}

geteilt(){
    read -p "Geben Sie Zahl1 ein: " zahl1
    read -p "Geben Sie Zahl2 ein: " zahl2
    echo $(($zahl1/$zahl2)) 
}

roller=1

while [ $roller -eq 1 ] 
do
echo "0) Beenden"
echo "1) Plus Rechnen"
echo "2) Minus Rechnen"
echo "3) Geteilt Rechnen"
echo "4) Mal Rechnen"

read -p "Wählen Sie aus: " wahl



case $wahl in

0)
roller=0
;;
1)
plus
;;
2)
minus
;;
3)
geteilt
;;
4)
mal
;;
esac

done
