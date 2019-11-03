#!/bin/bash
cd `dirname $0`
eval $(ps -ef | grep "[0-9] python server\\.py m" | awk '{print "kill "$2}')
ulimit -n 512000
# nohup python server.py m>> /dev/null 2>&1 &
mkdir -p /snow/_shadowsocks_log/
nice -n -15 nohup python server.py m>> /snow/_shadowsocks_log/ssr-`date '+%Y%m%d'`.log 2>&1 &

