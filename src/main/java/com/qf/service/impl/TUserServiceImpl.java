package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TResult;
import com.qf.entity.TUser;
import com.qf.mapper.TUserMapper;
import com.qf.service.ITUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TUserServiceImpl extends BaseServiceImpl<TUser> implements ITUserService {

    @Autowired
    private TUserMapper tUserMapper;

    @Override
    public IBaseDao<TUser> getDao() {
        return tUserMapper;
    }


    @Override
    public PageInfo<TUser> getUserPage(PageBean pageBean,String name) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TUser> sysUserList= tUserMapper.getUserPage(name);
        return new PageInfo<>(sysUserList);
    }

    @Override
    public PageInfo<TUser> selectByCondition(String name, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TUser> TUserList= tUserMapper.getUserByCondition(name);
        return new PageInfo<>(TUserList);
    }

    @Override
    public TUser getUserById(int id) {
        return tUserMapper.getUserById(id);
    }

    @Override
    public void updateUser(TUser user) {
            tUserMapper.updateUser(user);
    }

    @Override
    public void addinfo(TUser user) {
        tUserMapper.addinfo(user);
    }

    @Override
    public TUser verificationUserByNameandIdnum(String name, String idNum) {
        return  tUserMapper.verificationUserByNameAndIdNum(name,idNum);
    }

    @Override
    public PageInfo<TUser> getAuthUserByRoleId(PageBean pageBean, Long roleId) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TUser> sysUserList = tUserMapper.getAuthUserByRoleId(roleId);
        return new PageInfo<>(sysUserList);
    }

    @Override
    public PageInfo<TUser> getNoAuthUserByRoleId(PageBean pageBean, String name, Long roleId) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TUser> sysUserList = tUserMapper.getNoAuthUserByRoleId(name,roleId);
        return new PageInfo<>(sysUserList);
    }

    @Override
    public void deleteById(int id) {
        tUserMapper.deleteById(id);
    }

    @Override
    public TUser findUserByNameandPassword(String name, String password) {
        return tUserMapper.findUserByNameandPassword(name,password);
    }

    @Override
    public TUser verificationUserByNameAndIdNum(String name, String idNum) {
        return tUserMapper.verificationUserByNameAndIdNum(name,idNum);
    }

    @Override
    public TResult resetPasswordByIdAndPassword(Integer id, String password) {
        int count = tUserMapper.resetPasswordByIdAndPassword(id,password);
        TResult tResult = new TResult();
        if(count>0){
            tResult.setResult(true);
        }else{
            tResult.setResult(false);
        }
        return tResult;
    }




    @Override
    public void register(String name, String password, String email) {
        tUserMapper.register(name,password,email);
    }

}
