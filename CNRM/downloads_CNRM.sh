#!bin/bash

./script_cnrm_reforecast_by_month_2t_SAm.py
rm /mnt/datos2/S2S_data/CNRM/t2m/*.grib

./script_cnrm_reforecast_by_month_tp_SAm.py
rm /mnt/datos2/S2S_data/CNRM/tp/*.grib

./script_cnrm_reforecast_by_month_u_SAm.py
rm /mnt/datos2/S2S_data/CNRM/u850/*.grib

./script_cnrm_reforecast_by_month_v_SAm.py
rm /mnt/datos2/S2S_data/CNRM/v850/*.grib

./script_cnrm_reforecast_by_month_ttr_SAm.py
rm /mnt/datos2/S2S_data/CNRM/ttr/*.grib

./script_cnrm_reforecast_by_month_gh_SH.py
rm /mnt/datos2/S2S_data/CNRM/gh300/*.grib

