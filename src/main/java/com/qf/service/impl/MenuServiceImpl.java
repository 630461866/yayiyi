package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TMenu;
import com.qf.entity.TResult;
import com.qf.mapper.TMenuMapper;
import com.qf.service.IMenuService;
import com.qf.vo.SysMenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/22
 */
@Service
public class MenuServiceImpl extends BaseServiceImpl<TMenu> implements IMenuService {
    @Autowired
    private TMenuMapper menuMapper;
    @Override
    public IBaseDao<TMenu> getDao() {
        return menuMapper;
    }

    @Override
    public List<SysMenuVO> getAuthMenuByRoleId(Long roleId) {
        //查询所有的菜单，作为菜单树的展示数据
        List<TMenu> menuList = menuMapper.getMenuList();
        //定义一个集合，来装vo对象
        List<SysMenuVO> voList = new ArrayList<>(menuList.size());
        //查询当前角色拥有的菜单
//        List<SysMenu> roleMenuList = sysMenuMapper.getMenuListByRoleId(roleId);
        List<Long> menuIdList = menuMapper.getMenuIdsListByRoleId(roleId);
        for(TMenu menu : menuList){
            SysMenuVO menuVO = new SysMenuVO();
            menuVO.setMenuId(menu.getMenuId());
            menuVO.setMenuName(menu.getMenuName());
            menuVO.setMenuParentId(menu.getMenuParentId());

            //如果这个角色有当前这个菜单，则check属性设置为true
            if(menuIdList.contains(menu.getMenuId())){
                menuVO.setChecked(true);
            }

            voList.add(menuVO);
        }
        return voList;
    }

    @Override
    public TResult resetAuthMenu(List<Long> ids, Long roleId) {
        //通过角色id，删除菜单角色表中的所有数据
        menuMapper.deleteAuthMenuByRoleId(roleId);
        //重新添加数据到关系表中
        int count= menuMapper.addAuthMenu(ids,roleId);
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
    public List<TMenu> getMenuListByUserId(Integer id) {
        return menuMapper.getMenuListByUserId(id);
    }
}
