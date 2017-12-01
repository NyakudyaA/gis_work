#!/bin/bash

#set environment variable for pg latin to work in current session

export PGCLIENTENCODING=latin1

DATA_PATH=/media/admire/data/data/ngi_shp/new/



if [ -n "$1" ]
then
    DATA_PATH=$1
fi



#we assume functions.sh is also in the base directory where you have the loading script
source functions.sh

cd ${DATA_PATH}




#load all files within folders like 2930.zip
for file in   *.zip; do
    echo $file;
    if [[ -f "$file" || ${#file} -eq 8   ]]; then
        echo $file
        unzip $file 
        cd  ${file%.*}       
        remove_dates
	remove_char
	characters
	remove_other_char
	remove_v
        remove_numbers
	lowercase
        load_shp	
        cd ${DATA_PATH}
	rm -r ${file%.*}
	
#load all files within folders like 2930_prj.zip        
    elif [[ -f "$file" || ${#file} -eq 12   ]]; then
        unzip $file
        cd  ${file%.*}
        remove_first_character
	remove_dates
	remove_char
	characters
	remove_other_char
	remove_v
        remove_numbers
	lowercase
        load_shp
        cd ${DATA_PATH}
	rm -r ${file%.*} 

#load all files within folders like 2930_2426.zip        
    elif [[ -f "$file" || ${#file} -eq 13  ]]; then
        unzip $file
        cd  ${file%.*}
	remove_first_character        
        remove_dates
	renaming_blocks
	characters
	remove_other_char
	remove_v
        remove_numbers
	lowercase
        load_shp
        cd ${DATA_PATH}
	rm -r ${file%.*}
#load all files within folders like 2930_2426_prj           
    elif [[ -f "$file" || ${#file} -eq 17   ]]; then
        unzip $file
        cd  ${file%.*}
        remove_first_character        
        remove_dates
	renaming_blocks
	characters
	remove_other_char
	remove_v
        remove_numbers
	lowercase
        load_shp
        cd ${DATA_PATH}
	rm -r ${file%.*}                  
    fi
done





    
    



