#!/cin/bash

#store multiple host ips or hostanmes is a single file
a=`cat /home/ubuntu/hosts`

for ip in $a
do 
    scp source_filename $ip:/path_of_destinantion 
done
