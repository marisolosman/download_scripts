#!/usr/bin/env python

##
#       Python code to retrieve the complete NCEP reforecasts for a single variable (in this case geopotential height)
#       and over a specified region (in this case Southern Hemisphere to 20N) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1999
final_year=2010
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="u"
level_type="pl"
level ="50/100/200/300/500/700/850/925/1000"
origen="rums"
#moddate="2011-03-01"
paso="0/to/1464/by/24"
num="1/2/3/4/5/6/7/8/9"

# Agrego Path
pathto="/datos/S2S/HMCR/"


# no further changes required

from datetime import *
import os
from ecmwfapi import ECMWFDataServer

year_list=range(initial_year,final_year+1)

for dy in year_list:
        moddate = datetime.strptime("2019-08-01", "%Y-%m-%d")
        while (moddate <= datetime.strptime("2019-12-31", "%Y-%m-%d")):
            hdate = datetime.strptime(str(dy) + "-" + moddate.strftime("%m-%d"), "%Y-%m-%d")
            file_name= pathto + "HMCR_" + variable + "_" + region + "_pf_reforecast_" + str(dy) +\
                        "_" + hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
            if not os.path.isfile(file_name): 
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "hdate":  hdate.strftime("%Y-%m-%d"),
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
            file_name= pathto + "HMCR_" + variable + "_" + region + "_cf_reforecast_" + str(dy) +\
                    "_" + hdate.strftime("%m") + "_" + hdate.strftime("%d") + ".grib"
            if not os.path.isfile(file_name):
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "hdate": hdate.strftime("%Y-%m-%d"),
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

