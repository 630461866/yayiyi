package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TConsultProject;
import com.qf.entity.TDoctor;

/**
 * @Author: zhangjia
 * @Date:2019/12/19
 */
public interface IConsultRrojectService  extends IBaseService<TConsultProject> {
    PageInfo<TConsultProject> consulprojjectlist(String projectName, PageBean pageBean);

    TConsultProject getconsultProjectById(int id);


    void addinfo(TConsultProject consultProject);

    void deleteproject(int id);
}
