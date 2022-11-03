#!/usr/bin/env python

##
#       Python code to retrieve the complete NCEP reforecasts for a single variable (in this case geopotential height)
#       and over a specified region (in this case Southern Hemisphere to 20N) and at multiple levels. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Osman 2020 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1999
final_year=2010
month_name_list=["01","02","03","04","05","06","07","08","09","10","11","12"]
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="gh"
level_type="pl"
level = "10/50/100/200/300/500/700/850/925/1000"
origen="kwbc"
moddate="2011-03-01"
paso="0/to/1056/by/24"
num="1/2/3"

# Agrego Path
pathto="/datos/S2S/NCEP/"


# no further changes required

from subprocess import call
from datetime import *
import os

year_list=range(initial_year,final_year+1)

for dy in year_list:
        hdate = datetime.strptime(str(dy) + "-" + "08-01", "%Y-%m-%d")
        while (hdate <= datetime.strptime(str(dy) + "-" + "12-31", "%Y-%m-%d")):
                file_name= pathto + "NCEP_" + variable + "_" + region + "_pf_reforecast_" + str(dy) +\
                        "_" + hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
                if not os.path.isfile(file_name): 
                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate":  hdate.strftime("%Y-%m-%d"),
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
                file_name= pathto + "NCEP_" + variable + "_" + region + "_cf_reforecast_" + str(dy) +\
                        "_" + hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
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
                hdate += timedelta(days=1)

