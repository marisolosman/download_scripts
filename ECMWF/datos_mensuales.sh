#obtengo pp mensual en mm y etp acumulada anual
cd /datos/S2S/ECMWF/
for f in *.nc; do
	a="$(echo $f | sed s/_cf_/_pf_/)"
        mv "$f" "$a"
done





