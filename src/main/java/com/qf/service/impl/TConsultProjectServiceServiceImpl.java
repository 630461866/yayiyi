package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TConsultProject;
import com.qf.mapper.TConsultProjectMapper;
import com.qf.service.ITConsultProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TConsultProjectServiceServiceImpl extends BaseServiceImpl<TConsultProject> implements ITConsultProjectService {

    @Autowired
    private TConsultProjectMapper projectMapper;

    @Override
    public IBaseDao<TConsultProject> getDao() {
        return  projectMapper;
    }


    @Override
    public List<TConsultProject> getProjectList() {

        return projectMapper.getProjectList();

    }

    @Override
    public Integer getProjectId(String projectName) {

        return projectMapper.getProjectId(projectName);
    }

    @Override
    public TConsultProject getPriceById(Integer id) {

        return projectMapper.getPriceById(id);
    }
}
