#!/usr/bin/env python

##
#       Python code to retrieve the complete ISAC reforecasts for a single variable (in this case temperature)
#       and over a specified region (in this case Southern Hemisphere) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Osman 2020 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1999
final_year=2010
month_name_list=["08", "09", "10", "11", "12"]
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="t"
level_type="pl"
level="925"
origen="egrr"
paso="0/to/1440/by/24"
num="1/to/6"

# Agrego Path
pathto="/datos/S2S/UKMO/"

starts=["01", "09", "17", "25"]

# no further changes required

from subprocess import call
import calendar
import os
year_list=range(initial_year,final_year+1)
month_list=range(1,len(month_name_list)+1)
#day_list=range(1,len(day_name_list)+1)

from subprocess import call
import calendar

year_list=range(initial_year,final_year+1)
month_list=range(1,len(month_name_list)+1)

for dy in year_list:
        for dm in month_name_list:
            for dd in starts:
                string=""
                range_dates=""
                range_hdates=""
                range_dates = string.join([str(2019),"-",dm,"-",dd])
                range_hdates = string.join([str(dy),"-",dm,"-",dd])

#               range_end=eval(string.join(["len(starts_", month_name_list[dm-1] , ")"]))
#               for kd in range(1,range_end):
#                       range_hdates += string.join([string.join([str(dy),eval(string.join(["starts_" , month_name_list[dm-1] , "[kd-1]"]))]),"/"])
#                        range_dates += string.join([string.join([str(2016),eval(string.join(["starts_",month_name_list[dm-1] , "[kd-1]"]))]),"/"])                     
#                       continue        
#               # adds final date without the final /   
#               range_hdates += string.join([str(dy),eval(string.join(["starts_" , month_name_list[dm-1] , "[range_end-1]"]))])
#               range_dates += string.join([str(2019),eval(string.join(["starts_",month_name_list[dm-1] , "[range_end-1]"]))])
#
                file_name=[ pathto, "UKMO_", variable, "_", region, "_pf_reforecast_", str(dy),"_", dm, "_", dd , ".grib"];
                if not os.path.isfile("".join(file_name)):
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
                                "target": string.join(file_name),
                                "area": region_limits,
                                "time": "00",
                                "number":num,
                                "type": "pf",
                            })


                string="";
#               command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "UKMO_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "UKMO_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
#               call(string.join(command_pf), shell=True)

#               string="";
                
                file_name=[pathto, "UKMO_",variable, "_", region, "_cf_reforecast_", str(dy),"_", dm, "_", dd, ".grib"];
                if not os.path.isfile("".join(file_name)):
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
                                "target": string.join(file_name),
                                "area": region_limits,
                                "time": "00",
                                "type": "cf",
                            })

#                    string="";
#               command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "UKMO_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "UKMO_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
#               call(string.join(command_pf), shell=True)
#
