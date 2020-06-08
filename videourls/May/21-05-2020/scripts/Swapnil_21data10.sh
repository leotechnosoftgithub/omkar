#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/videoips  http://18.207.24.43/videoips
for i in `cat ./videourls/May/21-05-2020/urls/10`;do ip=`shuf -n 1 ./ips/videoips`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./alpha5.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job Swapnil_21data10.sh completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
