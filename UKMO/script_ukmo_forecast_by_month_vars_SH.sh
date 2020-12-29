#/bin/bash
RUTA="/datos/S2S/UKMO/"

FILE=${RUTA}UKMO_gh_SHPolar_cf_forecast_01_07_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_pf_forecast_01_07_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_cf_forecast_01_07_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_pf_forecast_01_07_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_cf_forecast_01_07_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_pf_forecast_01_07_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Jul%202019%29%280000%2031%20Jul%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_cf_forecast_01_08_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_pf_forecast_01_08_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_cf_forecast_01_08_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_pf_forecast_01_08_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_cf_forecast_01_08_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_pf_forecast_01_08_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Aug%202019%29%280000%2031%20Aug%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_cf_forecast_01_09_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2031%20Sep%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_pf_forecast_01_09_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2031%20Sep%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_cf_forecast_01_09_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2031%20Sep%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_pf_forecast_01_09_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2031%20Sep%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_cf_forecast_01_09_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2031%20Sep%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_pf_forecast_01_09_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Sep%202019%29%280000%2031%20Sep%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_cf_forecast_01_10_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_pf_forecast_01_10_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_cf_forecast_01_10_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_pf_forecast_01_10_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_cf_forecast_01_10_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_pf_forecast_01_10_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Oct%202019%29%280000%2031%20Oct%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_cf_forecast_01_11_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2031%20Nov%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_pf_forecast_01_11_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2031%20Nov%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_cf_forecast_01_11_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2031%20Nov%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_pf_forecast_01_11_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2031%20Nov%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_cf_forecast_01_11_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2031%20Nov%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_pf_forecast_01_11_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Nov%202019%29%280000%2031%20Nov%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_cf_forecast_01_12_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_gh_SHPolar_pf_forecast_01_12_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.gh/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_cf_forecast_01_12_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_t_SHPolar_pf_forecast_01_12_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_2/.t/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_cf_forecast_01_12_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.control/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

FILE=${RUTA}UKMO_u_SHPolar_pf_forecast_01_12_2019.nc
curl -g --fail -k -b "__dlauth_id=f723133eb6d0a2beabd53358fce1044da716a3f11f35bdeabf7e188df74afdbc3214880d1fd14856fb72b50545de106356f62142" "https://iridl.ldeo.columbia.edu/SOURCES/.ECMWF/.S2S/.UKMO/.forecast/.perturbed/.pressure_level_wind/.u/Y/%2855S%29%2890S%29RANGEEDGES/S/%280000%201%20Dec%202019%29%280000%2031%20Dec%202019%29RANGEEDGES/L/%280.0%29%2840.0%29RANGEEDGES/data.nc" > "${FILE}"

