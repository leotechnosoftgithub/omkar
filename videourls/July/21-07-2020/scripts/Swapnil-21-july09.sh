#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/swapnil  http://18.207.24.43/swapnil
for i in `cat ./videourls/July/21-07-2020/urls/09`;do ip=`shuf -n 1 ./ips/swapnil`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./swapnil.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job Swapnil-21-july09.sh completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
