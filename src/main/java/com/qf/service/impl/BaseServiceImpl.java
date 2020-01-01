package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.service.IBaseService;

/**
 * @Author zhangjia
 * @Date 2019/12/17
 */
public abstract  class BaseServiceImpl<T> implements IBaseService<T> {


//    gagagga小圣诞节快乐

    //通过getDao()方法得到service实现类中的mapper对象
    public abstract IBaseDao<T> getDao();

    @Override
    public int deleteByPrimaryKey(Long id) {
        return getDao().deleteByPrimaryKey(id);
    }

    @Override
    public int insert(T t) {
        return getDao().insert(t);
    }

    @Override
    public int insertSelective(T t) {
        return getDao().insertSelective(t);
    }

    @Override
    public T selectByPrimaryKey(Long id) {
        return getDao().selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(T t) {
        return getDao().updateByPrimaryKeySelective(t);
    }

    @Override
    public int updateByPrimaryKey(T t) {
        return getDao().updateByPrimaryKey(t);
    }
}
