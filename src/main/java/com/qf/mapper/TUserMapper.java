package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface TUserMapper extends IBaseDao<TUser> {


    List<TUser> getUserPage(String name);

    List<TUser> getUserByCondition(String name);

    TUser getUserById(int id);

    int updateUser(TUser user);

    TUser findUserByNameandPassword(@Param("name") String name, @Param("password") String password);

    TUser verificationUserByNameAndIdNum(@Param("name")String name,@Param("idNum")String idNum);

    void register(@Param("name") String name, @Param("password") String password, @Param("email") String email);

    int resetPasswordByIdAndPassword(@Param("id")Integer id,@Param("password") String password);

    void addinfo(TUser user);

    List<TUser> getAuthUserByRoleId(Long roleId);

    List<TUser> getNoAuthUserByRoleId(@Param("name") String name,@Param("roleId") Long roleId);

    void deleteById(int id);
}