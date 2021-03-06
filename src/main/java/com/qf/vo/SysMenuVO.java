package com.qf.vo;

/**
 * @Author chenzetao
 * @Date 2019/12/11
 */
public class SysMenuVO {
    private Long menuId;

    private Long menuParentId;

    private String menuName;

    private boolean open = true;

    private boolean checked;//这个值是否设置为true，取决于当前的角色是否拥有该菜单

    public Long getMenuId() {
        return menuId;
    }

    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

    public Long getMenuParentId() {
        return menuParentId;
    }

    public void setMenuParentId(Long menuParentId) {
        this.menuParentId = menuParentId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public boolean isOpen() {
        return open;
    }

    public void setOpen(boolean open) {
        this.open = open;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }
}
