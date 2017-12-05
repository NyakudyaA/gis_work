#!/bin/bash

#set environment variable for pg latin to work in current session

export PGCLIENTENCODING=latin1

DATA_PATH=/gis/gis_data/ngi_data/raw_vectors



if [ -n "$1" ]
then
    DATA_PATH=$1
fi



#we assume functions.sh is also in the base directory where you have the loading script
source functions.sh

cd ${DATA_PATH}


#load all the zipped files into the database

#load all files within folders like 2229
for file in  `ls *.zip`; do
    echo ${file};
    if [[  ${#file} -eq 8   ]]; then
        echo "file is 8 char long"
        unzip ${file}
        cd  ${PWD}/${file%.*}
        rm *metadata*
        remove_first_five_characters
        remove_ITIS50V_characters
        remove_other_char
        remove_character_v
        remove_character_0
        remove_character_a
        remove_dates
        remove_numbers
        lowercase
        load_shp
        cd ..
        cd ${DATA_PATH}
    #load all files within folders like 2930_prj

    elif [[  ${#file} -eq 12   ]]; then
        echo "12 character long ${file}"
        unzip ${file}
        cd  ${PWD}/${file%.*}
        rm *metadata*
        remove_first_character
        remove_first_five_characters
        remove_ITIS50V_characters
        remove_other_char
        remove_character_v
        remove_character_0
        remove_character_a
        remove_dates
        remove_numbers
        lowercase
        load_shp
        cd ..
        cd ${DATA_PATH}
	

#load all files within folders like 2930_2426        
    elif [[  ${#file} -eq 13  ]]; then
        echo "13 characters long"
        unzip ${file}
        cd  ${PWD}/${file%.*}
        rm *metadata*
        renaming_merged_blocks
        remove_ITIS50V_characters
        remove_other_char
        remove_character_v
        remove_character_0
        remove_character_a
        remove_dates
        remove_numbers
        lowercase
        load_shp
        cd ..
        cd ${DATA_PATH}
#load all files within folders like 2930_2426_prj           
    elif [[  ${#file} -eq 17   ]]; then
        echo "17 characters"
        unzip ${file}
        cd  ${PWD}/${file%.*}
        rm *metadata*
        remove_first_character
        renaming_merged_blocks
        remove_ITIS50V_characters
        remove_other_char
        remove_character_v
        remove_character_0
        remove_character_a
        remove_dates
        remove_numbers
        lowercase
        load_shp
        cd ..
        cd ${DATA_PATH}
    fi

done





    
    



