#!bin/bash

./script_isac_reforecast_by_month_2t_SAm.py
rm /mnt/datos2/S2S_data/ISAC/t2m/*.grib

./script_isac_reforecast_by_month_tp_SAm.py
rm /mnt/datos2/S2S_data/ISAC/tp/*.grib

./script_isac_reforecast_by_month_u_SAm.py
rm /mnt/datos2/S2S_data/ISAC/u850/*.grib

./script_isac_reforecast_by_month_v_SAm.py
rm /mnt/datos2/S2S_data/ISAC/v850/*.grib

./script_isac_reforecast_by_month_ttr_SAm.py
rm /mnt/datos2/S2S_data/ISAC/ttr/*.grib

./script_isac_reforecast_by_month_gh_SH.py
rm /mnt/datos2/S2S_data/ISAC/gh300/*.grib

