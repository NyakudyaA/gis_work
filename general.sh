#!/usr/bin/env bash


# bashcript to reproject shapefiles
    ```
    #!/bin/bash
    for i in $(ls *.shp); do
    ogr2ogr -f “ESRI Shapefile” -a_srs “EPSG:4269″ ./nad83 $i
    done
    ```
    ``` 
    #!/bin/bash
    for shp in *.shp
    do
    echo “Processing $shp”
    ogr2ogr -f “ESRI Shapefile” -t_srs EPSG:4326 geo/$shp $shp
    done
    ```
# loop through all of the shapefiles in the directory and load them
    ```
    for i in $(ls *.shp); do
    ogr2ogr -f Postgresql PG:"host=smoke.hobu.net" -a_srs " EPSG:26915" -nln outputlayer $i -update -append -skipfailures
    done 
    ```

#ogr2ogr "ogr2ogr -append -s_srs EPSG:3004 -t_srs EPSG:3004 -f SQLite -dsco SPATIALITE=NO db.sqlite input.shp"


#loading data into sqlite using ogr2ogr (schoolgis project 2013-06-06)

    ogr2ogr -update -append -f PostgreSQL PG:dbname=warmerda port=5433 user=admire password=sam1982 abc.tab

    ogr2ogr -update -append -prseserve_fid -f PostgreSQL PG:dbname=ngi_50k_backup_6_may_2013 user=admire port=5433 password=sam1982  /data/grass/Africalatlong/PERMANENT/vector/topoarearea_s/head

    ogr2ogr -update -append -f "PostGreSQL" PG:"host=192.168.10.200 user=admire dbname=ngi_50k_backup_6_may_2013 password=sam1982 port=5433" $PERMANENT/vector/topoarearea_s/head layer topoareaarea_s  -nln ngi_topoareaarea 

# grass export for a shapefile (2013 june)
 *   v.out.ogr -s -c -e input=topoareaarea_s@PERMANENT type=area dsn=/home/admire/Documents/polygons/ngi_topoareaarea.shp

 *  check which image can be translated
    for file in `ls *tif`;do gdal_translate $file  -co "TILED=YES" ../$file && ls ../$file * /home/admire/one.txt && rm ../$file;done

    for file in `cat /home/admire/translate_check.txt`;do gdal_translate $file  -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" ../$file && ls ../$file * /home/admire/one.txt && rm ../$file;done


* converting a file from mp4 to avi
    ffmpeg -i filename.mp4 -vcodec mpeg4 -acodec ac3 -ar 48000 -ab 192k output.avi

* convert mkv to mp3

    for file in  `ls *mkv`; do ffmpeg -i $file -vcodec copy -acodec copy ${file%.*}.mp4; done


*  convert mkv to avi
    ffmpeg -i filename.mkv -c:v copy -c:a copy output.avi

    ffmpeg -i filename.mkv output.avi

*  mp4 to mp3
    ffmpeg -i video.mp4 -vn -acodec libmp3lame -ac 2 -qscale:a 4 -ar 48000 audio.mp3


Loading layer into db

* for file in `ls *.shp`;do shp2pgsql -s 4326 -c -D -I -W LATIN1  $file  | psql -p 5433 -d up-courses;done



* for file in `ls *shp`;do ogr2ogr -F "SQLITE" 1in50k_dds.sqlite -update -skipfailures -append -dsco SQLITE=YES -lco SPATIAL_INDEX=YES $file;done 


for file in `ls *.shp`;do ogr2ogr -F "SQLITE" -t_srs "EPSG:4326"-update -append -lco SPATIAL_INDEX=YES topo.sqlite  $file;done


* spatialite_tool -i -shp airtransportarea -d /home/admire/temporary/topo_vectors_1in50k_dd.sqlite -t airs -c CP1252 -s 4326 -g geom


* for file in `cat one.txt`;do spatialite_tool -i -shp $file -d census2011.sqlite -t $file -c CP1252 -s 4326 -g geom;done



Tranlate a 1 band file to three band

* for file in `cat oldpan.txt`; do gdal_translate  $file -co "TILED=YES" -b 1 -b 1 -b 1 -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" /data/ngi_image_pyramid_feb2013/level/$file;done 

gdal_retile layers

* gdal_retile.py -v -r cubic -levels 21 -ps 6144 6144 -co "COMPRESS=DEFLATE" -co "PREDICTOR=2" -co "ZLEVEL=9" -co "TILED=YES" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256"  -pyramidOnly -targetDir /data/ngi_image_pyramid_feb2013/   --optfile files.txt

converting all file names to lowercase

* for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done


GDAL’s nearblack is a great utility for correcting this problem. If we wanted to batch this up on a windows system, it might look something like this:



synchronising data from two machines

* rsync   -avv -e ssh /media/SAMSUNG/drakenstein_processed/ admire@superman:/home/admire/drakenstein/0


>>loading raster images into rasterlite
rasterlite_load -d rasters.sqlite -T images -D . -v
rasterlite_pyramid -d rasters.sqlite -T images  -v
rasterlite_topmost -d rasters.sqlite -T images -v

where -T is the name of the images



