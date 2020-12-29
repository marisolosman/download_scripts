#/bin/bash
RUTA="/datos/S2S/CMA/"

for Y in {2004..2013} ; do
#	FILE=${RUTA}CMA_gh_SHPolar_pf_reforecast_01_07_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%20${Y})(0000%2031%20Jul%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_pf_reforecast_01_08_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%20${Y})(0000%2031%20Aug%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_pf_reforecast_01_09_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%20${Y})(0000%2030%20Sep%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_pf_reforecast_01_10_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%20${Y})(0000%2031%20Oct%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_pf_reforecast_01_11_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%20${Y})(0000%2030%20Nov%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_pf_reforecast_01_12_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%20${Y})(0000%2031%20Dec%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_pf_reforecast_01_07_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%20${Y})(0000%2031%20Jul%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_pf_reforecast_01_08_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%20${Y})(0000%2031%20Aug%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_pf_reforecast_01_09_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%20${Y})(0000%2030%20Sep%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_pf_reforecast_01_10_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%20${Y})(0000%2031%20Oct%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_pf_reforecast_01_11_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%20${Y})(0000%2030%20Nov%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_pf_reforecast_01_12_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%20${Y})(0000%2031%20Dec%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_pf_reforecast_01_07_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%20${Y})(0000%2031%20Jul%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_pf_reforecast_01_08_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%20${Y})(0000%2031%20Aug%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_pf_reforecast_01_09_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%20${Y})(0000%2030%20Sep%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_pf_reforecast_01_10_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%20${Y})(0000%2031%20Oct%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_pf_reforecast_01_11_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%20${Y})(0000%2030%20Nov%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_pf_reforecast_01_12_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.perturbed/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%20${Y})(0000%2031%20Dec%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

done


for Y in {2004..2013} ; do
#	FILE=${RUTA}CMA_gh_SHPolar_cf_reforecast_01_07_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%20${Y})(0000%2031%20Jul%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_cf_reforecast_01_08_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%20${Y})(0000%2031%20Aug%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_cf_reforecast_01_09_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%20${Y})(0000%2030%20Sep%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_cf_reforecast_01_10_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%20${Y})(0000%2031%20Oct%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_cf_reforecast_01_11_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%20${Y})(0000%2030%20Nov%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_gh_SHPolar_cf_reforecast_01_12_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%20${Y})(0000%2031%20Dec%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_cf_reforecast_01_07_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%20${Y})(0000%2031%20Jul%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_cf_reforecast_01_08_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%20${Y})(0000%2031%20Aug%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_cf_reforecast_01_09_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%20${Y})(0000%2030%20Sep%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_cf_reforecast_01_10_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%20${Y})(0000%2031%20Oct%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_cf_reforecast_01_11_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%20${Y})(0000%2030%20Nov%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}CMA_t_SHPolar_cf_reforecast_01_12_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%20${Y})(0000%2031%20Dec%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
	FILE=${RUTA}CMA_u_SHPolar_cf_reforecast_01_07_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Jul%20${Y})(0000%2031%20Jul%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_cf_reforecast_01_08_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Aug%20${Y})(0000%2031%20Aug%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_cf_reforecast_01_09_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Sep%20${Y})(0000%2030%20Sep%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_cf_reforecast_01_10_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Oct%20${Y})(0000%2031%20Oct%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_cf_reforecast_01_11_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Nov%20${Y})(0000%2030%20Nov%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}CMA_u_SHPolar_cf_reforecast_01_12_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142"  "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.CMA/.reforecast/.control/.pressure_level_wind/.u/Y/(55S)(90S)RANGEEDGES/S/(0000%201%20Dec%20${Y})(0000%2031%20Dec%20${Y})RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

done
