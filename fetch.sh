mkdir staging 2> /dev/null

for (( i=1; i<=52; i++))
do
  wget "https://ssweb.seap.minhap.es/portalEELL/consulta_alcaldes/alcaldes?id_provincia=$i" -O staging/$i.xls
done