#!/usr/bin/env python

##
#       Python code to retrieve the complete ISAC reforecasts for a single variable (in this case surface air temperature)
#       and over a specified region (in this case South America) and at a single level. The script will retrieve one grib file
#       per month per year and those are later converted to NetCDF.
#
#       M. Alvarez 2017 based on Paula Gonzalez - IRI - Jul 2015
##

# parameters that can be changed by the user

initial_year=1998
final_year=2018
month_name_list=["06","07","08"]

region="SAm"
region_limits="20/-90/-60/-30"  # area:  N/W/S/E
variable="2t"
level_type="sfc"
level="0"
origen="ecmf"
paso="0-24/24-48/48-72/72-96/96-120/120-144/144-168/168-192/192-216/216-240/240-264/264-288/288-312/312-336/336-360/360-384/384-408/408-432/432-456/456-480/480-504/504-528/528-552/552-576/576-600/600-624/624-648/648-672/672-696/696-720/720-744/744-768/768-792/792-816/816-840/840-864/864-888/888-912/912-936/936-960/960-984/984-1008/1008-1032/1032-1056/1056-1080/1080-1104"
num="1/to/10"

# Agrego Path
pathto="/media/mariano/371BA83C4BFB071E/S2S_data/ECMWF/v2018/"

# ECMWF version 2017

starts_06=["0607","0614","0621","0628"]
starts_07=["0705","0712","0719","0726"]
starts_08=["0802","0809","0816","0823","0830"]


# no further changes required


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
                    range_dates += string.join([string.join([str(2018),eval(string.join(["starts_", month_name_list[dm-1] , "[kd-1]"]))]),"/"])
                    continue 
                # adds final date without the final /
                range_hdates += string.join([str(dy),eval(string.join(["starts_" , month_name_list[dm-1] , "[range_end-1]"]))])
                range_dates += string.join([str(2018),eval(string.join(["starts_",month_name_list[dm-1] , "[range_end-1]"]))])

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
                            "param": "167",
                            "step": paso,
                            "stream": "enfh",
                            "target": string.join(file_name),
                            "area": region_limits,
                            "time": "00",
                            "number":num,
                            "type": "pf",
                            "expect" : "any",
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
                            "param": "167",
                            "step": paso,
                            "stream": "enfh",
                            "target": string.join(file_name),
                            "area": region_limits,
                            "time": "00",
                            "type": "cf",
                            "expect" : "any",
                        })

                string="";
                command_pf=[ "grib_to_netcdf -M -I method,type,stream,refdate -T -o ", pathto, "ECMWF_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".nc ", pathto, "ECMWF_", variable, "_", region, "_cf_reforecast_", str(dy),"_", month_name_list[dm-1] , ".grib"];
                call(string.join(command_pf), shell=True)
