package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TResult;
import com.qf.entity.TUser;

public interface ITUserService extends IBaseService<TUser>{
    TUser findUserByNameandPassword(String name, String password);

    TUser verificationUserByNameAndIdNum(String name, String idNum);

    void register(String name, String password, String email);

    TResult resetPasswordByIdAndPassword(Integer id, String password);

    PageInfo<TUser> getUserPage(PageBean pageBean,String name);

    PageInfo<TUser> selectByCondition(String name, PageBean pageBean);

    TUser getUserById(int id);

    void updateUser(TUser user);

    void addinfo(TUser user);

    TUser verificationUserByNameandIdnum(String name, String idNum);

    PageInfo<TUser> getAuthUserByRoleId(PageBean pageBean, Long roleId);

    PageInfo<TUser> getNoAuthUserByRoleId(PageBean pageBean, String name, Long roleId);

    void deleteById(int id);
    //修改用户信息



}
