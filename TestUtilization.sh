#!/bin/bash
df -h | sed -e "s/[[:space:]]\+/ /g" | grep -v "Use%" |cut -d ' ' -f5-6 > TestUtilizationResult.txt
echo " Utilization precentag :\c"
read num1
while read line
do
 n2='echo $line| cut -d '%' -f1'
if [$n2 -ge $num1 ]
then
 echo "Higher Utilization : $line"
fi
done < TestUtilizationResult.txt

