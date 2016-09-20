#! /bin/bash

res=`ps -ufbs | grep shadowsocks-ser | wc -l`

if [ $res -ge 1 ]
then 
	echo "has"
fi
