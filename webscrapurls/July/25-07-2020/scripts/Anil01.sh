#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/weburl  http://18.207.24.43/weburl
for i in `cat ./webscrapurls/July/25-07-2020/urls/01`;do ip=`shuf -n 1 ./ips/weburl`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./alpha2.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job Anil01.sh completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
