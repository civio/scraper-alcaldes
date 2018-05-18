mkdir output 2> /dev/null

rm output/alcaldes.csv 2> /dev/null

for (( i=1; i<=52; i++ ))
do
  in2csv -I staging/$i.xls | tail +7 | sed -E "s/^/$i,/" >> output/alcaldes.csv 
done