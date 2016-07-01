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


#load all the ziped files into the database

#load all files within folders like 2930
for file in   *.zip; do
    echo $file;
    if [[ -f "$file" || ${#file} -eq 8   ]]; then
        echo $file
        unzip $file 
        cd  ${file%.*}       
        trim_numbers
	rename_files
	dead_char
	dead_char2
	dead_char3
        remove_digits
        load_shp
	cd ..
	rm -r ${file%.*}
        cd ${DATA_PATH}
	
#load all files within folders like 2930_prj        
    elif [[ -f "$file" || ${#file} -eq 12   ]]; then
        unzip $file
        cd  ${file%.*}
        remove_first_character
	trim_numbers
	dead_char
	dead_char2
	dead_char3
        remove_digits
        load_shp
        cd ${DATA_PATH}
#load all files within folders like 2930_2426        
    elif [[ -f "$file" || ${#file} -eq 13  ]]; then
        unzip $file
        cd  ${file%.*}
        renaming        
        trim 
        remove_digits       
        load_shp
        cd ${DATA_PATH}
#load all files within folders like 2930_2426_prj           
    elif [[ -f "$file" || ${#file} -eq 17   ]]; then
        unzip $file
        cd  ${file%.*}
        remove_first_character
        renaming       
        trim 
        remove_digits       
        load_shp
        cd ${DATA_PATH}                   
    fi
done





    
    



