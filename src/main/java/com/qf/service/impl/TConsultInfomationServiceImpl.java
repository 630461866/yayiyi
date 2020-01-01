package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TConsultInfomation;
import com.qf.entity.TGoods;
import com.qf.mapper.TConsultInfomationMapper;
import com.qf.service.ITConsultInfomationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TConsultInfomationServiceImpl extends BaseServiceImpl<TConsultInfomation> implements ITConsultInfomationService {

    @Autowired
    private TConsultInfomationMapper consultInfomationMapper;

    @Override
    public IBaseDao<TConsultInfomation> getDao() {
        return consultInfomationMapper;
    }

    @Override
    public void addConsultInfomation(TConsultInfomation consultInfomation) {
        consultInfomationMapper.addConsultInfomation(consultInfomation);
    }

    @Override
    public TConsultInfomation getInfomation(Integer orderId) {
        return consultInfomationMapper.getInfomation(orderId);
    }

    @Override
    public PageInfo<TConsultInfomation> consultantinfomationlist(String consultPurpose, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TConsultInfomation> goodslistinfo= consultInfomationMapper.consultantinfomationlist(consultPurpose);
        return new PageInfo<>(goodslistinfo);
    }
}
