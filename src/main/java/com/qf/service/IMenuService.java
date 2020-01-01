package com.qf.service;

import com.qf.entity.TMenu;
import com.qf.entity.TResult;
import com.qf.entity.TRole;
import com.qf.vo.SysMenuVO;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/22
 */
public interface IMenuService extends IBaseService<TMenu> {
    List<SysMenuVO> getAuthMenuByRoleId(Long roleId);

    TResult resetAuthMenu(List<Long> ids, Long roleId);

    List<TMenu> getMenuListByUserId(Integer id);
}
