package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TConsultInfomation;

public interface ITConsultInfomationService extends  IBaseService<TConsultInfomation>{


    void addConsultInfomation(TConsultInfomation consultInfomation);

    TConsultInfomation getInfomation(Integer orderId);

    PageInfo<TConsultInfomation> consultantinfomationlist(String consultPurpose, PageBean pageBean);
}
