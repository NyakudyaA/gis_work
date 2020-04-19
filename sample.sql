INSERT INTO tran_crossings_exp_areal (geom, gid, cuid, feat_t_id, feat_type, op_status, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    op_status,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1
  FROM tran_crossings_exp;
  drop table tran_crossings_exp; 

  INSERT INTO phys_landform_artific_exp_areal (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1
  FROM phys_landform_artific;

INSERT INTO phys_landform_artific_exp_areal (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1
  FROM phys_landform_artific_exp;

DROP TABLE phys_landform_artific_exp;

DROP TABLE phys_landform_artific;

INSERT INTO phys_landform_artific_exp_linear (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1
  FROM phys_landform_artific_linear;

DROP TABLE phys_landform_artific_linear;

INSERT INTO phys_landform_artific_exp_point (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1, gmrotation)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1,
    gmrotation
  FROM phys_landform_artific_point;

DROP TABLE phys_landform_artific_point;

INSERT INTO phys_landform_natural_exp_areal (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1
  FROM phys_landform_natural;

INSERT INTO phys_landform_natural_exp_areal (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1
  FROM phys_landform_natural_exp;

DROP TABLE phys_landform_natural;

DROP TABLE phys_landform_natural_exp;

INSERT INTO phys_landform_natural_exp_linear (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1
  FROM phys_landform_natural_linear;

DROP TABLE phys_landform_natural_linear;

INSERT INTO cult_barriers_exp (geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,
                               source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    id1
  FROM cult_barriers;

DROP TABLE cult_barriers;

INSERT INTO cult_educational_exp_areal (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level, gender, model, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    ref_50k,
    ref_10k,
    edu_level,
    gender,
    model,
    id1
  FROM cult_educational;
Drop table cult_educational;

INSERT INTO cult_educational_exp_linear (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level,
                                         gender, model, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    ref_50k,
    ref_10k,
    edu_level,
    gender,
    model,
    id1
  FROM cult_educational_linear;


INSERT INTO cult_educational_exp_point (geom, gid, cuid, feat_t_id, feat_type, sub_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, edu_level,
                                        gender, model, id1, gmrotation)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    sub_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    ref_50k,
    ref_10k,
    edu_level,
    gender,
    model,
    id1,
    gmrotation
  FROM cult_educational_point;
  DROP TABLE cult_educational_exp;
  DROP TABLE cult_educational_linear;
  DROP TABLE cult_educational_point;


INSERT INTO cult_industrial_exp_areal (geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    ref_50k,
    ref_10k,
    pipe_type,
    id1
  FROM cult_industrial;


INSERT INTO cult_industrial_exp_areal (geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des, source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    ref_50k,
    ref_10k,
    pipe_type,
    id1
  FROM cult_industrial_exp;

DROP TABLE cult_industrial;
DROP TABLE cult_industrial_exp;
INSERT INTO cult_industrial_exp_linear (geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,
                                        source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    ref_50k,
    ref_10k,
    pipe_type,
    id1
  FROM cult_industrial_linear;

DROP TABLE cult_industrial_linear;
INSERT INTO cult_industrial_exp_point (geom, gid, cuid, feat_t_id, feat_type, job_nr, est_rv_dat, fea_r_date, att_r_date, cap_source, cap_method, source_des,
                                       source_cur, source_acc, entity_nam, geom_type, sagd_f_typ, sagd_s_typ, sagd_f_des, sagd_s_des, ref_50k, ref_10k, pipe_type, id1, gmrotation)
  SELECT
    geom,
    gid,
    cuid,
    feat_t_id,
    feat_type,
    job_nr,
    est_rv_dat,
    fea_r_date,
    att_r_date,
    cap_source,
    cap_method,
    source_des,
    source_cur,
    source_acc,
    entity_nam,
    geom_type,
    sagd_f_typ,
    sagd_s_typ,
    sagd_f_des,
    sagd_s_des,
    ref_50k,
    ref_10k,
    pipe_type,
    id1,
    gmrotation
  FROM cult_industrial_point;

DROP TABLE cult_industrial_point;


