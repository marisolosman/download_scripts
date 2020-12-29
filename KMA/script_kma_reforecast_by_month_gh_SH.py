#!/usr/bin/env python

##
#       Python code to retrieve the complete ISAC reforecasts for a single variable (in this case surface air temperature)
#       and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1991
final_year=2016
month_name_list=["08","09", "10", "11", "12"]
day_name_list=["01", "09", "17", "25"]
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="gh"
level_type="pl"
level="10/50/100/200/300/500/700/850/1000"
origen="rksl"
paso="0/to/1440/by/24"
num="1/to/2"

# Agrego Path
pathto="/datos/S2S/KMA/"

# KMA version 2020

# no further changes required

from subprocess import call
import calendar

year_list=range(initial_year,final_year+1)

from subprocess import call
import calendar
import os

year_list=range(initial_year,final_year+1)

for dy in year_list:
        for dm in month_name_list:
            for dd in day_name_list:
                range_dates = "2019-" + dm + '-' + dd
                range_hdates = str(dy) + "-" + dm + "-" + dd 
                file_name = pathto + "KMA_" + variable + "_" + region + "_pf_reforecast_" + str(dy) +\
                            "_" + dm + "_" + dd + ".grib"
    
                if not os.path.isfile(file_name):
                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate":  range_hdates,
                                "date": range_dates,
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


#               string="";
#               command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "KMA_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "KMA_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
#               call(string.join(command_pf), shell=True)
                
                file_name = pathto + "KMA_" + variable + "_" + region + "_cf_reforecast_" + str(dy) +"_" +\
                            dm + "_" + dd + ".grib"
                if not os.path.isfile(file_name):

                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate": range_hdates,
                                "date": range_dates,
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

#               command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "KMA_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "KMA_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
#               call(string.join(command_pf), shell=True)

