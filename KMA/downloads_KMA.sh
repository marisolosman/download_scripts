#!bin/bash

python script_kma_reforecast_by_month_2t_SAm.py
rm /datos/datos_buzz/S2S_data/KMA/t2m/*.grib

python script_kma_reforecast_by_month_2t_SAm_11to12.py
rm /datos/datos_buzz/S2S_data/KMA/t2m/*.grib


python script_kma_reforecast_by_month_tp_SAm.py
rm /datos/datos_buzz/S2S_data/KMA/tp/*.grib

python script_kma_reforecast_by_month_tp_SAm_11to12.py
rm /datos/datos_buzz/S2S_data/KMA/tp/*.grib


python script_kma_reforecast_by_month_u_SAm.py
rm /datos/datos_buzz/S2S_data/KMA/u850/*.grib

python script_kma_reforecast_by_month_u_SAm_11to12.py
rm /datos/datos_buzz/S2S_data/KMA/u850/*.grib


python script_kma_reforecast_by_month_v_SAm.py
rm /datos/datos_buzz/S2S_data/KMA/v850/*.grib

python script_kma_reforecast_by_month_v_SAm_11to12.py
rm /datos/datos_buzz/S2S_data/KMA/v850/*.grib



python script_kma_reforecast_by_month_ttr_SAm.py
rm /datos/datos_buzz/S2S_data/KMA/ttr/*.grib

python script_kma_reforecast_by_month_ttr_SAm_11to12.py
rm /datos/datos_buzz/S2S_data/KMA/ttr/*.grib



python script_kma_reforecast_by_month_gh_SH.py
rm /datos/datos_buzz/S2S_data/KMA/gh300/*.grib

python script_kma_reforecast_by_month_gh_SH_11to12.py
rm /datos/datos_buzz/S2S_data/KMA/gh300/*.grib



