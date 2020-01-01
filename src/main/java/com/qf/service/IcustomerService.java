package com.qf.service;

import com.qf.entity.TCustomer;
import com.qf.entity.TMenu;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/18
 */
public interface IcustomerService extends IBaseService<TCustomer> {
    TCustomer checkLogin(String name, String password);

    TCustomer getCustomerLogin(String name);

    List<TMenu> getMenuListByUserId(Integer id);
}
