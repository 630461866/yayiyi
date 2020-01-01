package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TMenuMapper  extends IBaseDao<TMenu> {
    int deleteByPrimaryKey(Long menuId);

    int insert(TMenu record);

    int insertSelective(TMenu record);

    TMenu selectByPrimaryKey(Long menuId);

    int updateByPrimaryKeySelective(TMenu record);

    int updateByPrimaryKey(TMenu record);

    List<TMenu> getMenuList();

    List<Long> getMenuIdsListByRoleId(Long roleId);

    List<TMenu> getMenuListByUserId(Integer id);

    void deleteAuthMenuByRoleId(Long roleId);

    int addAuthMenu(@Param("ids") List<Long> ids, @Param("roleId") Long roleId);
}