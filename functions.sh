#!/bin/bash

#function to rename files within folder like 2427 and 2427_prj
function rename_files {
        echo "Renaming files within folder with structure 3319.zip or 3319_prj"
        echo "----------------------------------------------------------------"
        for file in * ;
        do mv $file  $(echo $file |sed 's/^.\{5\}//g'); 
        done
       
}

#Function to remove first character of all filename in folders with prj

function strip_F {
for file in *;do echo $file; if [[  $file == F*   ]];  then rename -v "s/^F//g" * ; else echo "nothing to do"; fi done
}


#function to rename all shapefiles with ITIS50V_ in the name
function remove {
        echo "Remove eight other characters"
        echo "-----------------------------"
        for f in ITIS50V_*;
        do
        mv $f $(echo $f | sed 's/^ITIS50V_//g');

        done
        
}

#function to rename or remove extra names from digits from fields
function extra {
       for file in *;do echo $file; 
       if [[  $file =~ [0-9]   ]];  
       then rename -v "s/[0-9]//g" * && rename -v s/[_]_/_/ *; 
       else echo "nothing to do"; 
       fi 
       done
}


#function to remove date from name of shapefiles. Since they were captured on different dates they prevented appending
function trim {
        echo "Renaming files by removing trailing letters"
        echo "-------------------------------------------"
        rename 's/_201.*?(?=.[^.]*$)//' *.*
   
}      

#functon to rename files withing folders like 3318_3317 and 3318_3317_prj
function joined {
       echo "Renaming files within folder covering two blocks example 3318_3317"
       echo "------------------------------------------------------------------"
       for file in * ; 
       do mv $file  $(echo $file |sed 's/^.\{10\}//g'); 
       done
}



#function to load shapefiles and append into the database
function load_shp {
       echo "Inserting shapefiles into database"
       echo "---------------------------------"
       for file in `ls *.shp`;
       do
          echo  "Loading" $file;
          ogr2ogr -progress -append -skipfailures -a_srs "EPSG:4326" -nlt PROMOTE_TO_MULTI -gt 65536 -addfields -f "PostgreSQL" PG:"dbname=ngi2014 user=admire  password=babyrasta port=5433" $file

       done
}


