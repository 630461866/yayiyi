package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TRoleMapper  extends IBaseDao<TRole> {
    int deleteByPrimaryKey(Long roleId);

    int insert(TRole record);

    int insertSelective(TRole record);

    TRole selectByPrimaryKey(Long roleId);

    int updateByPrimaryKeySelective(TRole record);

    int updateByPrimaryKey(TRole record);

    List<TRole> getRoleList();

    int batchAddUser(@Param("ids") List<Long> ids,@Param("roleId") Long roleId);

    int delAuthUser(@Param("userId") Long userId,@Param("roleId") Long roleId);
}