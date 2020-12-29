#!bin/bash

#./script_ukmo_reforecast_by_month_2t_SAm.py
#rm /mnt/datos2/S2S_data/UKMO/t2m/*.grib

#./script_ukmo_reforecast_by_month_tp_SAm.py
#rm /mnt/datos2/S2S_data/UKMO/tp/*.grib

./script_ukmo_reforecast_by_month_u_SAm.py
rm /mnt/datos2/S2S_data/UKMO/u850/*.grib

./script_ukmo_reforecast_by_month_v_SAm.py
rm /mnt/datos2/S2S_data/UKMO/v850/*.grib

#./script_ukmo_reforecast_by_month_ttr_SAm.py
#rm /mnt/datos2/S2S_data/UKMO/ttr/*.grib

#./script_ukmo_reforecast_by_month_gh_SH.py
#rm /mnt/datos2/S2S_data/UKMO/gh300/*.grib


