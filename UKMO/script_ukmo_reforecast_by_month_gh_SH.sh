#/bin/bash
RUTA="/datos/S2S/UKMO/"

for Y in {2004..2013} ; do
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_07_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_gh/.gh/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_08_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_gh/.gh/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_09_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_gh/.gh/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2030%20Sep%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_10_${Y}.nc
#
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_gh/.gh/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_11_${Y}.nc

#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_gh/.gh/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2030%20Nov%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_12_${Y}.nc

#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_gh/.gh/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2009%20Dec%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_07_${Y}.nc

#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_t/.t/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_08_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_t/.t/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_09_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_t/.t/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2030%20Sep%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_10_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_t/.t/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_11_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_t/.t/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2030%20Nov%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_12_${Y}.nc
#curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_t/.t/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2009%20Dec%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"
	FILE=${RUTA}UKMO_u_SHPolar_pf_reforecast_01_07_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_u/.u/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_pf_reforecast_01_08_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_u/.u/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_pf_reforecast_01_09_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_u/.u/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2030%20Sep%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_pf_reforecast_01_10_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_u/.u/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_pf_reforecast_01_11_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_u/.u/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2030%20Nov%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_pf_reforecast_01_12_${Y}.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.perturbedM6/.pressure_level_u/.u/Y/%2855S%29%2890S%29RANGEEDGES/hdate/%28${Y}%29%28${Y}%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2009%20Dec%202019%29RANGEEDGES/L/%280.0%29%2835.0%29RANGEEDGES/data.nc" > "${FILE}"
done

for Y in {2004..2013} ; do

#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_07_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Jul%202019)(0000%2031%20Jul%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"  > "${FILE}"
#
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_08_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Aug%202019)(0000%2031%20Aug%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"  > "${FILE}"
#
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_09_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Sep%202019)(0000%2030%20Sep%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_10_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Oct%202019)(0000%2031%20Oct%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_11_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Nov%202019)(0000%2030%20Nov%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}UKMO_gh_SHPolar_cf_reforecast_01_12_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.gh/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Dec%202019)(0000%2031%20Dec%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_07_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Jul%202019)(0000%2031%20Jul%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"  > "${FILE}"
#
#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_08_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Aug%202019)(0000%2031%20Aug%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"  > "${FILE}"
#
#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_09_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Sep%202019)(0000%2030%20Sep%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_10_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Oct%202019)(0000%2031%20Oct%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_11_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Nov%202019)(0000%2030%20Nov%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"> "${FILE}"
#
#	FILE=${RUTA}UKMO_t_SHPolar_cf_reforecast_01_12_${Y}.nc
#	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_2/.t/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Dec%202019)(0000%2031%20Dec%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"
#
	FILE=${RUTA}UKMO_u_SHPolar_cf_reforecast_01_07_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Jul%202019)(0000%2031%20Jul%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"  > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_cf_reforecast_01_08_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Aug%202019)(0000%2031%20Aug%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"  > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_cf_reforecast_01_09_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Sep%202019)(0000%2030%20Sep%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_cf_reforecast_01_10_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Oct%202019)(0000%2031%20Oct%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_cf_reforecast_01_11_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Nov%202019)(0000%2030%20Nov%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc"> "${FILE}"

	FILE=${RUTA}UKMO_u_SHPolar_cf_reforecast_01_12_${Y}.nc
	curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.reforecast/.control/.pressure_level_u/.u/Y/(55S)(90S)RANGEEDGES/hdate/(${Y})VALUES/S/(0000%201%20Dec%202019)(0000%2031%20Dec%202019)RANGEEDGES/L/(0.0)(40.0)RANGEEDGES/data.nc" > "${FILE}"

done

