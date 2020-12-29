#!/usr/bin/env python

##
#	Python code to retrieve the complete ISAC reforecasts for a single variable (in this case surface air temperature)
#	and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#	per month per year and those are later converted to NetCDF.
#
#	M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1981
final_year=2010
month_name_list=["01","02","03","04","05","06","07","08","09","10","11","12"]
region="SAm"
region_limits="20/-90/-60/-30"  # area:  N/W/S/E
variable="v"
level_type="pl"
level="850"
origen="isac"
moddate="2015-03-26"
paso="0/to/744/by/24"
num="1"

# Agrego Path
pathto="/mnt/datos2/S2S_data/ISAC/v850/"

# CNR-ISAC has specific start days for each month

starts_01=["0101","0106","0111","0116","0121","0126","0131"]
starts_02=["0205","0210","0215","0220","0225"]
starts_03=["0302","0307","0312","0317","0322","0327"]
starts_04=["0401","0406","0411","0416","0421","0426"]
starts_05=["0501","0506","0511","0516","0521","0526","0531"]
starts_06=["0605","0610","0615","0620","0625","0630"]
starts_07=["0705","0710","0715","0720","0725","0730"]
starts_08=["0804","0809","0814","0819","0824","0829"]
starts_09=["0903","0908","0913","0918","0923","0928"]
starts_10=["1003","1008","1013","1018","1023","1028"]
starts_11=["1102","1107","1112","1117","1122","1127"]
starts_12=["1202","1207","1212","1217","1222","1227"]


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
  		
                file_name=[ pathto, "ISAC_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
    
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
			    "time": "00",
		            "number":num,
			    "type": "cf",
			})

    		string="";
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "ISAC_", variable, "_",region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "ISAC_", variable, "_",region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)


