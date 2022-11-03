#!/usr/bin/env python

##
#       Python code to retrieve the ECCC reforecasts for a single variable (in this case gh)
#       and over a specified region (in this case Southern Hemisphere) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Osman 2020 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1999
final_year=2010
#month_name_list=["01","02","03","04","05"]
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="gh"
level_type="pl"
level="10/50/100/200/300/500/700/850/925/1000"
origen="cwao"
paso="24/to/768/by/24"
num="1/2/3"

# Agrego Path
pathto="/datos/S2S/ECCC/"

# ECCC version 2019 ---> change model version dates below

import os
from datetime import *
year_list=range(initial_year,final_year+1)

for dy in year_list:
    moddate = datetime.strptime("2019-08-01", "%Y-%m-%d")  # change model version here!!!!!!!!!
    while (moddate<datetime.strptime("2020-01-01", "%Y-%m-%d")):
        hdates = str(dy) + "-" + moddate.strftime("%m-%d")
        file_name = pathto + "ECMWF_" + variable + "_" + region + "_pf_reforecast_" + str(dy) + "_" +\
                moddate.strftime("%m") + "_" + moddate.strftime("%d") + ".grib"
        if not os.path.isfile(file_name):
            from ecmwfapi import ECMWFDataServer
            server = ECMWFDataServer()
            server.retrieve({
                    "class": "s2",
                    "dataset": "s2s",
                    "hdate":  hdates,
                    "date": moddate.strftime("%Y-%m-%d"),
                    "origin": origen,
                    "expver": "prod",
                    "levtype": level_type,
                    "level":level,                    
                    "param": variable,
                    "step": paso,
                    "stream": "enfh",
                    "target": file_name,
                    "area": region_limits,
                    "time": "00",
                    "number":num,
                    "type": "pf",
                        })
        file_name = pathto + "ECMWF_" + variable + "_" + region + "_cf_reforecast_" + str(dy) + "_" +\
                moddate.strftime("%m") + "_" + moddate.strftime("%d") + ".grib"
        if not os.path.isfile(file_name):
            from ecmwfapi import ECMWFDataServer
            server = ECMWFDataServer()
            server.retrieve({
                    "class": "s2",
                    "dataset": "s2s",
                    "hdate":  hdates,
                    "date": moddate.strftime("%Y-%m-%d"),
                    "origin": origen,
                    "expver": "prod",
                    "levtype": level_type,
                    "level":level,                    
                    "param": variable,
                    "step": paso,
                    "stream": "enfh",
                    "target": file_name,
                    "area": region_limits,
                    "time": "00",
                    "type": "cf",
                        })
        moddate += timedelta(days=7)


