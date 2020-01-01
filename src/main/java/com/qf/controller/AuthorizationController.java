package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.PageBean;
import com.qf.entity.TResult;
import com.qf.entity.TRole;
import com.qf.entity.TUser;
import com.qf.service.IMenuService;
import com.qf.service.IRoleService;
import com.qf.service.ITUserService;
import com.qf.vo.SysMenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: zhangjia
 * @Date:2019/12/22
 */
@Controller
@RequestMapping("auth")
public class AuthorizationController {
    @Autowired
    private ITUserService userService;
    @Autowired
    private IMenuService menuService;
    @Autowired
    private IRoleService roleService;

    @RequestMapping("showAuthPage")
    public String toAuthPage(ModelMap map){
        List<TRole> sysRoleList =roleService.getRoleList();
        map.put("roleList",sysRoleList);
        return "application/auth/authorization";
    }
    //查询当前角色下所有的用户信息
    @RequestMapping("getAuthUserByRoleId")
    public String getAuthUserByRoleId(PageBean pageBean, Long roleId, ModelMap map){
        //根据角色ID查询用户的分页信息
        PageInfo<TUser> pageInfo = userService.getAuthUserByRoleId(pageBean,roleId);
        //存起来
        map.put("pageInfo",pageInfo);
        map.put("roleId",roleId);
        //设置分页的跳转地址
        map.put("url","auth/getAuthUserByRoleId");
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("roleId",roleId);
        map.put("params",new Gson().toJson(paramMap));
        //展示角色下所有的用户的页面
        return "application/auth/auth_user";
    }
    //查询当前角色下没有的用户
    @RequestMapping("getNoAuthUserByRoleId")
    public String getNoAuthUserByRoleId(PageBean pageBean,String name,Long roleId,ModelMap map){
        PageInfo<TUser> pageInfo =  userService.getNoAuthUserByRoleId(pageBean,name,roleId);
        //存起来
        map.put("pageInfo",pageInfo);
        map.put("url","auth/getNoAuthUserByRoleId");
        map.put("roleId",roleId);
        map.put("name",name);
        //把查询条件转成json数据，供page.jsp使用
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("roleId",roleId);
        paramMap.put("name",name);
        map.put("params",new Gson().toJson(paramMap));
        //跳转到授权新用户的页面
        return "application/auth/no_auth_user";
    }
    //批量授权用户
    @RequestMapping("batchAddUser")
    @ResponseBody
    public TResult batchAddUser(@RequestParam("ids") List<Long> ids, Long roleId){
        return roleService.batchAddUser(ids,roleId);
    }
    @RequestMapping("delAuthUser")
    @ResponseBody
    public TResult delAuthUser(Long userId,Long roleId){
        return roleService.delAuthUser(userId,roleId);
    }

    //查询菜单树
    @RequestMapping("getAuthMenuByRoleId")
    public String getAuthMenuByRoleId(Long roleId, ModelMap map){
        List<SysMenuVO> menuVOList =  menuService.getAuthMenuByRoleId(roleId);
        map.put("roleId",roleId);
        map.put("menuVOList",new Gson().toJson(menuVOList));
        return "application/auth/auth_menu";
    }
    //重新授权菜单
    @RequestMapping("resetAuthMenu")
    @ResponseBody
    public TResult resetAuthMenu(@RequestParam("ids") List<Long> ids, Long roleId){
        return menuService.resetAuthMenu(ids,roleId);
    }
}
