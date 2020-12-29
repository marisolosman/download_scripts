#!bin/bash

./script_ncep_reforecast_by_month_2t_SAm.py
rm /mnt/datos2/S2S_data/NCEP/t2m/*.grib

./script_ncep_reforecast_by_month_tp_SAm.py
rm /mnt/datos2/S2S_data/NCEP/tp/*.grib

./script_ncep_reforecast_by_month_u_SAm.py
rm /mnt/datos2/S2S_data/NCEP/u850/*.grib

./script_ncep_reforecast_by_month_v_SAm.py
rm /mnt/datos2/S2S_data/NCEP/v850/*.grib

./script_ncep_reforecast_by_month_ttr_SAm.py
rm /mnt/datos2/S2S_data/NCEP/ttr/*.grib

./script_ncep_reforecast_by_month_gh_SH.py
rm /mnt/datos2/S2S_data/NCEP/gh300/*.grib

