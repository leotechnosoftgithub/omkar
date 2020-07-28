#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
#curl -o ./ips/http://67.205.178.30/ips/weburl
for i in `cat xaa/gaa`;do ip=`shuf -n 1 ./ips/weburl`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./alpha2.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job job1 completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
