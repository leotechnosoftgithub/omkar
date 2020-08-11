#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
#curl -o ./ips/kimages  http://18.207.24.43/kimages
for i in `cat xaa/gaa`;do ip=`shuf -n 1 ./ips/kimages`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./iarch.sh "\"$i\"" "\"$dat\"";done
screen -X quit
