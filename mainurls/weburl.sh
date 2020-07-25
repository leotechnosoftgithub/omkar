#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/weburl  http://18.207.24.43/weburl
for i in `cat xaa/gaa`;do ip=`shuf -n 1 ./ips/weburl`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./alpha2.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job job1 completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
