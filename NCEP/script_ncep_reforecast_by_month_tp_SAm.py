#!/usr/bin/env python

##
#	Python code to retrieve the complete NCEP reforecasts for a single variable (in this case total precipitation)
#	and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file 
#	per month per year and those are later converted to NetCDF.
#
#	M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1999
final_year=2010
month_name_list=["01","02","03","04","05","06","07","08","09","10","11","12"]
region="SAm"
region_limits="20/-90/-60/-30"  # area:  N/W/S/E
variable="tp"
level_type="sfc"
level="0"
origen="kwbc"
moddate="2011-03-01"
paso="24/to/1056/by/24"
num="1/2/3"

# Agrego Path
pathto="/mnt/datos2/S2S_data/NCEP/tp/"


# no further changes required

from subprocess import call
import calendar

year_list=range(initial_year,final_year+1)
month_list=range(1,len(month_name_list)+1)
##day_list=range(1,len(day_name_list)+1)

for dy in year_list:
	for dm in month_list:

		end_day=calendar.monthrange(dy, dm)[1]

    		string="";
                date_range=[str(dy), month_name_list[dm-1], "01/to/", str(dy), month_name_list[dm-1],str(end_day)];
    		file_name=[ pathto, "NCEP_", variable, "_", region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
    
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
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "NCEP_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "NCEP_", variable, "_",region, "_pf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)

		string="";
                
		file_name=[pathto, "NCEP_",variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];

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
    		command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "NCEP_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "NCEP_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
		call(string.join(command_pf), shell=True)

