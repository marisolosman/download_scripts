#!/usr/bin/env python

##
#	Python code to retrieve the complete ISAC reforecasts for a single variable (in this case surface air temperature)
#	and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#	per month per year and those are later converted to NetCDF.
#
#	M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1996
final_year=2014
month_name_list=["06","07","08","09","10","11","12"]
region="SAm"
region_limits="20/-90/-60/-30"  # area:  N/W/S/E
variable="2t"
level_type="sfc"
level="0"
origen="ecmf"
paso="0-24/24-48/48-72/72-96/96-120/120-144/144-168/168-192/192-216/216-240/240-264/264-288/288-312/312-336/336-360/360-384/384-408/408-432/432-456/456-480/480-504/504-528/528-552/552-576/576-600/600-624/624-648/648-672/672-696/696-720/720-744/744-768",
num="1"

# Agrego Path
pathto="/mnt/datos2/S2S_data/ECMWF/t2m/"

# ECMWF version 2015

starts_06=["0604","0611","0618","0625"]
starts_07=["0702","0709","0716","0723","0730"]
starts_08=["0806","0813","0820","0827"]
starts_09=["0903","0910","0917","0924"]
starts_10=["1001","1008","1015","1022","1029"]
starts_11=["1105","1112","1119","1126"]
starts_12=["1203","1210","1217","1224","1231"]


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
                        range_dates += string.join([string.join([str(2015),eval(string.join(["starts_",month_name_list[dm-1] , "[kd-1]"]))]),"/"])			
			continue	
		# adds final date without the final /	
		range_hdates += string.join([str(dy),eval(string.join(["starts_" , month_name_list[dm-1] , "[range_end-1]"]))])
		range_dates += string.join([str(2015),eval(string.join(["starts_",month_name_list[dm-1] , "[range_end-1]"]))])

    		file_name=[ pathto, "ECMWF_", variable, "_", region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
    
		from ecmwfapi import ECMWFDataServer
		server = ECMWFDataServer()
		server.retrieve({
			    "class": "s2",
			    "dataset": "s2s",
			    "hdate":  range_hdates,
			    "date": range_dates,
			    "origin": "ecmf",
                            "expver": "prod",
                            "levtype": level_type,
		            "level":level,                    
			    "param": variable,
			    "step": paso,
			    "stream": "enfh",
			    "target": string.join(file_name),
			    "area": region_limits,
			    "time": "00",
		            "number":"1/to/10",
			    "type": "pf",
			})


    		string="";
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "ECMWF_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "ECMWF_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)

		string="";
                
		file_name=[pathto, "ECMWF_",variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];

                from ecmwfapi import ECMWFDataServer
                server = ECMWFDataServer()
                server.retrieve({
                            "class": "s2",
                            "dataset": "s2s",
                            "hdate": range_hdates,
			    "date": range_dates,
			    "origin": "ecmf",
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
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "ECMWF_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "ECMWF_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)



