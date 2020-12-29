for m in {1..12}; do
	printf -v j "%02d" ${m}
	echo $j
	MES=$(date -d "$m/1 " "+%b") 
	echo ${MES}
	fin=$(date -d "$m/1 + 1 month - 1 day" "+%d"); 
	echo ${fin}
done
