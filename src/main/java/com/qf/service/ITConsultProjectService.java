package com.qf.service;

import com.qf.entity.TConsultProject;

import java.util.List;

public interface ITConsultProjectService extends IBaseService<TConsultProject> {


    List<TConsultProject> getProjectList();

    Integer getProjectId(String projectName);


    TConsultProject getPriceById(Integer id);


}
