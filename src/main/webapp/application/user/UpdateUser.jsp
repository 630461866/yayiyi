<%--
  Created by IntelliJ IDEA.
  User: a2505
  Date: 2019/12/19
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<base href="${pageContext.request.contextPath}/">
<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<head>
    <title>Title</title>
</head>
<body>
<div class="pd-20">
    <form action="user/update" method="post"  class="form form-horizontal" id="form-admin-add">
        <input type="hidden" name="id"  value="${user.id}"/>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>用户名：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.name}" placeholder="" id="user-name" name="name" datatype="*2-16" nullmsg="用户名不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>密码：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.password}" placeholder="" id="user-password" name="password" datatype="*2-16" nullmsg="密码不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>性别：</label>
            <div class="formControls col-5 skin-minimal">
                <div class="radio-box">
                    <input type="radio" value="1" id="sex-1" name="sex" datatype="*" nullmsg="请选择性别！">
                    <label for="sex-1">男</label>
                </div>
                <div class="radio-box">
                    <input type="radio" value="0" id="sex-2" name="sex">
                    <label for="sex-2">女</label>
                </div>
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>手机：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.phone}" placeholder="" id="user-tel" name="phone"  datatype="m" nullmsg="手机号不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>身份证：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.idNum}" placeholder="" id="user-idNum" name="idNum"  datatype="*" nullmsg="身份证不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>年龄：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.age}" placeholder="" id="user-age" name="age" datatype="*1-3" nullmsg="年龄不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>邮箱：</label>
            <div class="formControls col-5">
                <input type="text" value="${user.email}" class="input-text" placeholder="@" name="email" id="email" datatype="e" nullmsg="请输入邮箱！">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>生日：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.birthday}" placeholder="" id="user-brithday" name="birthday"  datatype="*" nullmsg="生日不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
            <div class="row cl">
                <label class="form-label col-3"><span class="c-red">*</span>省份：</label>
                <div class="formControls col-5">
                    <input type="text" class="input-text" value="${user.province}" placeholder="" id="user-province" name="province"  datatype="*" nullmsg="省份不能为空">
                </div>
                <div class="col-4"> </div>
            </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>城市：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.city}" placeholder="" id="user-city" name="city"  datatype="*" nullmsg="城市不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>县：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.county}" placeholder="" id="user-countys" name="county"  datatype="*" nullmsg="地址不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>图片地址：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${user.pictureUrl}" placeholder="" id="user-county" name="pictureUrl"  datatype="*" nullmsg="图片地址不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <%--<div class="row cl">
            <label class="form-label col-3">角色：</label>
            <div class="formControls col-5"> <span class="select-box" style="width:150px;">
				<select class="select" name="admin-role" size="1">
					<option value="0">超级管理员</option>
					<option value="1">总编</option>
					<option value="2">栏目主辑</option>
					<option value="3">栏目编辑</option>
				</select>
				</span> </div>
        </div>--%>
        <%--<div class="row cl">
            <label class="form-label col-3">备注：</label>
            <div class="formControls col-5">
                <textarea name="" cols="" rows="" class="textarea"  placeholder="说点什么...100个字符以内" dragonfly="true" onKeyUp="textarealength(this,100)"></textarea>
                <p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
            </div>
            <div class="col-4"> </div>
        </div>--%>
        <div class="row cl">
            <div class="col-9 col-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="lib/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-admin-add").Validform({
            tiptype:2,
            callback:function(form){
                debugger
                form[0].submit();
                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();
                parent.layer.close(index);
            }
        });
    });
</script>
</body>
</html>
