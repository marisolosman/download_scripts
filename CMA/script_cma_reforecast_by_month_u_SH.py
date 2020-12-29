#!/usr/bin/env python

##
#       Python code to retrieve the complete CMA reforecasts for a single variable (in this case geopotential height)
#       and over a specified region (in this case Southern Hemisphere to 20N) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=2003
final_year=2015
month_name_list=["07","08","09","10","11","12"]
region="SHPolar"
region_limits="-55/0/-90/358.5"  # area:  N/W/S/E
variable="u"
level_type="pl"
level="10/50/100/200/300/500/850/700/1000"
origen="babj"
moddate="2014-05-01"
paso="0/to/1044/by/24"
num="1/2/3"

# Agrego Path
pathto="/datos/S2S/CMA/u/"


# no further changes required

from subprocess import call
import calendar
import os.path
year_list=range(initial_year,final_year+1)
month_list=range(1, len(month_name_list)+1)
#day_list=range(1,len(day_name_list)+1)

for dy in year_list:
        for dm in month_list:

                end_day=calendar.monthrange(dy, int(month_name_list[dm-1]))[1]
                print(dy, month_name_list[dm-1], end_day)

                string="";
                date_range=[str(dy), month_name_list[dm-1], "01/to/", str(dy), month_name_list[dm-1],str(end_day)];
                file_name=[ pathto, "CMA_", variable, "_", region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
                fn = pathto + "CMA_" + variable + "_" + region + "_pf_reforecast_" + str(dy) + "_" + month_name_list[dm-1] + ".grib" 
                if os.path.isfile(fn):
                    pass
                else:

                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate":  string.join(date_range),
                                "date": moddate,
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
                    command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "CMA_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "CMA_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
                    call(string.join(command_pf), shell=True)

                    string="";
                    
                file_name=[pathto, "CMA_",variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
                fn = pathto + "CMA_" + variable + "_" + region + "_pf_reforecast_" + str(dy) + "_" + month_name_list[dm-1] + ".grib" 

                if os.path.isfile(fn):
                    pass
                else:

                    from ecmwfapi import ECMWFDataServer
                    server = ECMWFDataServer()
                    server.retrieve({
                                "class": "s2",
                                "dataset": "s2s",
                                "hdate":  string.join(date_range),
                                "date": moddate,
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

                    string="";
                    command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "CMA_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "CMA_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
                    call(string.join(command_pf), shell=True)

