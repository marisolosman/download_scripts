#!/usr/bin/env python

##
#       Python code to retrieve the complete BoM reforecasts for a single variable (in this case total precipitation)
#       and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

f_year=2019
month_name_list=["08","09","10","11","12"]
day_name_list=["01","06","11","16","21","26"]
region="SHPolar"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable=["gh", "t", "u"]
level_type="pl"
level="10/50/100/200/300/500/700/850/925/1000"
paso="24/to/1488/by/24"

# Agrego Path
pathto="/datos/S2S/BOM/gh/"


# no further changes required

from subprocess import call
import calendar

month_list=range(1,len(month_name_list)+1)
#day_list=range(1,len(day_name_list)+1)
for YY in variable:
        for dm in month_list:
                #end_day=calendar.monthrange(dy, dm)[1]
                MMYY=str(f_year) + month_name_list[dm - 1]
                print(MMYY)
                string=[MMYY + ii for ii in day_name_list]
                print(string)
                date_range = '/'.join(string)
                print(date_range)

                string="";
#                date_range=[str(dy), month_name_list[dm-1], day_name_list[0], "/to/", str(dy), month_name_list[dm-1], day_name_list[len(day_list)-1]];
                file_name=[ pathto, "BOM_", YY, "_", region, "_pf_reforecast_", str(f_year),"_", month_name_list[dm-1] , ".grib"];
    
                from ecmwfapi import ECMWFDataServer
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "date":  string.join(date_range),
                            "origin": "ammc",
                            "expver": "prod",
                            "levtype": level_type,
                            "level":level,                    
                            "param": YY,
                            "step": paso,
                            "stream": "enfo",
                            "target": string.join(file_name),    
                            "grid": "1.5/1.5",
                            "repres" : "LL",  
                            "area": region_limits,
                            "time": "00",
                            "number":"1/to/32",
                            "type": "pf",
                        })

                string="";
                command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "BOM_", YY, "_",region, "_pf_reforecast_", str(f_year),"_", month_name_list[dm-1] , ".nc ", pathto, "BOM_", YY, "_",region, "_pf_reforecast_", str(f_year),"_", month_name_list[dm-1] , ".grib"];
                call(string.join(command_pf), shell=True)

                string="";
                
                file_name=[pathto, "BOM_", YY, "_", region, "_cf_reforecast_", str(f_year),"_", month_name_list[dm-1] , ".grib"];

                from ecmwfapi import ECMWFDataServer
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "date":  string.join(date_range),
                            "origin": "ammc",
                            "expver": "prod",
                            "levtype": level_type,
                            "level":level,                    
                            "param": variable,
                            "step": paso,
                            "stream": "enfo",
                            "target": string.join(file_name),
                            "grid": "1.5/1.5",
                            "repres" : "LL",  
                            "area": region_limits,
                            "time": "00",
                            "type": "cf",
                        })

                string="";
                command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "BOM_", variable, "_", region, "_cf_reforecast_", str(f_year),"_", month_name_list[dm-1] , ".nc ", pathto, "BOM_", variable, "_", region, "_cf_reforecast_", str(f_year),"_", month_name_list[dm-1] , ".grib"];
                call(string.join(command_pf), shell=True)

