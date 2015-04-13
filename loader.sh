#!/bin/bash

DATA_PATH=/home/admire/Documents/workingfiles/ngi/data


if [ -n "$1" ]
then
    DATA_PATH=$1
fi


cd ${DATA_PATH}

#we assume functions.sh is also in the base directory where you have the loading script
source functions.sh

#load all the ziped files into the database

#load all files within folders like 2930
for file in   *.zip; do
    echo $file;
    if [[  ${#file} -eq 8   ]]; then
        unzip $file 
        cd  ${file%.*}
        rename_files
        remove
        trim
        extra
        load_shp
        cd ..   
    fi
done

#load all files within folders like 2930_prj
for file in  *.zip; do
    echo $file;
    if [[  ${#file} -eq 12   ]]; then
        unzip $file
        cd  ${file%.*}
        strip_F
        rename_files
        remove
        trim
        extra        
        load_shp
        cd ..    
    fi
done

#load all files within folders like 2930_2426
for file in  *.zip; do
    echo $file;
    if [[  ${#file} -eq 13  ]]; then 
        unzip $file
        cd  ${file%.*}
        joined
        remove
        trim 
        extra       
        load_shp
        cd ..   
    fi
done

#load all files within folders like 2930_2426_prj
for file in  *.zip; do
    echo $file;
    if [[  ${#file} -eq 17   ]]; then
        unzip $file
        cd  ${file%.*}
        strip_F
        joined
        remove
        trim 
        extra       
        load_shp
        cd ..    
    fi
done


    
    



