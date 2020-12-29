#obtengo pp mensual en mm y etp acumulada anual
cd /datos/S2S/UKMO/gh/
for f in *_cf_*.nc; do
	a="$(echo $f | sed s/_cf_/_pf_/)"
        mv "$f" "$a"
done


