package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TConsultProject;
import com.qf.entity.TDoctor;
import com.qf.mapper.TConsultProjectMapper;
import com.qf.service.IConsultRrojectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/19
 */
@Service
public class ConsultRrojectServiceImpl extends BaseServiceImpl<TConsultProject> implements IConsultRrojectService {
    @Autowired
    private TConsultProjectMapper consultProjectMapper;

    @Override
    public IBaseDao<TConsultProject> getDao() {
        return consultProjectMapper;
    }

    @Override
    public PageInfo<TConsultProject> consulprojjectlist(String projectName, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TConsultProject> consulprojjectlist= consultProjectMapper.consulprojjectlist(projectName);
        return new PageInfo<>(consulprojjectlist);
    }

    @Override
    public TConsultProject getconsultProjectById(int id) {
        return consultProjectMapper.getconsultProjectById(id);
    }

    @Override
    public void addinfo(TConsultProject consultProject) {
        consultProjectMapper.addinfo(consultProject);
    }

    @Override
    public void deleteproject(int id) {
        consultProjectMapper.deleteproject(id);
    }
}
