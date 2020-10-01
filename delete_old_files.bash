#!/bin/bash
#creating script to delete file older than 90 days
#find and rename old files

touch -d "thu, 1 March 2018 12:30:00" filename
find pathname -type f -iname "filename" -mtime +90 -exec ls -l {} \;
# -type have f for files and d for documents
#above command will list out the file older than 90 days

find pathname -type f -iname "filename" -mtime +90 -exec rm {} \;
# this command will delete the file older than 90 days

fin pathname -type f -iname "filename" -mtime +90 -exece mv {} {}.old \;
#this will rename the file with extension as filename.old