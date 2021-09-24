echo "Enter number"
read num

harmonic_exp=0
for ((i=1; i<=num; i++));
do
	x=`echo $i | awk '{print 1/$1}'`
	harmonic_exp=`echo $harmonic_exp $x | awk '{print $1 + $2}'`
    
done
echo $harmonic_exp