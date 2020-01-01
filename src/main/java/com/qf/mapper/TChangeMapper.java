package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TChange;
import org.apache.ibatis.annotations.Param;

public interface TChangeMapper extends IBaseDao<TChange>{
    int deleteByPrimaryKey(Integer id);

    int insert(TChange record);

    int insertSelective(TChange record);

    TChange selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TChange record);

    int updateByPrimaryKey(TChange record);

    int add(@Param("number") String number, @Param("resouce") String resouce);
}