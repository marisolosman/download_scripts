#!/usr/bin/env python

##
#       Python code to retrieve the complete JMA reforecasts for a single variable (in this case surface air temperature)
#       and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year = 1999
final_year = 2010
#month_name_list=["01","02","03","04","05","06","07","08","09","10","11","12"]
region = "SH"
region_limits = "0/0/-90/358.5"  # area:  N/W/S/E
variable = "u"
level_type = "pl"
level = "10/50/100/200/300/500/700/850/925/1000"
origen = "rjtd"
moddate = "2017-01-31"
paso = "12/to/804/by/24"
num = "1/to/4"

# Agrego Path
pathto = "/datos/S2S/JMA/"

# JMA has specific start days for each month

starts = ["07-31", "08-10", "08-20", "08-31", "09-10", "09-20", "09-30",\
        "10-10", "10-20", "10-31", "11-10", "11-20", "11-30", "12-10", "12-20","12-31"]

# no further changes required

from subprocess import call
import calendar
import os
year_list=range(initial_year,final_year+1)

for dy in year_list:
        for dm in starts:
            hdate = str(dy) + "-" + dm
            file_name = pathto + "JMA_" + variable + "_" + region + "_pf_reforecast_" + str(dy) +\
                    "_" + dm[0:2] + "_" + dm[3:5] + ".grib"
            if not os.path.isfile(file_name):
                from ecmwfapi import ECMWFDataServer
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "hdate":  hdate,
                            "date": moddate,
                            "origin": origen,
                            "expver": "prod",
                            "levtype": level_type,
                            "level":level,                    
                            "param": variable,
                            "step": paso,
                            "stream": "enfh",
                            "target": file_name,    
                            "area": region_limits,
                            "time": "12",
                            "number":num,
                            "type": "pf",
                        })
            file_name = pathto + "JMA_" + variable + "_" + region + "_cf_reforecast_" + str(dy) +\
                    "_" + dm[0:2] + "_" + dm[3:5] + ".grib"
            if not os.path.isfile(file_name):
                from ecmwfapi import ECMWFDataServer
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "hdate":  hdate,
                            "date": moddate,
                            "origin": origen,
                            "expver": "prod",
                            "levtype": level_type,
                            "level":level,                    
                            "param": variable,
                            "step": paso,
                            "stream": "enfh",
                            "target": file_name,    
                            "area": region_limits,
                            "time": "12",
                            "number":num,
                            "type": "cf",
                        })
