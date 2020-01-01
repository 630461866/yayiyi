package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TConsultProject;
import com.qf.entity.TDoctor;

import java.util.List;

public interface TConsultProjectMapper extends IBaseDao<TConsultProject> {
    int deleteByPrimaryKey(Integer id);

    int insert(TConsultProject record);

    int insertSelective(TConsultProject record);

    TConsultProject selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TConsultProject record);

    int updateByPrimaryKey(TConsultProject record);

    List<TConsultProject> consulprojjectlist(String projectName);

    TConsultProject getconsultProjectById(int id);

    List<TConsultProject> getProjectList();

    Integer getProjectId(String projectName);

    TConsultProject getPriceById(Integer id);

    void addinfo(TConsultProject consultProject);

    int deleteproject(int id);
}