package com.qf.service;

import com.qf.entity.TResult;
import com.qf.entity.TRole;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/22
 */
public interface IRoleService extends IBaseService<TRole> {
    List<TRole> getRoleList();

    TResult batchAddUser(List<Long> ids, Long roleId);

    TResult delAuthUser(Long userId, Long roleId);
}
