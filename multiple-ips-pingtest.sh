#!/bin/bash
'''author: Raviteja
date created:
date modified:
description: this is to check the connectivity of multple servers
'''

hosts="/home/ubuntu/scripts/myips"   #myips is a file in which we store all the ip's of a servers
 
for ip in $(cat $hosts)
 
do
     ping -c1 $ip  &> /dev/null

     if [ $? -eq 0 ]
     then
         echo $ip is  pingable
     else
         echo $ip is not pingable
     fi
done
