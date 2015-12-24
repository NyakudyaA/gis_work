insert into tran_crossings_exp_areal  ( geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
select  geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM tran_crossings_exp;

insert into tran_crossings_exp_areal  ( geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
select  geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM tran_crossings_exp_;

drop table tran_crossings_exp_;

drop table tran_crossings_exp;

INSERT INTO tran_roads_exp( geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, road_surfa, id1) 
select geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, road_surfa, id1 from tran_roads_exp_;

drop table tran_roads_exp_;

INSERT INTO phys_landform_artific_exp_areal( geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM phys_landform_artific;

INSERT INTO phys_landform_artific_exp_areal( geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM phys_landform_artific_exp;

drop table phys_landform_artific_exp;

drop table phys_landform_artific;


INSERT INTO admn_boundaries_exp_areal(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM admn_boundaries_exp;

drop table admn_boundaries_exp;

INSERT INTO phys_landform_artific_exp_linear(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM phys_landform_artific_linear;

drop table phys_landform_artific_linear;

INSERT INTO phys_landform_artific_exp_point(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1, gmrotation) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1, gmrotation FROM phys_landform_artific_point;

drop table phys_landform_artific_point;

INSERT INTO phys_landform_natural_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM phys_landform_natural;

INSERT INTO phys_landform_natural_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM phys_landform_natural_exp;

drop table phys_landform_natural;

drop table phys_landform_natural_exp;

INSERT INTO phys_landform_natural_exp_linear(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM phys_landform_natural_linear;

drop table phys_landform_natural_linear;



INSERT INTO cult_barriers_exp(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des, id1 FROM cult_barriers;
 
 drop table cult_barriers;
 
 INSERT INTO cult_educational_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, id1) 
 SELECT geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, id1 FROM cult_educational;
 
  INSERT INTO cult_educational_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, 
 gender, model, id1 FROM cult_educational_exp;
 
 INSERT INTO cult_educational_exp_linear(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, 
gender, model, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
 source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, 
 gender, model, id1 FROM cult_educational_linear;
 
 
 INSERT INTO cult_educational_exp_point(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,  source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, 
 gender, model, id1, gmrotation) 
 SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, 
 gender, model, id1, gmrotation FROM cult_educational_point;
 
 drop table cult_educational;
 drop table cult_educational_exp;
 drop table cult_educational_linear;
 drop table cult_educational_point;
 
 INSERT INTO cult_industrial_exp_areal(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1) 
 SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1 FROM cult_industrial;
 
 
 
 INSERT INTO cult_industrial_exp_areal(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1) 
 SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1 FROM cult_industrial_exp;
 
 drop table cult_industrial;
 drop table cult_industrial_exp;
 
 INSERT INTO cult_industrial_exp_linear(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1 FROM cult_industrial_linear;
  
drop table cult_industrial_linear;
  
  
INSERT INTO cult_industrial_exp_point(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1, gmrotation) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1, gmrotation FROM cult_industrial_point;
  
 drop table cult_industrial_point;
  
INSERT INTO cult_public_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM cult_public;
  
INSERT INTO cult_public_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type,   job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,  source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM cult_public_exp;

drop table cult_public;
drop table cult_public_exp;


INSERT INTO cult_public_exp_linear(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM cult_public_linear;


INSERT INTO cult_public_exp_point(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation FROM cult_public_point;


drop table cult_public_linear;
drop table cult_public_point;


INSERT INTO cult_recreational_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM cult_recreational;

INSERT INTO cult_recreational_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
 source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,  source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM cult_recreational_exp;

INSERT INTO cult_recreational_exp_linear(geom, gid, cuid, feat_t_id, feat_type, sub_type,  job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
 source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1)
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type,  job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,  source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM cult_recreational_linear;
  
drop table cult_recreational;
drop table cult_recreational_exp;
drop table cult_recreational_linear;
  
  
INSERT INTO cult_recreational_exp_point( geom, gid, cuid, feat_t_id, feat_type, sub_type,  job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
 source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) 
 SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type,   job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,  source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM cult_recreational_point;
  


INSERT INTO hydr_areas_exp(geom, gid, cuid, feat_t_id, feat_type, job_nr,est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr,    
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ,  
sagd_f_des, sagd_s_des, id1   FROM hydr_areas_exp_;
         
drop table hydr_areas_exp_;

INSERT INTO hydr_lines_exp( geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,  source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ,  sagd_f_des, sagd_s_des, pipe_type, id1)
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, pipe_type, id1 FROM hydr_lines_exp_;

drop table hydr_lines_exp_;

INSERT INTO hydr_points_exp(geom, gid, cuid, feat_t_id, feat_type, job_nr,  est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ,  sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr,  est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,  source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ,  sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation FROM hydr_point_s_exp;


INSERT INTO hydr_points_exp(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation FROM hydr_points;
  
drop table hydr_point_s_exp;
drop table  hydr_points;
  
INSERT INTO hyps_elevation_lines_exp(geom, gid, cuid, feat_t_id, feat_type, height, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
 source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, height, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM hyps_elevation_lines;


INSERT INTO hyps_elevation_points_exp(geom, gid, cuid, feat_t_id, feat_type, height, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation)
SELECT  geom, gid, cuid, feat_t_id, feat_type, height, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation FROM hyps_elevation_point_s_exp;



INSERT INTO hyps_elevation_points_exp(geom, gid, cuid, feat_t_id, feat_type, height, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, height, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation FROM hyps_elevation_points;

drop table   hyps_elevation_lines;
drop table  hyps_elevation_point_s_exp;
drop table  hyps_elevation_points;

INSERT INTO lclu_landcover_exp(geom, gid, cuid, feat_t_id, feat_type, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
source_acc, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM lclu_landcover;

drop table lclu_landcover;
  
INSERT INTO cult_utilities_exp_areal(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,  source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1 FROM cult_utilities;

INSERT INTO cult_utilities_exp_areal(geom, gid, cuid, feat_t_id, feat_type, job_nr,  est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1 FROM cult_utilities_exp;

drop table cult_utilities;
drop table cult_utilities_exp;

INSERT INTO cult_utilities_exp_linear(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1 FROM cult_utilities_linear;

drop table cult_utilities_linear;

INSERT INTO tran_facilities_exp_areal(  geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status,   job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,   source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,     sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) 
SELECT geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status,   job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,   source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,   sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM tran_facilities_exp_;

drop table tran_facilities_exp_; 

INSERT INTO tran_facilities_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method,  source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,   sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1)
 SELECT geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status,  job_nr, est_rv_dat, fea_r_date, att_r_date,  cap_source, cap_method,  source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ,  sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM tran_facilities_exp;
    
drop table tran_facilities_exp;

INSERT INTO phys_landform_natural_exp_point(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr,  est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,  source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ,   sagd_f_des, sagd_s_des, id1) 
SELECT geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr,   est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,  source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ,  sagd_f_des, sagd_s_des, id1 FROM phys_landform_natural_point;


drop table phys_landform_natural_point;

INSERT INTO cult_recreational_exp_point(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1)
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1 FROM cult_recreational_point;


drop table cult_recreational_point;


---new sql

﻿INSERT INTO cult_barriers_exp(geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1 FROM cult_barriers_exp_;

 INSERT INTO cult_educational_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender,  model, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, id1
 FROM cult_educational_exp_areal_;
 
INSERT INTO cult_educational_exp_linear( geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, id1) select  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, id1 from cult_educational_exp_linear_;


INSERT INTO cult_educational_exp_point(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, id1, gmrotation) 
SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, gmrotation, id1 FROM cult_educational_exp_point_;



  INSERT INTO cult_industrial_exp_areal(
   geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
 fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
 source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
 sagd_s_des, ref_50k, ref_10k, pipe_type, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
       fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
       source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
       sagd_s_des, ref_50k, ref_10k, pipe_type, id1
  FROM cult_industrial_exp_areal_;

 
  INSERT INTO cult_industrial_exp_linear(
   geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
 fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
 source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
 sagd_s_des, ref_50k, ref_10k, pipe_type, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
       fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
       source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
       sagd_s_des, ref_50k, ref_10k, pipe_type, id1
  FROM cult_industrial_exp_linear_;

 INSERT INTO cult_industrial_exp_point(
   geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
 fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
 source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
 sagd_s_des, ref_50k, ref_10k, pipe_type, id1, gmrotation) SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
       fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
       source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
       sagd_s_des, ref_50k, ref_10k, pipe_type, gmrotation, id1
  FROM cult_industrial_exp_point_;

 
   INSERT INTO cult_public_exp_areal_(
 geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1
  FROM cult_public_exp_areal_;


 Drop table cult_public_exp_areal_;
Drop table cult_industrial_exp_point_;
Drop table cult_industrial_exp_linear_;
Drop table cult_industrial_exp_areal_;
Drop table cult_educational_exp_point_;
Drop table cult_educational_exp_linear_;
Drop Table cult_educational_exp_areal_;
Drop table cult_barriers_exp_;


INSERT INTO cult_public_exp_linear(
 geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1  
) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1
  FROM cult_public_exp_linear_;

Drop table cult_public_exp_linear_;



INSERT INTO cult_public_exp_point(
 geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, ref_50k, ref_10k, gmrotation, id1
  FROM cult_public_exp_point_;
  
Drop table  cult_public_exp_point_;

INSERT INTO cult_recreational_exp_areal(
 geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1
  FROM cult_recreational_exp_areal_;
  
drop table cult_recreational_exp_areal_;

INSERT INTO cult_recreational_exp_linear(
   geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
 est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1
  FROM cult_recreational_exp_linear_;

Drop table   cult_recreational_exp_linear_;

INSERT INTO cult_recreational_exp_point(
 geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1
  FROM cult_recreational_exp_point_;

Drop table cult_recreational_exp_point_;

INSERT INTO cult_utilities_exp_areal(
 geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
sagd_s_des, ref_50k, ref_10k, pipe_type, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
       fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
       source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
       sagd_s_des, ref_50k, ref_10k, pipe_type, id1
  FROM cult_utilities_exp_areal_;

Drop table cult_utilities_exp_areal_;

INSERT INTO cult_utilities_exp_linear(
 geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
sagd_s_des, ref_50k, ref_10k, pipe_type, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
       fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
       source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
       sagd_s_des, ref_50k, ref_10k, pipe_type, id1
  FROM cult_utilities_exp_linear_;

Drop table cult_utilities_exp_linear_;

INSERT INTO cult_utilities_exp_point(
 geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
sagd_s_des, ref_50k, ref_10k, pipe_type, id1, gmrotation) SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
       fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
       source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
       sagd_s_des, ref_50k, ref_10k, pipe_type, id1,gmrotation
  FROM cult_utilities_exp_point_;

Drop table cult_utilities_exp_point_;

INSERT INTO hydr_coastal_areas_exp_areal(
 geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
sagd_s_des, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
       fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
       source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
       sagd_s_des, id1
  FROM hydr_coastal_areas_exp;

Drop table hydr_coastal_areas_exp;

INSERT INTO hydr_points_exp(
 geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
sagd_s_des, ref_50k, ref_10k,  gmrotation,id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, 
       fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, 
       source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, 
       sagd_s_des, ref_50k, ref_10k, gmrotation, id1
  FROM hydr_points_exp_;

Drop table hydr_points_exp_;

  







  INSERT INTO hyps_elevation_lines_exp(
   geom, gid, cuid, feat_t_id, feat_type, height, job_nr, 
 est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, height, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, id1
  FROM hyps_elevation_lines_exp_;
  
drop table hyps_elevation_lines_exp_;
  
  INSERT INTO hyps_elevation_points_exp(
   geom, gid, cuid, feat_t_id, feat_type, height, job_nr, 
 est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des, ref_50k, ref_10k,  gmrotation,id1)  SELECT  geom, gid, cuid, feat_t_id, feat_type, height, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, ref_50k, ref_10k, gmrotation, id1
  FROM hyps_elevation_points_exp_;

Drop table  hyps_elevation_points_exp_;


INSERT INTO lclu_landcover_exp(
 geom, gid, cuid, feat_t_id, feat_type, est_rv_dat, fea_r_date, 
att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, 
geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, est_rv_dat, fea_r_date, 
       att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, 
       geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des
  FROM lclu_landcover_exp_;

Drop table lclu_landcover_exp_;

INSERT INTO phys_landform_artific_exp_areal(geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des)  SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM phys_landform_artific_exp_areal_;
  
drop table phys_landform_artific_exp_areal_;
  
  INSERT INTO phys_landform_artific_exp_linear(
   geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
 est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM phys_landform_artific_exp_linear_;
  
Drop table phys_landform_artific_exp_linear_;

INSERT INTO phys_landform_artific_exp_point(
 geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des,  gmrotation) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, gmrotation
  FROM phys_landform_artific_exp_point_;

Drop table phys_landform_artific_exp_point_;

INSERT INTO phys_landform_natural_exp_areal(
 geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM phys_landform_natural_exp_areal_;
  
drop table phys_landform_natural_exp_areal_;
  
  INSERT INTO phys_landform_natural_exp_linear(
   geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
 est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM phys_landform_natural_exp_linear_;
  
drop table phys_landform_natural_exp_linear_;
  
  INSERT INTO phys_landform_natural_exp_point(
   geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
 est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM phys_landform_natural_exp_point_;
  
drop table phys_landform_natural_exp_point_;


INSERT INTO tran_crossings_exp_areal(
 geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM tran_crossings_exp_areal_;

Drop table tran_crossings_exp_areal_;





INSERT INTO tran_crossings_exp_linear(
geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
           est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
           source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
           sagd_f_des, sagd_s_des, id1)   SELECT  geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des, id1
  FROM tran_crossings_exp__linear;

Drop table   tran_crossings_exp__linear;


INSERT INTO tran_crossings_exp_point(
 geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM tran_crossings_exp_point_;
  
drop table tran_crossings_exp_point_;
  
  INSERT INTO tran_crossings_exp_point(
   geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
 est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM tran_crossings_exp__point;
  
drop table tran_crossings_exp__point;

INSERT INTO tran_crossings_exp_linear(
   geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
 est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
 source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
 sagd_f_des, sagd_s_des) SELECT  geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, 
       est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, 
       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, 
       sagd_f_des, sagd_s_des
  FROM tran_crossings_exp_linear_;

Drop table   tran_crossings_exp_linear_;

INSERT INTO tran_facilities_exp_areal(
geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, 
job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, 
sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, 
       job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
       source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, 
       sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k
  FROM tran_facilities_exp_areal_;
Drop table tran_facilities_exp_areal_;

INSERT INTO tran_facilities_exp_linear(
geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, 
job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, 
sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, 
       job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
       source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, 
       sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1
  FROM tran_facilities_exp__linear;

Drop table tran_facilities_exp__linear;

INSERT INTO tran_facilities_exp_linear(
geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, 
job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, 
sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k) SELECT  geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, 
       job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
       source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, 
       sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k
  FROM tran_facilities_exp_linear_;

Drop table tran_facilities_exp_linear_;


INSERT INTO tran_facilities_exp_point(
geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, 
job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, 
sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation) SELECT geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, 
       job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, 
       source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, 
       sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, id1, gmrotation
  FROM tran_facilities_exp__point;

Drop table tran_facilities_exp__point;


INSERT INTO tran_facilities_exp_point( geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status,  job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, gmrotation) SELECT geom, gid, cuid, feat_t_id, feat_type, sub_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, gmrotationFROM tran_facilities_exp_point_;

Drop table tran_facilities_exp_point_;

INSERT INTO lclu_landuse_exp(geom, gid, cuid, feat_type, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc,entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, sub_type, id1) SELECT  geom, gid, cuid, feat_type, est_rv_dat, fea_r_date, 
att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, sub_type, id1
FROM lclu_landuse_exp_;
drop table lclu_landuse_exp_;

    


















































        



  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
















































 











  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  






































  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  






















































  






      
  
  
  
  
  


























