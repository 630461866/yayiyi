package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TConsignee;

public interface TConsigneeMapper extends IBaseDao<TConsignee>{
    int deleteByPrimaryKey(Integer id);

    int insert(TConsignee record);

    int insertSelective(TConsignee record);

    TConsignee selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TConsignee record);

    int updateByPrimaryKey(TConsignee record);

    TConsignee getConsigneeByUserId(Integer userId);
}