#!/bin/bash
'''
author: Raviteja
date:26-06-2020
description: taking backup of /etc and /var directories
modified date: --
'''
#variables
#TIME = "date +%b-%d-%y"

tar cvf backup-$(date +%b-%d-%y).tar ./playbooks #wil create a backup-date_of-backup.tar file

gzip backup-$(date +%b-%d-%y).tar #zipping the .tar fle created file from ab    ove command

find backup-$(date +%b-%d-%y).tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then
echo Backup completed
echo
#scp /tmp/backup.tar.gz username@ip_address:path
else
echo Backup failed
fi
