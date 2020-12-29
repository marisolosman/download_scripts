#codigo para obtener la media anual de las variables usadas en las clases de clima dinamico y las variables mensuales necesarias
cd /datos/S2S/CMA/

for f in *.nc; do
	b="$(echo $f | sed s/_.nc/_2019.nc/)"
	#calculo acumulado anual
	cp "$f" "$b"
done

