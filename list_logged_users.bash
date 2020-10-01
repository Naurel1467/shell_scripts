#!/bin/bash

#last |  grep Mon March 28

time=`date | awk '(print $1,$2,$3)'`
last | grep "$time"

--------------------------------------------------
--------------------------------------------------

#!/bin/bash

#Author:
#Date created:
#Description:
#Modified

echo "please enter day (e.g. Mon)"
read day
echo
echo "plaease enter a month (e.g. Aug)"
read month
echo
echo "please enter a date (e.g. 28)"
read date
last | grep "$day $month $date" | awk '{print $1}'   #grep will show the user entered date list and awk will show the olumn of username only

