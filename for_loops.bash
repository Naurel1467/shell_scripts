#multiple scripts
#simple counting
#create multiple files with different names
#create multiple files with user input
#assign write permissions to files 

#!/bin/bash



for i in {1..20}
do 
    echo $i
    sleep 1
done    



#create multiple files
#!/bin/bash
for i in {1..5}
do 
    touch raviteja$1.txt
done


#create user specified files

#!/bin/bash
echo how many files do you want?
read t
echo please enter the name of file.
read n
for i in $(seq 1 $t)   #this means starting with 1 to user entered value
do 
    touch $n.$i
done

#assign file with permissions

#!/bin/bash
echo enter a file name to assign permissions
read files
echo
enter what perwmission you want?  #input should be in any format either by numerical or by alphabates

read perm

for i in $files
do 
    chmod $perm $i
done