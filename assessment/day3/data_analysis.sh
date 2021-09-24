#6 Data analysis/manipulation(AWK)


cat Day3\ Probs01\ data.csv | awk -v x=10000 '$7>=x'| awk '{print $2 $7}'

#cat Day3\ Probs01\ data.csv | grep CAPTAIN | awk '{sum+=$7} END {print sum}'

#cat Day3\ Probs01\ data.csv | awk '$5>=7000 && $5<=10000'| awk '{print $3 " " $5}'

#cat Day3\ Probs01\ data.csv | awk '{sum+=$4} END {print sum/(NR-1)}'