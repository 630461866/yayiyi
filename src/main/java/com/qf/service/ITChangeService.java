package com.qf.service;

import com.qf.entity.TChange;

public interface ITChangeService extends IBaseService<TChange>{


    void add(String number, String resouce);
}
