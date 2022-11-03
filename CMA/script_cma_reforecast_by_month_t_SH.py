#!/usr/bin/env python

##
#       Python code to retrieve the complete CMA reforecasts for a single variable (in this case t)
#       and over a specified region (in this case Southern Hemisphere) and at multiple levels. The script will retrieve one grib file 
#       M. Osman 2020 based on Paula Gonzalez - IRI - Jul 2015

# parameters that can be changed by the user

initial_year=1999
final_year=2010
month_name_list=["08","09","10","11","12"]
#days = ["01", "05", "10", "15", "20", "25"]
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="t"
level_type="pl"
level="925"
origen="babj"
moddate="2014-05-01"
paso="0/to/1440/by/24"
num="1/2/3"

# Agrego Path
pathto="/datos/S2S/CMA/"


# no further changes required

from subprocess import call
import calendar
import os.path
year_list=range(initial_year,final_year+1)
for dy in year_list:
        for dm in month_name_list:
            for dd in days:
                date_range=[str(dy), dm, dd]
                file_name=[ pathto, "CMA_", variable, "_", region, "_pf_reforecast_", str(dy),"_", dm, "_", dd, ".grib"]
                if not os.path.isfile("".join(file_name)):

                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate":  "-".join(date_range),
                                "date": moddate,
                                "origin": origen,
                                "expver": "prod",
                                "levtype": level_type,
                                "level":level,                    
                                "param": variable,
                                "step": paso,
                                "stream": "enfh",
                                "target": "".join(file_name),    
                                "area": region_limits,
                                "time": "00",
                                "number":num,
                                "type": "pf",
                            })

                    string="";
                file_name=[ pathto, "CMA_", variable, "_", region, "_cf_reforecast_", str(dy),"_", dm, "_", dd, ".grib"]
                  
                if not os.path.isfile("".join(file_name)):
                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate":  "-".join(date_range),
                                "date": moddate,
                                "origin": origen,
                                "expver": "prod",
                                "levtype": level_type,
                                "level":level,                    
                                "param": variable,
                                "step": paso,
                                "stream": "enfh",
                                "target": "".join(file_name),
                                "area": region_limits,
                                "time": "00",
                                "type": "cf",
                            })

                    string="";

