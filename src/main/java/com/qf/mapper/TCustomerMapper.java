package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TCustomer;
import com.qf.entity.TMenu;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/18
 */
public interface TCustomerMapper extends IBaseDao<TCustomer> {
    TCustomer getCustomerByUsername(String name);

    TCustomer getCustomerLogin(String name);

    List<TMenu> getMenuListByUserId(Integer id);
}

