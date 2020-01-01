package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TDoctor;
import com.qf.entity.TUser;
import com.qf.entity.TUserFeedback;
import com.qf.mapper.TUserFeedbackMapper;
import com.qf.service.ITUserFeedbackService;
import com.qf.service.ITUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TUserFeedbackImpl extends BaseServiceImpl<TUserFeedback> implements ITUserFeedbackService{

    @Autowired
    private TUserFeedbackMapper userFeedbackMapper;

    @Override
    public IBaseDao<TUserFeedback> getDao() {
        return userFeedbackMapper;
    }


    @Override
    public void addUserFeedback(TUserFeedback userFeedback) {
        userFeedbackMapper.addUserFeedback(userFeedback);
    }

    @Override
    public PageInfo<TUserFeedback> userFeedbacklist(String name, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TUserFeedback> doctorlist= userFeedbackMapper.userFeedbacklist(name);
        return new PageInfo<>(doctorlist);
    }

}
