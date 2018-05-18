mkdir output 2> /dev/null

echo "provincia,municipio,nombre,apellido 1,apellido 2,fecha posesión,lista" > output/alcaldes.csv

for (( i=1; i<=52; i++ ))
do
  in2csv -I staging/$i.xls | tail +7 | sed -E "s/^/$i,/" >> output/alcaldes.csv 
done