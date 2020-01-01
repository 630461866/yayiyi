package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TResult;
import com.qf.entity.TRole;
import com.qf.mapper.TRoleMapper;
import com.qf.service.IBaseService;
import com.qf.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/22
 */
@Service
public class RoleServiceImpl extends BaseServiceImpl<TRole> implements IRoleService {
    @Autowired
    private TRoleMapper roleMapper;
    @Override
    public IBaseDao<TRole> getDao() {
        return roleMapper;
    }

    @Override
    public List<TRole> getRoleList() {
        return roleMapper.getRoleList();
    }

    @Override
    public TResult batchAddUser(List<Long> ids, Long roleId) {
        int count = roleMapper.batchAddUser(ids,roleId);
        TResult sysResult = new TResult();
        if(count>0){
            //添加成功
            sysResult.setResult(true);
        }else{
            //添加失败
            sysResult.setResult(false);
        }
        return sysResult;
    }

    @Override
    public TResult delAuthUser(Long userId, Long roleId) {
        int count=roleMapper.delAuthUser(userId,roleId);
        TResult sysResult = new TResult();
        if(count>0){
            //添加成功
            sysResult.setResult(true);
        }else{
            //添加失败
            sysResult.setResult(false);
        }
        return sysResult;
    }
}
