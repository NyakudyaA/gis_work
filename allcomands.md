
## Daily Techniques

* doing warp with the original parameters.
    gdalwarp -s_srs "+proj=tmerc +lat_0=0 +lon_0=%s +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" -t_srs "EPSG:3857" -r cubic -multi  -tr %s %s -of GTiff %s /tmp/%s.tif' %(meridian,res,res,pszFilename,job),shell=True
    added other options for the gdal in order to see if it improves or not. the option that was added is -tap:
    which (target aligned pixels) align the coordinates of the extent of the output file to the values of the -tr, such that the aligned extent includes the minimum extent. 

* Doing gdal_translate using the original datasets

    gdal_translate -co "TILED=YES" -co "COMPRESS=JPEG"  -co "PHOTOMETRIC=YCBCR" -co "JPEG_QUALITY=75" -projwin %s %s %s %s /tmp/%s.tif %s%' %(ulx,uly,lrx,lry,job,target,name)

    gdaladdo -r average --config COMPRESS_OVERVIEW JPEG --config PHOTOMETRIC_OVERVIEW YCBCR --config INTERLEAVE_OVERVIEW PIXEL %s%s 2 4 8 16 32 64' %(target,name)

*   gdal_translate  -co COMPRESS=JPEG -co PHOTOMETRIC=YCBCR --config GDAL_TIFF_INTERNAL_MASK YES

* Doing overviews

    gdaladdo -r average --config COMPRESS_OVERVIEW JPEG --config PHOTOMETRIC_OVERVIEW YCBCR --config INTERLEAVE_OVERVIEW PIXEL %s%s 2 4 8 16 32 64' %(target,name)


* Expanding a 1band into a 3band rgb use the following command

    gdal_translate  3323ACw_11_498_618_08_0072_PAN_RECT.tif 3323ACt_11_498_618_08_0072_PAN_RECT.tif -b 1 -b 1 -b 1  -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9"

* Doing gdal_retile.py in order to use the image pyramid plugin and after that add all the tif to the bmpyramid folder to act     as level 0

    gdal_retile.py -v -r cubic -levels 21 -ps 2048 2048 -co "TILED=YES" -pyramidOnly -targetDir bmpyramid  *.tif


    gdal_retile.py -v -r cubic -levels 21 -ps 6144 6144 -co "TILED=YES" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256"  -pyramidOnly -targetDir bmpyramid   --optfile files.txt

* Doing gdal_retile for cape town and drakenstein use(2012)
    gdal_retile.py -v -s_srs "+proj=tmerc +lat_0=0 +lon_0=19 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" -r cubic -levels 12 -ps 6144 6144 -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256" -targetDir /data/NAS/drakenstein_2013   --optfile /home/admire/drakenstein.txt

* Doing gdal_retile for NGI
    gdal_retile.py -v -s_srs "EPSG:3857" -r cubic -levels 12 -ps 6144 6144 -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256" -targetDir /data/NAS/drakenstein_2013   --optfile /home/admire/drakenstein.txt





* 15 May rsync files from local to remote server.

    rsync --dry-run  -avv -e ssh /media/SAMSUNG/Drakenstein/mrsid_1km/ admire@superman:/home/admire/drakenstein_raw
    rsync   -avv -e ssh /media/SAMSUNG/Drakenstein/mrsid_1km/ admire@superman:/home/admire/drakenstein_raw
    rsync --dry-run -avz -F ../wyk.txt .

* cloning a repository

    git clone git://github.com/AfriSpatial/topostyle.git





* connecting to server using nautilus

    sftp://servername


* Cape Town gda_retile process for 8cm imagery (2013-07-06)
    gdal_retile.py -v -s_srs "+proj=tmerc +lat_0=0 +lon_0=19 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" -r cubic -levels 20 -ps 6144 6144 -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256" -targetDir /data/CT_2012_new --optfile /home/admire/new_capetown.txt

* Cape Town gdal_retile
    gdal_retile.py -v -s_srs "+proj=tmerc +lat_0=0 +lon_0=19 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" -r cubic -levels 20 -ps 6144 6144 -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256" -pyramidOnly -targetDir /data/CT_2012_new --optfile /home/admire/new_capetown.txt

* Secure copy from local machine for a file on server to local host
    scp user@host:/path/file /localpath/file 
    scp user@host:/path/folder/* /localpath/folder

* Port Elizabethe gdal_retile process for 10cm imagery (2013-12-06)
  gdal_retile.py -v -s_srs "+proj=tmerc +lat_0=0 +lon_0=25 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" -r cubic -levels 15 -ps 6144 6144 -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256" -pyramidOnly -targetDir /data/CT_2012_new --optfile /home/admire/new_capetown.txt

* copying from local machine and storing in local
    rsync -chavzP --stats user@remote.host:/path/to/copy /path/to/local/storage

* copying from server to local machine
    rsync -chavzP --stats /path/to/copy user@host.remoted.from:/path/to/local/storage


*  Using field Calculator to edit shapefile in QGIS
    replace("Column_2",'Text2','Text1')

*  To create a symbolic link in Unix
   ln -s {target-filename} {symbolic-filename}
   example: ln -s /webroot/home/httpd/test.com/index.php /home/vivek/index.php

* creating an index shapefile use the following
   gdaltindex doq_index.shp doq/*.tif

* Updating the projection definition of Aerial Photos
  for file in `cat ethekwini.txt`;do python UpdateSRS_to_LO31.py $file;done

*  Gdal_retile for ethekwini june 2013
   gdal_retile.py -v -s_srs "+proj=tmerc +lat_0=0 +lon_0=31 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" -r cubic -levels 15 -ps 6144 6144 -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256"  -targetDir /data/CT_2012_new --optfile /home/admire/allimages.txt

*  Checking files to see if gdal can open them and then copying the ones with a segmantation error
   for file in `cat path.txt`; do gdalinfo $file || cp $file /data/temp; done

*  Printing the filename in case it did not open
   for file in `cat path.txt`; do gdalinfo $file || (echo $file && cp $file /data/temp); done

    checking for amount of space left on the system use

    df -h

* In order to compile the latest gdal to use with the latest ubuntugis

    svn checkout https://svn.osgeo.org/gdal/trunk/gdal gdal

    cd gdal
    ./configure --with-mrsid=/usr/local/Geo_DSDK-7.0.0.2167/ --with-python --with-jp2mrsid --with-ecw=/usr/local --with-mysql --with-spatialite=yes --with-sqlite=yes --with-jp2mrsid=yes --with-hdf5=/usr/local/hdf5 
    make
    sudo make install

* --unziping large files in one go

    aunpack -e * .Ace.gz

* seeding a layer using tilestache
    create a config file and run the following

    tilestache-seed.py -b 16 -35 33 -22  -c tracks.cfg -l estuaries_nsba_2004 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 --to-mbtiles=tracks4africa.mbtiles

* seeding with africa bounding box 
    tilestache-seed.py -b  37.34 -17.53  -34.8 37.3  -c /tmp/t4a.cfg -l africa 5 6 --to-mbtiles=/tmp/tracks4africa.mbtiles

    with b indicating bounding boxes, -l layer name as per tilestache config and saving them as mbtiles

* seeding a layer through tilecache, create a config file and edit the layer info then run
    sudo tilecache_seed.py  -b 1858808.7918505422,-4116600.7103797873,3662579.5496165366,-2525113.15472612  world 3 5

* 28 November 2013
 update images to see which have been processed or not

    update images_oct set done = 'true' where "index" in (SELECT a."index" FROM images_oct as a LEFT JOIN daily_progress as b ON a."index" = b."index" WHERE b."index" is not null);

* 4 December 2013 gdal_retile of ngi images
  
    gdal_retile.py -v -s_srs "EPSG:3857" -r cubic -levels 20 -ps 6144 6144 -co "TILED=YES" -co "COMPRESS=DEFLATE"  -co "PREDICTOR=2" -co "ZLEVEL=9" -co "BLOCKXSIZE=256" -co "BLOCKYSIZE=256" -pyramidOnly -targetDir /data/imagenas/ngi_2012_pyramid/ --optfile /home/admire/ngi_2012.txt 

* 9 December 2013
    gksudo nautilus

* In order to insert a line into a text file or aux file into a second line
    sed '/^bar/a this is the new line' text.txt
    where we insert into a line after bar

    use option -i to save the output



* copying from local machine to remote server using either rsync
    rsync -avvz *.TIF admire@superman:/home/admire/todo/

*  copying from local machine to remote machine using scp
   scp *.TIF admire@superman:/home/admire/todo/

* converting a spatialite database for backward compatibility

    spatialite_convert -d topo_vectors_1in50k_dd.sqlite -v 3

*  Running a patch for gdal_retile.py

    patch --verbose  gdal_retile.py /home/admire/Desktop/retile.2.diff 


* how to mount a usb drive on ubuntu
    run sudo fdisk -l to check which partions it belongs to

* sudo mount -t ntfs-3g /dev/sdg1 /mnt/ngi

* creating a soft link
       ln -s target source
  example: ln -s /home/nargren/Pictures /home/nargren/Pictures_Backup

    ln -s -t /data/work/ngi_2012 /data/nasmounttest/gaps/

* restarting postgres

    sudo service postgresql restart

* creating a database on terminal
    createdb minisass-cms
    psql -c 'CREATE EXTENSION postgis;' minisass-cms

* To check self intersecting polygon. Rule ST_intersect satifies all other ST_ so we have to avoid ST_Touches
    select DISTINCT ON (a.parcel_id) a.* from parcels a left join parcels b on st_intersects(a.the_geom,b.the_geom) WHERE a.parcel_id <> b.parcel_id AND b.parcel_id IS NOT NULL AND NOT st_touches(a.the_geom,b.the_geom)


* Loading OSM data into postgis database

    osm2pgsql -E 900913 -d myDataBase TheOsmFile.osm


*  converting an rst document to odt

    rst2odt.py remote_sensing.rst remote_sensing.odt

* converting an odt document to word

    unoconv -f doc remote_sensing.odt

* multiple line labels in QGIS

    "bearing"  ||  '\n' || '\n' || "distance" 

    "bearing"  ||'°' ||   '\n' || '\n' ||  "distance"  || 'm'

* bash script to make all leters of filenames lowercase

    for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done


* bash replace space with underscore 
    find -name "* *" -type f | rename 's/ /_/g'

* to do it in a folder first

    find -name "* *" -type d | rename 's/ /_/g'

* running a sql script from command line

    psql -d onemapxaf -a -f st_overlaps_mat.sql


* Looping a shapefile into a public shema

    for file in `ls *.shp`;do shp2pgsql -s 26331 -c -D -I -W LATIN1  $file  | psql  -d onemapxaf;done

* looping a shapefile into another schema
    for file in `ls *.shp`;do shp2pgsql -s 4326 -c -D  -I -W LATIN1 $file sg_data.${file%.*} | psql  -d dwaregister;done

* how to alter column lenght in postgresql

    ALTER TABLE sg_data.local_municipality ALTER COLUMN tag_value TYPE character varying(255);

* converting a decimal degrees to degrees,minutes and seconds whilst casting
    select trunc(bearing)::character varying||'° '||round(((bearing-(trunc(bearing)))*0.6)::numeric,2)::character varying || '"' AS bearing from beardist limit 5




*  for file in `ls *.shp`;do ogr2ogr -f PostgreSQL PG:dbname=load_test $file -sql "SELECT gid,comments,height from           ${file%.*}";done

* append features to a database and cast geometries
    for file in `ls *.shp`;do ogr2ogr -progress -append -skipfailures -a_srs "EPSG:4148" -nlt PROMOTE_TO_MULTI -f "PostgreSQL" PG:"dbname=dwaregister" $file -sql "SELECT gid,comments,tag_value,tag_just,id from ${file%.*}" -lco SCHEMA=sg_new;done


*  labelling with regular expressions

    CASE WHEN  "feat_type" in ( 'BATTLEFIELD', 'MONUMENT') and   "tag"  ~ '^[0-9]+$'  THEN  null
            when  "feat_type"  =  'CAVE' then "feat_type" 
                 
    ELSE "tag"
    END
 
* try not working

    select ST_Relate(a.geom,b.the_geom),a.geom,a.bearing,a.distance,b.parcel_id from bearing_labels as a,parcels as b where   ST_Intersects(a.geom,b.the_geom) = 'T' 


* How to specify a cluster on a terminal if it doesn't show up
    export PGCLUSTER=9.3/main


* installing a virtualenv on ubuntu 14.04
    sudo pip install virtualenv
    mkdir sphinx
    virtualenv sphinx
    source sphinx/bin/activate
    deactivate to get out of the environment



* restore a database using postgis_restore.pl

    /usr/share/postgresql/9.3/contrib/postgis-2.1/postgis_restore.pl t4a_dump_24Apr14.dump | psql t4a


* loading a raster into spatialite
    rasterlite_load -d truemarble.sqlite -T TrueMarble -D . -v

    and changing other parameters(load a png with lossless compression)
    rasterlite_load -d truemarble.sqlite -T TrueMarble -D . -i png

* perform the following before using the raster in spatialite
    rasterlite_pyramid -d truemarble.sqlite -T TrueMarble -v

* then 

    rasterlite_topmost -d truemarble.sqlite -T TrueMarble -v

* loading csv file into mysql

    mysqlimport --ignore-lines=1 --fields-terminated-by=, --local -u admire -p citysolve /tmp/uid27_cadastre.csv


* loading postgis layer into mysql
    use copy to export table into csv but with geom as ST_AStext(geom)

    in the mysql create a table with a column to hold the ST_AStext(geom) and then run

    UPDATE uid29_cadastre SET geom = GeomFromText(wkt, SRID)

    create mysql table without geom column and after adding csv file add
    alter table uid29_cadastre add column geom multipolygon;


* import csv file in mysql. table name has to be the same as  name of csv file
    mysqlimport --ignore-lines=1 --fields-terminated-by=, --local -u admire -h localhost -p citysolve /tmp/csv/uid29_cadastre.csv 

    ogr2ogr -f MySQL MySQL:database_name,host=localhost,user=root,password=1234 C:\route_path\line.shp -nln datatable_name -update -overwrite -lco engine=MYISAM

    ogr2ogr -f "MySQL" MySQL:"dbName,user=root,host=localhost,password=pass" -lco engine=MYISAM "C:\path\to\shapefile.shp" -nlt "geometry"

* generating ssh keys
    ssh-keygen -t rsa -C "admire@afrispatial.co.za"

* loading data from osm into spatialite
    ogr2ogr -f "SQLite" -dsco SPATIALITE=YES osm.sqlite africa-latest.osm.pbf 


    including -spat allows you to a extract an area

* creating a mysql foreign data wrapper for postgres(check path of mysql and postgres)

    export PATH=/usr/lib/postgresql/9.3/bin/:/usr/bin/mysql:$PATH make USE_PGXS=1 
    sudo PATH=/usr/lib/postgresql/9.3/bin/:/usr/bin/mysql:$PATH make USE_PGXS=1 install


* ogr convesion from mysql to postgresql
    ogr2ogr -f PostgreSQL PG:"dbname=city_solve port=5433 user=admire password=sam1982" MYSQL:"citysolve_geodata,host=197.189.200.155,user=geouser,password=qHPF7myqYM4YBbYD,port=3306" -lco OVERWRITE=yes -lco SCHEMA=public zonestyles

* droping fdw and extension
    drop server mysql_fwd cascade; Drop extension mysql_fdw cascade;

* installing binaries for ecw before compiling
    wget http://meuk.technokrat.nl/libecwj2-3.3-2006-09-06.zip
    unzip ~/Downloads/libecwj2-3.3.2006-09-06.zip
    cd ~/Downloadslibecwj2-3.3.2006-09-06
    ./configure
    make # wait
    make install # or sudo make install
    sudo gdal-ecw-build /usr/local
    sudo ldconfig
    gdalinfo --formats | grep -i ecw

* grant web read to geoserver
    grant usage on schema project to web_read;

*  how to merge conflicts in git
    git fetch origin
    git pull origin master

    git add filename.c
    git commit -m "made some wild and crazy changes"
    git pull origin master

* renaming part of a filename using sed
    for f in `ls *`; do mv $f $(echo $f | sed 's/^backup_level0/0/g'); done
    for f in 3117_AD*; do mv $f $(echo $f | sed 's/^250\ 000\ Map\ index/250_Map_index/g'); done
    250\ 000\ Map\ index

* running watchdog script
    python /home/admire/src/directory_watcher/watch_directory.py  -w -i -r /data/projects/KirchhoffDWA/lan_dwa/SurveyDiagrams -d dwaregister -u admire -p sam1982 -o 5432 -s project -t directory_progress -l 127.0.0.1 

* removing old docker containers based on days. hours or weeks

    docker ps -a | grep 'weeks ago' | awk '{print $1}' | xargs docker rm

* remove all untagged images
    sudo docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi

--Loading shapefiles and updating features use

* before appending do the following
    export  PGCLIENTENCODING=LATIN1
    for file in `ls *.shp`;do ogr2ogr -progress -append -skipfailures -a_srs "EPSG:4148" -nlt MULTIPOLYGON -f "PostgreSQL" PG:"dbname=dwaregister active_schema=sg_new " $file  -sql "SELECT  gid,comments,tag_value,tag_just,id from ${file%.*}";done

* updating features

    ffor table in `cat sg_new.txt`;do psql dwaregister -c "update $table set year='september_2014'";done 

    for file in `ls *.shp`;do ogr2ogr -progress -append -skipfailures -a_srs "EPSG:4148" -nlt MULTIPOLYGON -f "PostgreSQL" PG:"dbname=dwaregister active_schema=sg_new " $file  -sql "SELECT  gid,comments,tag_value,tag_just,id from ${file%.*}";done

    for file in `ls *.shp`;do ogr2ogr -progress -append -skipfailures -a_srs "EPSG:4148" -nlt MULTILINESTRING -f "PostgreSQL" PG:"dbname=dwaregister active_schema=sg_new " $file  -sql "SELECT  gid,comments,tag_value,tag_just from ${file%.*}";done

    for file in `ls *.shp`;do ogr2ogr -progress -append -skipfailures -a_srs "EPSG:4148"  -f "PostgreSQL" PG:"dbname=dwaregister active_schema=sg_new " $file  -sql "SELECT  gid,comments,tag_value,tag_just from ${file%.*}";done

* running schema spy on a postgres schema

    java -jar schemaSpy.jar -t pgsql -o cccs_schema -host localhost -db cccss -u admire -p sam1982 -dp postgresql-9.3-1102.jdbc4.jar -all

* wfs filter

    http://localhost:8080/geoserver/wfs?request=getfeature&version=1.0.0&service=wfs&styles=&width=512&height=358&srs=EPSG:26713&TYPENAME=sf:roads&filter=<Filter xmlns="http://www.opengis.net/ogc"><PropertyIsEqualTo><PropertyName>cat</PropertyName><Literal>5</Literal></PropertyIsEqualTo></Filter>

* move subfolder contents to base of folder
    find . -mindepth 2 -type f -print -exec mv {} . \;

*   download youtube videos

    youtube-dl http://VIDEO_URL


* or using a shell script for a vimeo video

    ./vimeo_downloader.sh http://vimeo.com/1084537


* running mapnik xml file using liteserv.py 

    liteserv.py -p 8000 /home/admire/src/webmapping/mapnik/t4a.xml

* unzipping using tar

    tar -xvzf community_images.tar.gz

    gdalwarp -cutline /home/admire/Documents/workingfiles/mbtiles/buffer.shp /home/admire/Documents/workingfiles/mbtiles/BotsFront.png /tmp/png_bots.tif


* update geom srid

    for table in `cat sg_tables`; do psql -d sg -c "select updategeometrysrid('$table','wkb_geometry','4148')"; done


* geogig load

    geogig pg export  --database t4a_geogig --user admire --password babyrasta l_roads l_roads

*   list all tables to a repo to a textfile and export as
    for table in `cat /tmp/table.txt`;do geogig pg export  --database t4a_geogig --user admire --password babyrasta $table $table;done

    geogig shp import snapshot1/parks.shp
    geogig add
    geogig commit -m "initial test commit"

*   export a shapefile from geogig
    geogig ls to view names in geogig

    geogig shp export points /tmp/points.shp


*   geogig shp export c04d0a968696744bdc32bf865f9675a2e55bf447:parks parks.shp

* geogig clone
    geogig clone http://172.17.0.24:8182:8080 /tmp/touch/new_repos

    geogig clone http://172.17.0.51:8182 /tmp/touch/new_srepos


* cloning geogig repo

    Running the following in GeoGig/src/web/app/

    mvn jetty:run -Djetty.port=8182  -f pom.xml -Dorg.geogig.web.repository=/GeoGigRepo

    geogig clone http://localhost:8081/geogig /tmp/gisdata-repo-clones

* running a bash script or python script as a init. copy geogig_serve file in onemap_notes to /etc/init.d/
    chmod 755 geogig_serve
    update-rc.d geogig_serve defaults
    then run service geogig_serve start

* encrypt a zip file

    zip --encrypt file.zip files

* to manage docker containers with supervisor edit the file /etc/default/docker
     The command below stops docker from auto-restarting containers that failed to restart. we will let supervisor do that
    DOCKER_OPTS="-r=false $DOCKER_OPTS"
    then proceed to enter the configuration file in supervisor
    ```
    [program:geogig_private]
    command=/usr/bin/docker run --name="cccs_private" -a stdout -a stderr --rm="true" -p 38080:8182 -i -t kartoza/geogig
    autostart=true
    autorestart=true
    startsecs=5
    startretries=3
    ```

* starting scapetoad 

    java -Xmx512m -jar /home/admire/src/compile_programs/ScapeToad/src/jars/ScapeToad.jar

* make passwords

    sudo apt-get install makepasswd

    makepasswd --chars 15

* make 10 diff passwords with 15 characters

    makepasswd --chars 15 -count 10

* starting a second  dropbox account

    mkdir "$HOME"/.dropbox-alt 
    HOME="$HOME/.dropbox-alt"
    /usr/bin/dropbox start -i




* Map proxy setup

    move to /home/virtual/env
    mkdir mapproxy
    virtualenv mapproxy
    cd mapproxy
    source/bin/activate
    sudo aptitude install python-imaging python-yaml libproj0
    sudo easy_install MapProxy
    mapproxy-util create -t base-config mymapproxy to create a test example
    mapproxy-util serve-develop -b 127.0.0.1:8700 mapproxy.yaml

* Automaticall install using apt

    sudo apt-get install --assume-yes

* importing all postgres tables into grass

    for table in `cat /tmp/all.txt`;do db.in.ogr --verbose dsn=PG:host=localhost dbname=ngi_2014 user=admire port=5432 db_table=$table output=$table key=id;done

* dump a table with all users and permisions
    pg_dumpall --global-only

* sql to dump do staff
    for table in `cat all.txt`;do psql -d ngi2014 -U admire -w -c  "update $table set geom =ST_MakeValid(geom)";done

    for table in `cat /tmp/table.txt`;do psql ngi_backup -p 5433 -c "update $table set geom=ST_MakeValid(geom) where ST_isValid(geom) = 'F'";done 

* check to see process running on a port

    netstat -ap | grep :8080

    then kill the process


* find all files with a pattern ubuntu
    find . -type f -name "*.TIF"  |wc -l

* convert from avi mp4 to other formats
    ffmpeg -i filename.mp4 -vcodec mpeg4 -acodec ac3 -ar 48000 -ab 192k output.avi

    for file in `ls *.mp4`;do ffmpeg -i $file -qscale 0 -vcodec mpeg4 -acodec ac3 ../other/${file%.*}.avi && mv $file ../;done

* convert mp4 to mp3
    for file in `ls *.mp4`;do ffmpeg -i $file -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000  ${file%.*}.mp3;done

* search for a file using grep

    grep -rl "service" .

* input file in grass
    for file in `ls *.tif`;do r.in.gdal $file  out=${file%.*};done

* creating thumb nails
    for file in `ls *.png`;do convert -thum bnail x140 $file ${file%.*}_thumbnail.png;done

    convert from any format to geojason

    ogr2ogr -f "GeoJSON" /tmp/world.json test.shp 


* working geoserver getlegend for 1 rule
    http://bovey/geoserver/hta/wms?VERSION=1.1.0&REQUEST=GetLegendGraphic&LAYER=hta:monument_point&STYLE=monument_point&RULE=Medieval&WIDTH=80&HEIGHT=80&FORMAT=image/png&SERVICE=WMS&TRANSPARENT=true&legend_options=dpi:180;forcelabels:on;

    http://bovey/geoserver/hta/wms?request=GetLegendGraphic&layer=hta:monument_point&format=image/png&rule=medieval&legend_options=dpi:180;&TRANSPARENT=true 

    http://bovey/geoserver/hta/wms?request=GetLegendGraphic&layer=hta:monument_point&format=image/png&SCALE=%2010000&rule=medieval&legend_options=dpi:180;forcelabels:on;&TRANSPARENT=true

* working localhost
    http://localhost:8080/geoserver/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&scale=15000&WIDTH=20&HEIGHT=20&LAYER=topp:states&&TRANSPARENT=true&legend_options=fontName:Times%20New%20Roman;fontAntiAliasing:true;fontColor:0x000033;fontSize:14;bgColor:0xFFFFEE;dpi:180

*  select column excluding one value postgres
    SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS as c
    WHERE TABLE_NAME = 'rooidoplui_week_11' and c.column_name NOT IN('geom') 

* convert degrees minutes,seconds to decimal degree
    25°58'51.64"S

    do this
    25° + 28'/60 + 51.64"/3600

* disable touchpad
    synclient TouchpadOff=1

* enable touchpad
    synclient TouchpadOff=0

* Split large pdf into many one-page files:

    pdftk largepdfile.pdf burst

* Merge files into one PDF file:

    pdftk *.pdf cat output onelargepdfile.pdf

* search for files ubuntu
    find . -type f -name "abc*"

* using gdal within pyQGIS

    sourcefile =  "/home/admire/src/kartoza_work/AgriTechnovation/work/PPM/rooidopluis_32735.tif"
    output= "/tmp/outer.tif"    
    cmd = 'gdal_translate -b 1 -of GTiff  %s   %s' % (sourcefile,output)
    print cmd
    os.system(cmd)

* Landsat 8 download

    landsat search --lat -34.002  --lon 20.463  -s "Jun 10 2013" -e "Sep 20 2015"


* rsync with continue

    rsync --partial --progress --rsh=ssh local_file user@host:remote_file

    rsync --partial --progress --rsh=ssh admire@Kirchhoff:*.dump .


* install qgis client
    QGISPROJECTSDIR: /home/admire/QGIS_projects
    QGISURL: client.localhost



    select count(*) from matview.places;

* in terminal type crontab -e
    45 10 * * * /bin/bash /tmp/one.sh which means the script will run daily at 10:45pm



* Mapserver viewer on browser

    http://localhost:8182/cgi-bin/mapserv?mode=browse&template=openlayers&layer=us&map=/maps/test.map

    or

    http://localhost/cgi-bin/mapserv? mode=browse& template=openlayers& layers=all& map=/var/www/workshop/itasca.map

* running docker qgis desktop modification
    Exec=gnome-terminal -e /usr/local/bin/run-qgis-2.10-in-docker.sh %U

* postgres database in recovery mode

    sudo su postgres
    launch the backend 
    /usr/lib/postgresql/9.3/bin/postgres --single -P -d 1 -c config_file=/etc/postgresql/9.3/main/postgresql.conf dwaregister
    vacuum full anaylze

* example using case
    with tt as ( select greatest(value) as X1 , (greatest(value) -  (case when least(value) < 0 THEN 0 ELSE least(value) END )) as range_min OVER (ORDER BY id)  from ppm_surfaces limit 3)
    select * from tt limit 3;

* drop tables in schema

    psql -h localhost -p 5432 -U admire -d ngi -t -c "select 'drop table \"' || tablename || '\" cascade;' from pg_tables where schemaname='public'" | psql -h localhost -p 5432 -U admire -d ngi

* delete all folders leaving files active
    find -mindepth 1 -maxdepth 1 -type d -exec rm -r {} \;

* rename last character of string if it is underscore
    for file in * ;do echo $file;if [[  "$file" != "${file%_}" ]];then mv "$file" "${file%_}"; fi done


* wget continue after internet has gone down

    wget -c -t 0 --timeout=60 --waitretry=60 URL_of_file

* ssh errors timeout connections
    check logfile on  /var/log/auth.log

* commit to remote git repo
    git clone git@github.com:kartoza/AgriTechnovation.git
    cd AgriTechnovation
    git remote add gis git@github.com:NyakudyaA/AgriTechnovation.git
    git commit -a -m "bla bla bla"
    git push gis develop

* Dump database in docker container
    docker exec -ti agritechnovation-db /bin/bash -c "pg_dump -Fc -f /tmp/latest.dmp -h localhost -U docker gis"

* copy file from docker database to host

    docker cp agritechnovation-db:/tmp/latest.dmp .

* test if mapserver mapfile works

    shp2img -m 1.map -o myimage.png -all_debug 5




* linking docker containers
    docker run -d --volumes-from mapserving -v `pwd`/new:/data/h5_data --name mapgen kartoza/generator
    docker stop mapgen && docker rm mapgen && ./build.sh && docker run -d --volumes-from mapserving -v `pwd`/new:/data/h5_data --name mapgen kartoza/generator && docker exec -i -t mapgen bin/bash





* used to create a symbol in qgis with no borders
    ```
    symbol = QgsFillSymbolV2.createSimple(
    {QString('style'): QString('solid'), QString('color'): QString('255,0,0,255'),
    QString('style_border'): QString('no')})
    renderer.setSymbol(symbol)
    polygon_properties = {'color_border': color, 'style': 'yes', 'style_border': 'solid'}
    ```
* Adding a raster layer into geoserver programmatically

* create a geotiff coverage store

 curl -u admin:babyrasta -v -XPOST -H 'Content-Type: application/xml' -d '<coverageStore><name>int_dec</name><workspace>geonode</workspace> <enabled>true</enabled><type>GeoTIFF</type></coverageStore>' http://127.0.0.1:8080/geoserver/rest/workspaces/geonode/coveragestores


* upload the file into coverage store

    curl -u admin:babyrasta -v -XPUT -H 'Content-type: text/plain' -d 'file:/geonode/geoserver/data/data/geonode/eritrea/ERI10v3.tif' http://127.0.0.1:8080/geoserver/rest/workspaces/geonode/coveragestores/int_dec/external.geotiff?configure=first\&coverageName=int_dec


* move folders at specific time intervals bash
 while read p; do mv $p /raw/ ; sleep 6100;done <dir_move.txt


Find users belonging to a group

* getent group docker | awk -F: '{print $4}'


* Download pdf and ingest into spatialite
  ogr2ogr -f SQLite output.sqlite tanzania-latest.osm.pbf -progress -dsco SPATIALITE=YES -gt 65536 --config OSM_CONFIG_FILE ./osmconf.ini -lco SPATIAL_INDEX=NO
  ogr2ogr -f SQLite db.sqlite tanzania-latest.osm.pbf -progress -dsco SPATIALITE=YES -gt 65536 --config OSM_CONFIG_FILE ./osmconf.ini -lco SPATIAL_INDEX=NO


  Download osmconf.ini from gdal api and put in the currect folder.

* Add shapefiles to geopackage

  ogr2ogr -f GPKG /tmp/test.gpkg /tmp/epsg4326/


* adding a raster into geopackage

  gdal_translate -of GPKG byte.tif byte.gpkg -co TILING_SCHEME=GoogleMapsCompatible

  add to existing geopackage
  gdal_translate -of GPKG new.tif existing.gpkg -co APPEND_SUBDATASET=YES -co RASTER_TABLE=new_table


* install opendbcopy
java -jar  /tmp/opendbcopy-0.51rc2-install.jar 


* Enable nano in docker
  export TERM=xterm

* Download landsat imagery using landsat util
  docker run -it -v ~/landsat:/root/landsat developmentseed/landsat-util:latest landsat search --cloud 4 --start "january 1 2014" --end "january 10 2014" -p 009,045
  docker run -it -v ~/landsat:/root/landsat developmentseed/landsat-util:latest landsat download LC80090452014008LGN00 --bands 432
  landsat search --lat 38.9004204 --lon -77.0237117


  landsat search --download --imageprocess --pansharpen  --cloud 4 --start "january 1 2014" --end "january 10 2014" pr 009 045

* setup tomcat for geoserver
edit /etc/default/tomcat7
JAVA_OPTS="-Djava.awt.headless=true -server -Xrs -XX:PerfDataSamplingInterval=500 -Xmx16G -Xms16G -XX:SoftRefLRUPolicyMSPerMB=36000 -XX:MaxPermSize=512m -XX:+UseParallelGC -XX:NewRatio=2"

---using gdal within pyQGIS

sourcefile =  "/home/admire/src/kartoza_work/AgriTechnovation/work/PPM/rooidopluis_32735.tif"
output= "/tmp/outer.tif"    
cmd = 'gdal_translate -b 1 -of GTiff  %s   %s' % (sourcefile,output)
print cmd
os.system(cmd)

--Landsat 8 download

landsat search --lat -34.002  --lon 20.463  -s "Jun 10 2013" -e "Sep 20 2015"


--rsync with continue

rsync --partial --progress --rsh=ssh local_file user@host:remote_file

rsync --partial --progress --rsh=ssh admire@Kirchhoff:*.dump .


--install qgis client
QGISPROJECTSDIR: /home/admire/QGIS_projects
QGISURL: client.localhost

--increasing speed of fdw

BEGIN;
SET LOCAL constraint_exclusion TO 'on';
SELECT * FROM mogalakwena.uid1_zoning;
END;

--combining foreign tables with mat views
CREATE Materialized VIEW mogalakwena.uid1_zonings AS 
 WITH zoning AS (
         SELECT a.geom,
            a.sg21,
            b.zone,
            b.user_account_id
           FROM mogalakwena.cadastre a
             JOIN stand_usezones b ON a.sg21::text = b.sg21::text
          WHERE b.user_account_id = 1
        )
 SELECT zoning.sg21,
    zoning.zone,
    d.rgb,
    zoning.geom
   FROM zoning
     LEFT JOIN zonestyles d ON d.usezone_name::text = zoning.zone::text;
   
 create index on mogalakwena.uid1_zonings using GIST(geom);
 REFRESH MATERIALIZED VIEW  mogalakwena.uid1_zonings;
 
 ALTER TABLE mogalakwena.uid1_zonings
  OWNER TO admire;
GRANT ALL ON TABLE mogalakwena.uid1_zonings TO admire;
GRANT SELECT ON TABLE mogalakwena.uid1_zonings TO web;

Refreshing needs to be done manually so either use a crontab

--Refreshing materialised view
create Materialized VIEW matview.places as 
select i.geometry, n.* from matview.index1in10k AS i INNER JOIN matview.images as  n ON i."tile_name" = n."tilename";

CREATE OR REPLACE FUNCTION trig_refresh_places() RETURNS trigger AS
$$
BEGIN
    REFRESH MATERIALIZED VIEW matview.places;
    RETURN NULL;
END;
$$
LANGUAGE plpgsql ;


CREATE TRIGGER trig_01_refresh_places AFTER TRUNCATE OR INSERT OR UPDATE OR DELETE
   ON matview.images FOR EACH STATEMENT
   EXECUTE PROCEDURE trig_refresh_places();

CREATE TRIGGER trig_01_refresh_places AFTER TRUNCATE OR INSERT OR UPDATE OR DELETE
   ON matview.index1in10k FOR EACH STATEMENT
   EXECUTE PROCEDURE trig_refresh_places();

select count(*) from matview.places;

in terminal type crontab -e
45 10 * * * /bin/bash /tmp/one.sh which means the script will run daily at 10:45pm

--added remote called gis-work in agritech repo
so workflow is now. pull origin develop
commit work and push to gis-work develop

--Mapserver viewer on browser

http://localhost:8182/cgi-bin/mapserv?mode=browse&template=openlayers&layer=us&map=/maps/test.map

or

http://localhost/cgi-bin/mapserv? mode=browse& template=openlayers& layers=all& map=/var/www/workshop/itasca.map

--running docker qgis desktop modification
Exec=gnome-terminal -e /usr/local/bin/run-qgis-2.10-in-docker.sh %U

--postgres database in recovery mode

sudo su postgres
--launch the backend 
/usr/lib/postgresql/9.3/bin/postgres --single -P -d 1 -c config_file=/etc/postgresql/9.3/main/postgresql.conf dwaregister
vacuum full anaylze

--example using case
with tt as ( select greatest(value) as X1 , (greatest(value) -  (case when least(value) < 0 THEN 0 ELSE least(value) END )) as range_min OVER (ORDER BY id)  from ppm_surfaces limit 3)
select * from tt limit 3;

--drop tables in schema

psql -h localhost -p 5432 -U admire -d ngi -t -c "select 'drop table \"' || tablename || '\" cascade;' from pg_tables where schemaname='public'" | psql -h localhost -p 5432 -U admire -d ngi

--delete all folders leaving files active
find -mindepth 1 -maxdepth 1 -type d -exec rm -r {} \;

--rename last character of string if it is underscore
for file in * ;do echo $file;if [[  "$file" != "${file%_}" ]];then mv "$file" "${file%_}"; fi done


--wget continue after internet has gone down

wget -c -t 0 --timeout=60 --waitretry=60 URL_of_file

--ssh errors timeout connections
check logfile on  /var/log/auth.log

--commit to remote git repo
git clone git@github.com:kartoza/AgriTechnovation.git
cd AgriTechnovation
git remote add gis git@github.com:NyakudyaA/AgriTechnovation.git
git commit -a -m "bla bla bla"
git push gis develop

--Dump database in docker container
docker exec -ti agritechnovation-db /bin/bash -c "pg_dump -Fc -f /tmp/latest.dmp -h localhost -U docker gis"

--copy file from docker database to host

 docker cp agritechnovation-db:/tmp/latest.dmp .

 --test if mapserver mapfile works

 shp2img -m 1.map -o myimage.png -all_debug 5


--procedure postgresql
CREATE or replace function sp_createuser(p_name character varying(20),p_username character varying(20), p_password character varying(20))
Returns text as $$
BEGIN
    if ( select exists (select 1 from tbl_user where user_username = p_username) ) THEN
     
        Return 'Username Exists !!';
     
    ELSE
     
        insert into tbl_user
        (
            user_name,
            user_username,
            user_password
        )
        values
        (
            p_name,
            p_username,
            p_password
        );
     
    END IF;
END$$ LANGUAGE plpgsql

-linking docker containers
docker run -d --volumes-from mapserving -v `pwd`/new:/data/h5_data --name mapgen kartoza/generator
docker stop mapgen && docker rm mapgen && ./build.sh && docker run -d --volumes-from mapserving -v `pwd`/new:/data/h5_data --name mapgen kartoza/generator && docker exec -i -t mapgen bin/bash


--Deleting duplicates
DELETE FROM public.new_blocks
WHERE geom IN (SELECT geom
              FROM (SELECT geom,
                             row_number() over (partition BY property_i ORDER BY property_i) AS rnum
                     FROM public.new_blocks) t
              WHERE t.rnum > 1);

#creating a buffer
create table ples as 
with big as (
select gid,st_multi(st_transform(st_buffer(b.geom,200),32738)) as the_geom from re14_073_reseau_routier as b )
select a.id,a.geom  from big as c,bf_cua_2007 as a where St_Intersects(a.geom,c.the_geom) = 't'

--convert osm pbf to spatialite
ogr2ogr -f SQLite output.sqlite south-africa-and-lesotho-latest.osm.pbf -progress -dsco SPATIALITE=YES -gt 65536 --config OSM_CONFIG_FILE ./osmconf.ini -lco SPATIAL_INDEX=YES

--error mounting windows partition
sudo ntfsfix /dev/sda6
















 





  

















