#!/usr/bin/env python

##
#       Python code to retrieve the complete BoM reforecasts for a single variable (in this case total precipitation)
#       and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1999
final_year=2010
month_name_list=["08","09","10","11","12"]
day_name_list=["01","06","11","16","21","26"]
day_name_list=["01", "16"]
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="t"
level_type="pl"
level="925"
paso="24/to/1488/by/24"

# Agrego Path
pathto="/datos/S2S/BOM/"
# no further changes required

from subprocess import call
import calendar
import os
year_list=range(initial_year,final_year+1)

for dy in year_list:
        for dm in month_name_list:
            for dd in day_name_list:

                date_range = [str(dy), dm, dd]
                file_name=[ pathto, "BOM_", variable, "_", region, "_pf_reforecast_", str(dy),"_", dm, "_", dd, ".grib"];
                fn = [ pathto, "BOM_", variable, "_", region, "_pf_reforecast_", str(dy),"_", dm, "_", dd, ".nc"]
                if not os.path.isfile("".join(file_name)):
                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate":  '-'.join(date_range),
                                "date": "2014-01-01",
                                "origin": "ammc",
                                "expver": "prod",
                                "levtype": level_type,
                                "level":level,                    
                                "param": variable,
                                "step": paso,
                                "stream": "enfh",
                                "target": ''.join(file_name),    
                                "grid": "1.5/1.5",
                                "repres" : "LL",  
                                "area": region_limits,
                                "time": "00",
                                "number":"1/to/32",
                                "type": "pf",
                            })

                file_name=[ pathto, "BOM_", variable, "_", region, "_cf_reforecast_", str(dy),"_", dm, "_", dd, ".grib"];
                fn = [ pathto, "BOM_", variable, "_", region, "_cf_reforecast_", str(dy),"_", dm, "_", dd, ".nc"]

                if not os.path.isfile("".join(file_name)):

                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate":  '-'.join(date_range),
                                "date": "2014-01-01",
                                "origin": "ammc",
                                "expver": "prod",
                                "levtype": level_type,
                                "level":level,                    
                                "param": variable,
                                "step": paso,
                                "stream": "enfh",
                                "target": ''.join(file_name),
                                "grid": "1.5/1.5",
                                "repres" : "LL",  
                                "area": region_limits,
                                "time": "00",
                                "type": "cf",
                            })


