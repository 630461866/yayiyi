package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TMedicalHistory;

/**
 * @Author: zhangjia
 * @Date:2019/12/20
 */
public interface IMedicalHistoryService extends IBaseService<TMedicalHistory> {
    PageInfo<TMedicalHistory> getmedicallHistoryList(String disease, PageBean pageBean);
}
