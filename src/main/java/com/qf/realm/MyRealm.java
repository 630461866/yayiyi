package com.qf.realm;


import com.qf.entity.TCustomer;
import com.qf.entity.TMenu;
import com.qf.entity.TUser;
import com.qf.service.IMenuService;
import com.qf.service.IcustomerService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/13
 */
public class MyRealm extends AuthorizingRealm {

    @Autowired
    private IcustomerService customerService;
    @Autowired
    private IMenuService menuService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        //定义一个集合来存如权限信息
        HashSet<String> permissionSet = new HashSet<>();
        //得到用户对象
        TCustomer sysUser = (TCustomer) principalCollection.getPrimaryPrincipal();
        //通过id查询菜单集合
        List<TMenu> list= menuService.getMenuListByUserId(sysUser.getId());
        for (TMenu menu :list) {
            if (menu.getMenuType()==3){
                permissionSet.add(menu.getMenuPath());
            }
        }
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setStringPermissions(permissionSet);
        return authorizationInfo;
    }


    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        //数据库的登陆
        //得到用户名
        UsernamePasswordToken token= (UsernamePasswordToken) authenticationToken;
        String name=token.getUsername();
//        通过用户名查询用户对象
        TCustomer customer =customerService.getCustomerLogin(name);
        if (customer!=null){
            ByteSource byteSource = ByteSource.Util.bytes(name);
            return new SimpleAuthenticationInfo(customer,customer.getPassword(),byteSource,this.getName());
        }
        return null;
    }
}
