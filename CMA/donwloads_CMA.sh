#!bin/bash

#./script_cma_reforecast_by_month_2t_SAm.py
#rm /mnt/datos2/S2S_data/CMA/t2m/*.grib

#./script_cma_reforecast_by_month_tp_SAm.py
#rm /mnt/datos2/S2S_data/CMA/tp/*.grib

./script_cma_reforecast_by_month_u_SAm.py
rm /mnt/datos2/S2S_data/CMA/u850/*.grib

./script_cma_reforecast_by_month_v_SAm.py
rm /mnt/datos2/S2S_data/CMA/v850/*.grib

./script_cma_reforecast_by_month_ttr_SAm.py
rm /mnt/datos2/S2S_data/CMA/ttr/*.grib

./script_cma_reforecast_by_month_gh_SH.py
rm /mnt/datos2/S2S_data/CMA/gh300/*.grib

