#/bin/bash
RUTA="/datos/S2S/ECMWF/"

for Y in {2004..2018} ; do
	for m in {8..12}; do
		printf -v j "%02d" ${m}
		echo $j
		MES=$(date -d "$m/1 " "+%b") 
		echo ${MES}
		fin=$(date -d "$m/1 + 1 month - 1 day" "+%d"); 
		echo ${fin}
		
		FILE=${RUTA}ECMWF_gh_SH_cf_reforecast_01_${j}_${Y}.nc
		if [ ! -f "$FILE" ] ; then
		LINK=https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_gh/.gh/Y/%280N%29%2890S%29RANGEEDGES/S/%280000%201%20${MES}%202019%29%280000%20${fin}%20${MES}%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc
		curl -g --fail -k -b "__dlauth_id=${IRI_IDKEY}" "${LINK}" > "${FILE}"
		fi

		for mm in {1..10}; do

			FILE=${RUTA}ECMWF_u_SH_pf${mm}_reforecast_01_${j}_${Y}.nc
			if [ ! -f "$FILE" ] ; then

			LINK=https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_u/Y/%280N%29%2890S%29RANGEEDGES/S/%280000%201%20${MES}%202019%29%280000%20${fin}%20${MES}%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/M/%28${mm}%29VALUES/data.nc
			curl -g --fail -k -b "__dlauth_id=${IRI_IDKEY}" "${LINK}" > "${FILE}"
			fi
			FILE=${RUTA}ECMWF_gh_SH_pf${mm}_reforecast_01_${j}_${Y}.nc
			if [ ! -f "$FILE" ] ; then
			LINK=https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_gh/.gh/Y/%280N%29%2890S%29RANGEEDGES/S/%280000%201%20${MES}%202019%29%280000%20${fin}%20${MES}%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/M/%28${mm}%29VALUES/data.nc
			curl -g --fail -k -b "__dlauth_id=${IRI_IDKEY}" "${LINK}" > "${FILE}"
			fi
		done
	
		FILE=${RUTA}ECMWF_u_SH_cf_reforecast_01_${j}_${Y}.nc
		if [ ! -f "$FILE" ] ; then
		LINK=https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_u/.u/Y/%280N%29%2890S%29RANGEEDGES/S/%280000%201%20${MES}%202019%29%280000%20${fin}%20${MES}%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc
		curl -g --fail -k -b "__dlauth_id=${IRI_IDKEY}" "${LINK}" > "${FILE}"
		fi

	done
done












#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_gh/.gh/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"

#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_gh/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%202019)(0000%2031%20Jul%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_08_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_gh/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%202019)(0000%2031%20Aug%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_09_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_gh/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%202019)(0000%2030%20Sep%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_10_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_gh/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%202019)(0000%2031%20Oct%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_11_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_gh/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%202019)(0000%2030%20Nov%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_12_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_gh/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%202019)(0000%2031%20Dec%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_07_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_t/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%202019)(0000%2031%20Jul%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_08_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_t/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%202019)(0000%2031%20Aug%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_09_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_t/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%202019)(0000%2030%20Sep%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_10_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_t/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%202019)(0000%2031%20Oct%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_11_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_t/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%202019)(0000%2030%20Nov%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_12_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_t/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%202019)(0000%2031%20Dec%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"

#	FILE=${RUTA}ECMWF_u_SHPolar_pf_reforecast_01_07_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%202019)(0000%2031%20Jul%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_pf_reforecast_01_08_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%202019)(0000%2031%20Aug%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_pf_reforecast_01_09_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%202019)(0000%2030%20Sep%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"u
#
#	FILE=${RUTA}ECMWF_u_SHPolar_pf_reforecast_01_10_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%202019)(0000%2031%20Oct%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_pf_reforecast_01_11_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%202019)(0000%2030%20Nov%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_pf_reforecast_01_12_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.perturbed/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%202019)(0000%2031%20Dec%202019)RANGEEDGES/L/(0.0)(35.0)RANGEEDGES/hdate/(${Y})VALUES/data.nc"> "${FILE}"
#done
#
#
#for Y in {2004..2013} ; do

#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_07_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_gh/.gh/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_08_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_gh/.gh/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_09_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_gh/.gh/S/%280000%201%20Sep%202019%29%280000%2030%20Sep%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_10_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_gh/.gh/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_11_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_gh/.gh/S/%280000%201%20Nov%202019%29%280000%2030%20Nov%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_gh_SHPolar_cf_reforecast_01_12_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_gh/.gh/S/%280000%201%20Nov%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_07_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_t/.t/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_08_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_t/.t/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_09_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_t/.t/S/%280000%201%20Sep%202019%29%280000%2030%20Sep%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_10_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_t/.t/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_11_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_t/.t/S/%280000%201%20Nov%202019%29%280000%2030%20Nov%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_t_SHPolar_cf_reforecast_01_12_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_t/.t/S/%280000%201%20Nov%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_cf_reforecast_01_07_${Y}.nc

#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_u/.u/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"

#	FILE=${RUTA}ECMWF_u_SHPolar_cf_reforecast_01_08_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_u/.u/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_cf_reforecast_01_09_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_u/.u/S/%280000%201%20Sep%202019%29%280000%2030%20Sep%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_cf_reforecast_01_10_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_u/.u/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_cf_reforecast_01_11_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_u/.u/S/%280000%201%20Nov%202019%29%280000%2030%20Nov%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}ECMWF_u_SHPolar_cf_reforecast_01_12_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.ECMF/.reforecast/.control/.pressure_level_u/.u/S/%280000%201%20Nov%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/hdate/%28${Y}%29VALUES/data.nc" > "${FILE}"
#done
