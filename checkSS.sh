#! /bin/bash

username=`whoami`

res=`ps -u$username | grep shadowsocks-ser | wc -l`

if [ $res -ge 1 ]
then 
	echo "has"
fi
