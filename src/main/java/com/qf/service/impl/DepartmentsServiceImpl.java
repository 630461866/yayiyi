package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TDepartments;
import com.qf.entity.TDoctor;
import com.qf.mapper.TDepartmentsMapper;
import com.qf.service.IdepartmentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/21
 */
@Service
public class DepartmentsServiceImpl extends BaseServiceImpl<TDepartments> implements IdepartmentsService {
    @Autowired
    private TDepartmentsMapper departmentsMapper;
    @Override
    public IBaseDao<TDepartments> getDao() {
        return departmentsMapper;
    }

    @Override
    public PageInfo<TDepartments> departmentslist(String departmentName, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TDepartments> doctorlist= departmentsMapper.departmentslist(departmentName);
        return new PageInfo<>(doctorlist);
    }

    @Override
    public TDepartments getDepartmentsById(int id) {
        return departmentsMapper.getDepartmentsById(id);
    }
}
