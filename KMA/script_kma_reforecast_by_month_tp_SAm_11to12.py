#!/usr/bin/env python

##
#	Python code to retrieve the complete ISAC reforecasts for a single variable (in this case surface air temperature)
#	and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#	per month per year and those are later converted to NetCDF.
#
#	M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1991
final_year=2010
#month_name_list=["01","02","03","04","05","06","07","08","09","10"]
month_name_list=["11","12"]
region="SAm"
region_limits="20/-90/-60/-30"  # area:  N/W/S/E
variable="tp"
level_type="sfc"
level="0"
origen="rksl"
paso="0/to/1440/by/24"
num="1/to/2"

# Agrego Path
pathto="/datos/datos_buzz/S2S_data/KMA/tp/"


# KMA version 2016


starts_11=["1101","1109","1117","1125"]
starts_12=["1201","1209","1217","1225"]



# no further changes required

from subprocess import call
import calendar

year_list=range(initial_year,final_year+1)
month_list=range(1,len(month_name_list)+1)
#day_list=range(1,len(day_name_list)+1)

from subprocess import call
import calendar

year_list=range(initial_year,final_year+1)
month_list=range(1,len(month_name_list)+1)

for dy in year_list:
	for dm in month_list:
		string=""
		range_dates=""
		range_hdates=""
		range_end=eval(string.join(["len(starts_", month_name_list[dm-1] , ")"]))
		for kd in range(1,range_end):
			range_hdates += string.join([string.join([str(dy),eval(string.join(["starts_" , month_name_list[dm-1] , "[kd-1]"]))]),"/"])
			range_dates += string.join([string.join([str(2016),eval(string.join(["starts_",month_name_list[dm-1] , "[kd-1]"]))]),"/"])		
			continue	
		# adds final date without the final /	
		range_hdates += string.join([str(dy),eval(string.join(["starts_" , month_name_list[dm-1] , "[range_end-1]"]))])
		range_dates += string.join([str(2016),eval(string.join(["starts_",month_name_list[dm-1] , "[range_end-1]"]))])

    		file_name=[ pathto, "KMA_", variable, "_", region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
    
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
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "KMA_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "KMA_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)

		string="";
                
		file_name=[pathto, "KMA_",variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];

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

                string="";
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "KMA_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "KMA_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)


