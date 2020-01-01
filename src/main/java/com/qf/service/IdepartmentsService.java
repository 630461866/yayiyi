package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TDepartments;
import com.qf.entity.TDoctor;

/**
 * @Author: zhangjia
 * @Date:2019/12/21
 */
public interface IdepartmentsService extends IBaseService<TDepartments> {
    PageInfo<TDepartments> departmentslist(String departmentName, PageBean pageBean);

    TDepartments getDepartmentsById(int id);
}
