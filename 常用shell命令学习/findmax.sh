#! /bin/bash
oldIFS=$IFS
IFS=$'\n'
for i in `du -a $1 | sort -nr`;do
	filename=`echo $i | awk '{print $2}'`
	if [ -f $filename ];then
		echo $filename
		break
	fi
done 
IFS=$oldIFS
