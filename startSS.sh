#! /bin/bash

logDate=`date +%Y%m%d%H%M%S`

mv $ss/log $ss/logs/log.$logDate

config="$ss/config2.json"
logfile="$ss/log"

touch $logfile

shadowsocks-server --c=$config > $logfile &
