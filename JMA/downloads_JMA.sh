#!bin/bash

./script_jma_reforecast_by_month_2t_SAm.py
rm /mnt/datos2/S2S_data/JMA/t2m/*.grib

./script_jma_reforecast_by_month_tp_SAm.py
rm /mnt/datos2/S2S_data/JMA/tp/*.grib

./script_jma_reforecast_by_month_u_SAm.py
rm /mnt/datos2/S2S_data/JMA/u850/*.grib

./script_jma_reforecast_by_month_v_SAm.py
rm /mnt/datos2/S2S_data/JMA/v850/*.grib

./script_jma_reforecast_by_month_ttr_SAm.py
rm /mnt/datos2/S2S_data/JMA/ttr/*.grib

./script_jma_reforecast_by_month_gh_SH.py
rm /mnt/datos2/S2S_data/JMA/gh300/*.grib

