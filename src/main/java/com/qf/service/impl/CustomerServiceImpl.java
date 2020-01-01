package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TCustomer;
import com.qf.entity.TMenu;
import com.qf.mapper.TCustomerMapper;
import com.qf.mapper.TMenuMapper;
import com.qf.service.IcustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/18
 */
@Service
public class CustomerServiceImpl extends BaseServiceImpl<TCustomer> implements IcustomerService{
    @Autowired
    private TCustomerMapper customerMapper;

    @Autowired
    private TMenuMapper menuMapper;

    @Override
    public TCustomer checkLogin(String name, String password) {
        TCustomer tCustomer= customerMapper.getCustomerByUsername(name);
        if (tCustomer!=null){
            if (tCustomer.getPassword().equals(password)){
                return tCustomer;
            }
        }
        return null;
    }

    @Override
    public TCustomer getCustomerLogin(String name) {
        return customerMapper.getCustomerLogin(name);
    }

    @Override
    public List<TMenu> getMenuListByUserId(Integer id) {
        return menuMapper.getMenuListByUserId(id);
    }

    @Override
    public IBaseDao<TCustomer> getDao() {
        return customerMapper;
    }
}
