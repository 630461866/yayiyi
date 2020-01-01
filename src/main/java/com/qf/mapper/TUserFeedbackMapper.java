package com.qf.mapper;

import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TUserFeedback;

import java.util.List;

public interface TUserFeedbackMapper extends IBaseDao<TUserFeedback>{
    int deleteByPrimaryKey(Integer id);

    int insert(TUserFeedback record);

    int insertSelective(TUserFeedback record);

    TUserFeedback selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TUserFeedback record);

    int updateByPrimaryKey(TUserFeedback record);

    int addUserFeedback(TUserFeedback userFeedback);

    List<TUserFeedback> userFeedbacklist(String name);
}