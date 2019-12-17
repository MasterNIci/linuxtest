
zahl1=17
zahl2=34
zahl1aus=$zahl1
zahl2aus=$zahl2

while [ $zahl1 -ge 1 ] 
do
zahl1aus=$zahl1
zahl2aus=$zahl2
mod=$(($zahl1%2))
if [ $mod -eq 0 ]; 
then
 zahl2aus="-"$zahl2"-"
 fi
echo $zahl1aus $zahl2aus
zahl1=$(($zahl1/2))
zahl2=$(($zahl2*2))
done
echo ""
echo $((17*34))


