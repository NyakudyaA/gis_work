#!/bin/bash

#function to rename files within folder like 2427 and 2427_prj
function remove_first_five_characters {
        echo "Renaming files within folder with structure 3319.zip or 3319_prj"
        echo "----------------------------------------------------------------"
        for file in * ;
        do mv ${file}  $(echo ${file} |sed 's/^.\{5\}//g'); 
        done
       
}

#Function to remove first character of all filename in folders with prj

function remove_first_character {
        echo "Removing first character F from names of files"
        echo "----------------------------------------------"
        for file in *;do echo ${file};
        if [[  ${file} == F*   ]];
            then rename -v "s/^F//g" * ;
            else echo "nothing to do";
        fi
        done
}


function remove_ITIS50V_characters {
        echo "Remove ITIS50V_ from beginning of files "
        echo "----------------------------------------"
        for file in *;
        do echo "removing ITIS50V_ from "  ${file};
            if [[  ${file} == ITIS50V_*   ]];  then
                rename -v "s/^ITIS50V_//g" * ;
            else
                echo "nothing to do";
            fi
        done
}

function remove_other_char {
        for file in *;
        do echo "remove itisv_ from  "${file};
        if [[  ${file} == itisv_*   ]];  then
            rename -v "s/^itisv_//g" * ;
        else echo "nothing to do";
            fi
            done
}

function remove_character_v {
        for file in *;
        do echo " character v_ from beginning of file ${file}";
        if [[  ${file} == v_*   ]];  then
            rename -v "s/^v_//g" * ;
        else
        echo "nothing to do";
            fi
            done
}

function lowercase {
#it is good tradition to keep files as lowercase without spaces
        for f in *;
        do
        mv "$f" "`echo ${f} | tr "[:upper:]" "[:lower:]"`";
        done
}


#function to remove remaining digits from file names
function remove_numbers {
       for file in *;
       do 
          echo "removing digits from " ${file}; 
       if [[  ${file} =~ [0-9]   ]];then 
          rename -v "s/[0-9]//g" * && rename -v s/[_]_/_/ *; 
       else 
          echo "nothing to do"; 
       fi 
       done
}


#function to remove date from name of shapefiles.
#Since they were captured on different dates they prevented appending
function remove_dates {
        echo "Renaming files by removing dates since it prevents appending !!"
        echo "---------------------------------------------------------------"
        rename 's/_201.*?(?=.[^.]*$)//' *.*
   
}      

#functon to rename files withing folders like 3318_3317 and 3318_3317_prj
function renaming_merged_blocks {
       echo "Renaming files covering two blocks e.g 3318_3317"
       echo "------------------------------------------------------------------"
       for file in * ; 
       do
	        echo  "Renaming" ${file};
	        mv ${file}  $(echo ${file} |sed 's/^.\{10\}//g');
       done
}



#function to load shapefiles and append into the database
function load_shp {
       echo "Inserting shapefiles into database"
       echo "---------------------------------"
       for file in `ls *.shp`;
       do
          echo  "Loading" ${file};
          ogr2ogr -progress -append -addfields -skipfailures -a_srs "EPSG:4326" -nlt PROMOTE_TO_MULTI -gt 200536 -addfields -lco GEOMETRY_NAME=geom -f "PostgreSQL" PG:"dbname=test user=admire  password=babyrasta port=5432" ${file} -lco SCHEMA=public

       done
}


