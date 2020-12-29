#!/usr/bin/env python

##
#       Python code to retrieve the complete BoM reforecasts for a single variable (in this case total precipitation)
#       and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1993
final_year=2014
month_name_list=["08","09","10","11","12"]
day_name_list=["01","15"]
region="SH"
region_limits="0/0/-90/358.5"  # area:  N/W/S/E
variable="gh"
level_type="pl"
level=["10", "50", "100", "200", "300", "500", "700", "850", "1000"]
paso="0/to/1464/by/24"

# Agrego Path
pathto="/datos/S2S_data/CNRM/"


# no further changes required

from subprocess import call
import calendar

year_list=range(initial_year,final_year+1)
month_list=range(1,len(month_name_list)+1)
day_list=range(1,len(day_name_list)+1)

for dy in year_list:
        for dm in month_list:

                end_day=calendar.monthrange(dy, dm)[1]

                string=""
                date_range=[str(dy), month_name_list[dm-1], day_name_list[0], "/to/", str(dy), month_name_list[dm-1], day_name_list[len(day_list)-1]]
                file_name=[ pathto, "CNRM_", variable, "_", region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"]
    
                from ecmwfapi import ECMWFDataServer
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "hdate":  string.join(date_range),
                            "date": "2014-12-01",
                            "origin": "lfpw",
                            "expver": "prod",
                            "levtype": level_type,
                            "level":level,                    
                            "param": variable,
                            "step": paso,
                            "stream": "enfh",
                            "target": string.join(file_name),    
                            "area": region_limits,
                            "time": "00",
                            "number":"1/to/14",
                            "type": "pf",
                        })

                string=""
                command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "CNRM_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "CNRM_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"]
                call(string.join(command_pf), shell=True)

                string=""
                
                file_name=[pathto, "CNRM_",variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"]

                from ecmwfapi import ECMWFDataServer
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "hdate":  string.join(date_range),
                            "date": "2014-12-01",
                            "origin": "lfpw",
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

                string=""
                command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "CNRM_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "CNRM_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"]
                call(string.join(command_pf), shell=True)

