#!/usr/bin/env python

##
#	Python code to retrieve the complete JMA reforecasts for a single variable (in this case surface air temperature)
#	and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#	per month per year and those are later converted to NetCDF.
#
#	M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1981
final_year=2010
month_name_list=["01","02","03","04","05","06","07","08","09","10","11","12"]
region="SH"
region_limits="20/0/-90/358.5"  # area:  N/W/S/E
variable="gh"
level_type="pl"
level="300"
origen="rjtd"
moddate="2014-03-04"
paso="12/to/804/by/24"
num="1/2/3/4"

# Agrego Path
pathto="/mnt/datos2/S2S_data/JMA/gh300/"

# JMA has specific start days for each month

starts_01=["0110","0120","0131"]
starts_02=["0210","0220","0228"]
starts_03=["0310","0320","0331"]
starts_04=["0410","0420","0430"]
starts_05=["0510","0520","0531"]
starts_06=["0610","0620","0630"]
starts_07=["0710","0720","0731"]
starts_08=["0810","0820","0831"]
starts_09=["0910","0920","0930"]
starts_10=["1010","1020","1031"]
starts_11=["1110","1120","1130"]
starts_12=["1210","1220","1231"]


# no further changes required

from subprocess import call
import calendar

year_list=range(initial_year,final_year+1)
month_list=range(1,len(month_name_list)+1)
#day_list=range(1,len(day_name_list)+1)

for dy in year_list:
	for dm in month_list:
		
                string=""
		range_hdates=""
		range_end=eval(string.join(["len(starts_", month_name_list[dm-1] , ")"]))
		for kd in range(1,range_end):
			range_hdates += string.join([string.join([str(dy),eval(string.join(["starts_" , month_name_list[dm-1] , "[kd-1]"]))]),"/"])	
			continue	
		# adds final date without the final /	
		range_hdates += string.join([str(dy),eval(string.join(["starts_" , month_name_list[dm-1] , "[range_end-1]"]))])
  		

                file_name=[ pathto, "JMA_", variable, "_", region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
    
		from ecmwfapi import ECMWFDataServer
		server = ECMWFDataServer()
		server.retrieve({
			    "class": "s2",
			    "dataset": "s2s",
			    "hdate":  range_hdates,
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
			    "time": "12",
		            "number":num,
			    "type": "pf",
			})

    		string="";
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "JMA_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "JMA_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)


                file_name=[ pathto, "JMA_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
    
		from ecmwfapi import ECMWFDataServer
		server = ECMWFDataServer()
		server.retrieve({
			    "class": "s2",
			    "dataset": "s2s",
			    "hdate":  range_hdates,
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
			    "time": "12",
		            "number":num,
			    "type": "cf",
			})

    		string="";
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "JMA_", variable, "_",region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "JMA_", variable, "_",region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)


