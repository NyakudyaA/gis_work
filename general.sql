#modifying index10.tile_name to match 1st 9 chars of image names 

update missing_images 
set tile_name = 
(CASE WHEN length(tile_name)=7 THEN
substr(tile_name,1,6)||'_'||'0'||substr(tile_name,7,1) 
WHEN length(tile_name)=8 THEN
substr(tile_name,1,6)||'_'||substr(tile_name, 7,2) 
END)

#Doing a catalogue on the images to visualy see them

  select i.geom, n.* from index10 AS i INNER JOIN images_oct as  n ON i."tile_name" = n."tilename";

#(1map process)in grid where there are dups, which one is the most recent?

--which grids have rgb and pan? in which case generate list to delete pans.

--which grids don't have anything? i.e. which ones need to be targetted for processing.

select TILE_NAME from index1in10 i left join (
select distinct id from (
select id from ngi_catalog_aug2012
union
select id from ngi_catalog_old_images30kmkv
union
) a) b
on i.TILE_NAME = b.id
where b.id is null

#duplicates in the aug2012 images

select "index",path from ngi_catalog_aug2012 where "index" in 
(SELECT "index"
 FROM ngi_catalog_aug2012
GROUP BY "index"
HAVING ( COUNT("index") > 1 )
) order by "index"


#pans to delete, that match newimagery, after dups deleted
select a.path from 
(select distinct on (id) * from ngi_catalog_old_images) a
INNER JOIN 
(select distinct on (id) * from ngi_catalog_aug2012) b
using (grid)
	
#Assuming no nulls, you GROUP BY the unique columns, and SELECT the MIN (or MAX) RowId as the row to keep. Then, just delete everything that didn't have a row id:

DELETE MyTable 
FROM MyTable
LEFT OUTER JOIN (
   SELECT MIN(RowId) as RowId, Col1, Col2, Col3 
   FROM MyTable 
   GROUP BY Col1, Col2, Col3
) as KeepRows ON
   MyTable.RowId = KeepRows.RowId
WHERE
   KeepRows.RowId IS NUL

#to do ls and pipe it to a text editor ls>files.txt

>>this query tells us which files were NOT processed. Change to IS NOT NULL to show which files WERE processed.(1map 2013)
update ngi_aerial_aug2012 set done = 'true' where filename in
(SELECT a.filename
FROM ngi_aerial_aug2012 as a
LEFT JOIN '0' as b
ON a.filename = b.location
WHERE b.location is not null)



#secondly use the 
update table set areas=area to pupulate the new column with old values

#also do the following
UPDATE ngi_catalog_aug2012 set tilenumber =  substr("index",1,9) which populates the values from old field to new field


#updating the table to remove the _ from the column
select distinct replace (tilenumber,'_', '') from ngi_catalog_aug2012 will remove the _ from the column


#updating a table

update ngi_catalog_aug2012 set tilenumber =   replace (tilenumber,'_', '')

#performing a join to the table and the index file

select i.geom, n.* from index10 AS i INNER JOIN images_oct as  n ON i."tile_name" = n."tilename";

#changing the path of files in a database

UPDATE ngi_catalog_aug2012 SET path = replace( path, '/data/', '/data/NAS/' ) WHERE path LIKE '/data/%';

#dropping tables using pgadmin

select 'drop table "' || tablename || '" cascade;' from pg_tables;

select 'drop table if exists "' || tablename || '" cascade;' from pg_tables;

#deleting duplicates based on the min row

delete   from images_30k_sid
where    path not in
         (select  min(path)
         from    images_30k_sid
         group by
                 "index")


select *from db1.SomeTable a
 inner join 
 db2.SomeTable b on b.SomeColumn = a.SomeColumn;

#1 march 2013.this query tells us which files were NOT processed. Change to IS NOT NULL to show which files WERE processed.

update ngi_aerial_aug2012 set done = 'true' where filename in
(SELECT a.filename
FROM ngi_aerial_aug2012 as a
LEFT JOIN '0' as b
ON a.filename = b.location
WHERE b.location is not null)

#creating an index using postgis

CREATE INDEX idx_railwayline_the_geom_gist
   ON railwayline USING gist (the_geom);

#copying values from one database table into another
INSERT INTO Destination SELECT * FROM Source;

#We can add additional columns using standard ALTER TABLE command as we do in this next example where we add a 3-D linestring
ALTER TABLE roads ADD COLUMN geom2 geometry (LINESTRINGZ,4326);

CREATE TABLE ROADS(ID int4,ROAD_NAME varchar(25),geom geometry(LINESTRING,4326) );

SELECT AddGeometryColumn( ’roads’, ’geom’, 423, ’LINESTRING’, 2)

#creating a view and casting it
CREATE VIEW public. vwmytablemercator AS SELECT gid,ST_Transform(geom,3395)::geometry(Geometry, 3395)
As geom,f_name FROM public.mytable;

#checking if the polygon has valid geometries
ALTER TABLE mytable ADD CONSTRAINT geometry_valid_check CHECK(ST_IsValid(the_geom));

#loading data from a text file sql into postgis
psql -d[database] -f roads.sql

#creating index on pg_table
CREATE INDEX[indexname] ON[tablename]USING GIST( [geometryfield] );

#checking to see if the geom is valid
SELECT gid, st_isvalidreason(geom), st_summary(geom) FROM landusearea WHERE st_isclosed(geom) is FALSE;

#postgis updating
update data_entry set geom = ST_SetSRID (ST_MakePoint(longitude,latitude),4326);

#creating a function to use in a trigger in postgis

CREATE FUNCTION upgrade() RETURNS TRIGGER AS $upgrade$
BEGIN
IF NEW.geom IS NULL THEN
   update daily_work set NEW.geom = ST_SetSRID (ST_MakePoint(longitude,latitude),4326);
END IF;
RETURN NEW;
END;
$upgrade$ LANGUAGE plpgsql;

#creating a trigger in postgis
 create trigger upgrade after insert on daily_work
for each row execute procedure upgrade();

postgres query using the above sql

SELECT b.*,c.plan_no,trunc(c.bearing)::character varying||'° '||round(((c.bearing-(trunc(c.bearing)))*0.6)::numeric,2)::character varying||'m' || '"' AS bearing 
,c.distance FROM
(SELECT a.id,ST_makeline(a.the_geom) AS geom from
(SELECT bd.*,b.the_geom FROM
(select id,beacon_from AS beacon,1 as orderby from beardist
UNION
select id,beacon_to AS beacon,2 as orderby from beardist) bd INNER JOIN beacons b USING (beacon)
ORDER BY bd.orderby
) a
GROUP BY a.id) b
INNER JOIN beardist c
USING (id) 

#copying from a csv file into postgres and exporting a postgres table into csv
COPY zonestyles FROM '/tmp/test.csv' WITH (
   FORMAT csv,
   HEADER true
   );

COPY products_273 TO '/tmp/products_199.csv' DELIMITER ',' CSV HEADER;

---creating a sudo postgres user
createuser -s -d -r -l -P -E admire

--heritage sql for joining monuments to points

create or replace view monu_photo_meta as 
select a.geom,a.monuid,a.recordtype,a.name,a.montype,a.summary,
a.period,a.validation,a.id,a.broad_period,
b.monument_id, b.photo_id from monument_point as a
join photos_monuments as b on 
a.id = b.monument_id 
where b.monument_id is not null

-- trails photos

select  a.ogc_fid serial ,a.trailname,a.description,a.length_km,a.notes,a.status,a.user_id,a.creation_date,
b.* from trails as a
join photos_trails as b on 
a.ogc_fid = b.trail_id 
where b.trail_id is not null and  a.status in ('pending')


--creating heritage monuments view that is distinct
create or replace monuments_point_photos view as
with new_view as (
 SELECT distinct g.wkb_geometry AS geom,
    m.monuid,
    m.recordtype,
    m.name,
    m.montype,
    m.summary,
    m.period,
    m.validation,
    m.id,
    m.broad_period
   FROM monument_point_geom g
     JOIN monuments m USING (monuid)
)
 select a.geom,a.monuid,a.recordtype,a.name,a.montype,a.summary,
 a.period,a.validation,a.id,a.broad_period,
 b.monument_id, b.photo_id from new_view as a
 join photos_monuments as b on 
 a.id = b.monument_id 
 where b.monument_id is not null;


--checking duplicates in hta
select "monuid" from monument_point where "monuid" in 
(SELECT "monuid"
 FROM monument_point
GROUP BY "monuid"
HAVING ( COUNT("monuid") > 1 )
) order by "monuid"



--grant status for hta_officer

grant update ( trailname, description, notes,status,wkb_geometry ) on trails to approval

grant select on trails_photos_view to approval;

grant select on monuments_point_photos to approval;

--update kirchoff sql
UPDATE project.parcel_description
SET registered_owner = NULL
WHERE id IN
	(SELECT DISTINCT	d.id FROM
	(SELECT pd.id 
		FROM project.parcel_description pd 
		INNER JOIN
		project.dam_prop_link dpl 
		ON dpl.sgcode = pd.lpi_code
	UNION
	SELECT pd.id
		FROM  project.parcel_description pd 
		INNER JOIN
		(SELECT ps.id FROM
			(SELECT geom FROM schemes.canal_section where ST_IsValid(geom) = 'T'
			UNION 
			SELECT geom FROM schemes.canal_syphon_large where ST_IsValid(geom) = 'T'
			UNION 
			SELECT geom FROM schemes.pipeline_section where ST_IsValid(geom) = 'T' ) dpl
	  JOIN project.parcels_sgcopy ps ON
	  ST_Intersects(ps.geom, dpl.geom) where ST_IsValid(ps.geom) = 'T') a
  ON a.id = pd.lpi_code
    ) d)
	AND
	registered_owner = 'do not need';    


UPDATE project.parcel_description
SET registered_owner = 'do not need'
WHERE id  NOT IN

(SELECT DISTINCT	d.id FROM
	(SELECT pd.id 
		FROM project.parcel_description pd 
		INNER JOIN
		project.dam_prop_link dpl 
		ON dpl.sgcode = pd.lpi_code
	UNION
	SELECT pd.id
		FROM  project.parcel_description pd 
		INNER JOIN
		(SELECT ps.id FROM
			(SELECT geom FROM schemes.canal_section where ST_IsValid(geom) = 'T'
			UNION 
			SELECT geom FROM schemes.canal_syphon_large where ST_IsValid(geom) = 'T'
			UNION 
			SELECT geom FROM schemes.pipeline_section where ST_IsValid(geom) = 'T') dpl
	  JOIN project.parcels_sgcopy ps ON
	  ST_Intersects(ps.geom, dpl.geom) where ST_IsValid(ps.geom) = 'T') a
  ON a.id = pd.lpi_code
    ) d)
	AND
	registered_owner IS NULL; 

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

--Deleting duplicates
DELETE FROM public.new_blocks
WHERE geom IN (SELECT geom
              FROM (SELECT geom,
                             row_number() over (partition BY property_i ORDER BY property_i) AS rnum
                     FROM public.new_blocks) t
              WHERE t.rnum > 1);


--delete with join

DELETE 
FROM m_productprice B  
     USING m_product C 
WHERE B.m_product_id = C.m_product_id AND
      C.upc = '7094' AND                 
      B.m_pricelist_version_id='1000020'; 

--postgres_dump
pg_dump -Fc -t reliefpoint -p 5433 -f relief_point.dump ngi10k

--update geomtry table

ALTER TABLE lig
 ALTER COLUMN geom TYPE geometry(Polygon, 4326)
   USING ST_Transform(ST_SetSRID(geom, 4258), 4326);



