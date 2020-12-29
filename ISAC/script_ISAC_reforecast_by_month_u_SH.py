#!/usr/bin/env python

##
#       Python code to retrieve the complete ISAC reforecasts for a single variable (in this case surface air temperature)
#       and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1999
final_year=2010
month_name_list=["08","09","10","11","12"]
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="u"
level_type="pl"
level="10/50/100/200/300/500/700/850/1000"
origen="isac"
moddate="2017-06-08"
paso="0/to/768/by/24"
num="1/2/3/4"

# Agrego Path
pathto="/datos/S2S/ISAC/"

# CNR-ISAC has specific start days for each month

starts = ["08-04","08-09","08-14","08-19","08-24","08-29", "09-03", "09-08", "09-13", "09-18", "09-23",
        "09-28", "10-03", "10-08", "10-13", "10-18", "10-23", "10-28", "11-02", "11-07", "11-12", "11-17",
        "11-22", "11-27", "12-02","12-07","12-12","12-17","12-22","12-27"]

# no further changes required

from subprocess import call
import calendar
from datetime import *
import os
year_list=range(initial_year,final_year+1)

for dy in year_list:
    hdate = datetime.strptime(str(dy) + "-07-30", "%Y-%m-%d")
    while (hdate<=datetime.strptime(str(dy) + "-12-31", "%Y-%m-%d")):
        file_name = pathto + "ISAC_" + variable + "_" + region + "_cf_reforecast_" + str(dy) +"_" +\
                hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
        if not os.path.isfile(file_name):
            from ecmwfapi import ECMWFDataServer
            server = ECMWFDataServer()
            server.retrieve({
                        "class": "s2",
                        "dataset": "s2s",
                        "hdate": hdate.strftime("%Y-%m-%d"),
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
                        "time": "00",
                        "type": "cf",
                    })
        file_name = pathto + "ISAC_" + variable + "_" + region + "_pf_reforecast_" + str(dy) +"_" +\
                hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
        if not os.path.isfile(file_name):
            from ecmwfapi import ECMWFDataServer
            server = ECMWFDataServer()
            server.retrieve({
                        "class": "s2",
                        "dataset": "s2s",
                        "hdate": hdate.strftime("%Y-%m-%d"),
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
                        "time": "00",
                        "number":num,
                        "type": "pf",
                    })
        hdate += timedelta(days=5)
