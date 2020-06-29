#!/bin/bash

####################################################################
# Script Name	: 
# Description	: 
# Args			: 
# Author		: Leon Cheng
# Email			: laohan1221@gmail.com
# First release	: Automatic updated time 
####################################################################

PATH=/bin:/sbin/:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

for name in `ls *.md|grep -E 'WL[0-9]'`
do
	desName=${name:2:6}"WL.md"
	mv $name $desName
done

   	
