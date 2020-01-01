package com.qf.service;

import com.qf.entity.TConsignee;

public interface ITConsigneeService extends IBaseService<TConsignee>{

    TConsignee getConsigneeByUserId(Integer userId);
}
