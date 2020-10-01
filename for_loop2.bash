#rename files
#!/bin/bash
'''
Author:
Date:
Description:
Modified:
'''

for filename in .txt
do 
    mv $filename ${filename%.txt}.none
done
--------------------------------------------------------------
-------------------------------------------------------
#checking files if exist

#!/bin/bash
'''
Author:
Date:
Description:
Modified:
'''
echo enter files you want to see whether they are present or not
read files


for f in $files
do 
    if [ ! -e $f ]     # !-e means not present or donot equal to the mentioned files
    then
        echo file not present
        else
        echo $f is present
    fi    
done
