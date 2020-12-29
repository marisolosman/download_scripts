#!/usr/bin/env python

##
#	Python code to retrieve the ECMWF reforecasts for a single variable (in this case geopotential height)
#	and over a specified region (in this case SH) and at multiple levels. The script will retrieve one grib file 
#	per hindcast date
#
#	M. Osman 2020 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1999
final_year=2010
region = "SH"
region_limits = "0/0/-90/358.5"  # area:  N/W/S/E
variable = "gh"
level_type = "pl"
level = "10/50/100/200/300/500/700/850/925/1000"
origen="ecmf"
paso="0/to/1104/by/24"
num="1/to/10"

# Agrego Path
pathto="/datos/S2S/ECMWF/"

# ECMWF version 2016

model_date_mon = "2019-08-01"
model_date_thu = "2019-08-05"


# no further changes required
import os
from datetime import *
from ecmwfapi import ECMWFDataServer

year_list=range(initial_year,final_year+1)

for dy in year_list:
    modeldatemon = datetime.strptime(model_date_mon, "%Y-%m-%d")
    modeldatethu = datetime.strptime(model_date_thu, "%Y-%m-%d")
#    while (modeldatemon <= datetime.strptime("2019-12-31", "%Y-%m-%d")):
#            hdate = datetime.strptime(str(dy) + "-" + modeldatemon.strftime("%m-%d"), "%Y-%m-%d")
#            file_name = pathto + "ECMWF_" + variable + "_" + region + "_pf_reforecast_" + str(dy) + "_" +\
#                    hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
#            if not os.path.isfile(file_name):
#               server = ECMWFDataServer()
#               server.retrieve({
#                            "class": "s2",
#                            "dataset": "s2s",
#                            "hdate":  hdate.strftime("%Y-%m-%d"),
#                            "date": modeldatemon.strftime("%Y-%m-%d"),
#                            "origin": origen,
#                            "expver": "prod",
#                            "levtype": level_type,
#                            "level":level,                    
#                            "param": variable,
#                            "step": paso,
#                            "stream": "enfh",
#                            "target": file_name,
#                            "area": region_limits,
#                            "time": "00",
#                            "number":num,
#                            "type": "pf",
#                        })
#            file_name = pathto + "ECMWF_" + variable + "_" + region + "_cf_reforecast_" + str(dy) + "_" +\
#                    hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
#            if not os.path.isfile(file_name):
#
#                    server = ECMWFDataServer()
#                    server.retrieve({
#                                "class": "s2",
#                                "dataset": "s2s",
#                                "hdate": hdate.strftime("%Y-%m-%d"),
#                                "date": modeldatemon.strftime("%Y-%m-%d"),
#                                "origin": origen,
#                                "expver": "prod",
#                                "levtype": level_type,
#                                "level":level,                    
#                                "param": variable,
#                                "step": paso,
#                                "stream": "enfh",
#                                "target": file_name,
#                                "area": region_limits,
#                                "time": "00",
#                                "type": "cf",
#                            })
#            modeldatemon += timedelta(days=7)
    while (modeldatethu <= datetime.strptime("2019-12-31", "%Y-%m-%d")):
        hdate = datetime.strptime(str(dy) + "-" + modeldatethu.strftime("%m-%d"), "%Y-%m-%d")
        file_name = pathto + "ECMWF_" + variable + "_" + region + "_pf_reforecast_" + str(dy) + "_" +\
                hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
        if not os.path.isfile(file_name):
           server = ECMWFDataServer()
           server.retrieve({
                        "class": "s2",
                        "dataset": "s2s",
                        "hdate":  hdate.strftime("%Y-%m-%d"),
                        "date": modeldatethu.strftime("%Y-%m-%d"),
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
                hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
        if not os.path.isfile(file_name):
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "hdate": hdate.strftime("%Y-%m-%d"),
                            "date": modeldatethu.strftime("%Y-%m-%d"),
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
        modeldatethu += timedelta(days=7)


