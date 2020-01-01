package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TUserFeedback;

public interface ITUserFeedbackService extends IBaseService<TUserFeedback>{
    void addUserFeedback(TUserFeedback userFeedback);

    PageInfo<TUserFeedback> userFeedbacklist(String name, PageBean pageBean);
}
