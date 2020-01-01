package com.qf.controller;

import com.qf.entity.TCustomer;
import com.qf.entity.TMenu;
import com.qf.mapper.TMenuMapper;
import com.qf.service.IcustomerService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/18
 */
@Controller
@RequestMapping("Customer")
public class customerController {

    @Autowired
    private IcustomerService customerService;
    @Autowired
    private TMenuMapper menuMapper;

    @RequestMapping("login")
    public String login(TCustomer customer, ModelMap map, Model model) {
        Subject currentCustmoer = SecurityUtils.getSubject();
        //判断是否已经登陆
        if (!currentCustmoer.isAuthenticated()) {
            //创建UserpasswordToken对象来得到前端传过来的值
            UsernamePasswordToken token = new UsernamePasswordToken(customer.getName(),customer.getPassword());
            try {
                //通过subject对象实现登陆认证
                currentCustmoer.login(token);
            } catch (AuthenticationException exception) {
                exception.printStackTrace();
                System.out.println("认证失败");
                return "logincustomer";
            }
        }
        TCustomer user = (TCustomer) currentCustmoer.getPrincipal();
        //登录成功，就可以通过不同的userid看到不同的菜单
        List<TMenu> sysMenuList= customerService.getMenuListByUserId(user.getId());
        map.put("menuList",sysMenuList);
        return "indexcustomer";
    }
}
