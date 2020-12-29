#/bin/bash
RUTA="/datos/S2S/CNRM/"
IRIDLL=https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/
for Y in {1993..2014} ; do
	for m in {8..12}; do
		printf -v j "%02d" ${m}
		echo $j
		MES=$(date -d "$m/1 " "+%b") 
		echo ${MES}
		fin=$(date -d "$m/1 + 1 month - 1 day" "+%d"); 
		echo ${fin}
		FILE=${RUTA}CNRM_gh_SH_pf_reforecast_01_${j}_${Y}.nc
		LINK=${IRIDLL}.CNRM/.reforecast/.perturbed/.pressure_level_2/.gh/Y/%280N%29%2890S%29RANGEEDGES/S/%280000%201%20${MES}%20${Y}%29%280000%20${fin}%20${MES}%20${Y}%29RANGEEDGES/data.nc
		curl -g --fail -k -b "__dlauth_id=${IRI_IDKEY}" "${LINK}" > "${FILE}"
		
		FILE=${RUTA}CNRM_gh_SH_cf_reforecast_01_${j}_${Y}.nc
		LINK=${IRIDLL}.CNRM/.reforecast/.control/.pressure_level_2/.gh/Y/%280N%29%2890S%29RANGEEDGES/S/%280000%201%20${MES}%20${Y}%29%280000%20${fin}%20${MES}%20${Y}%29RANGEEDGES/S/%280000%201%20${MES}%20${Y}%29%280000%20${fin}%20${MES}%20${Y}%29RANGEEDGES/data.nc
		curl -g --fail -k -b "__dlauth_id=${IRI_IDKEY}" "${LINK}" > "${FILE}"

		FILE=${RUTA}CNRM_u_SH_pf_reforecast_01_${j}_${Y}.nc
		LINK=${IRIDLL}.CNRM/.reforecast/.perturbed/.pressure_level_wind/.u/Y/%280N%29%2890S%29RANGEEDGES/S/%280000%201%20${MES}%20${Y}%29%280000%20${fin}%20${MES}%20${Y}%29RANGEEDGES/data.nc
		curl -g --fail -k -b "__dlauth_id=${IRI_IDKEY}" "${LINK}" > "${FILE}"
		
		FILE=${RUTA}CNRM_u_SH_cf_reforecast_01_${j}_${Y}.nc
		LINK=${IRIDLL}.CNRM/.reforecast/.control/.pressure_level_wind/.u/Y/%280N%29%2890S%29RANGEEDGES/S/%280000%201%20${MES}%20${Y}%29%280000%20${fin}%20${MES}%20${Y}%29RANGEEDGES/S/%280000%201%20${MES}%20${Y}%29%280000%20${fin}%20${MES}%20${Y}%29RANGEEDGES/data.nc
		curl -g --fail -k -b "__dlauth_id=${IRI_IDKEY}" "${LINK}" > "${FILE}"

	done
done


