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
    <form action="doctor/addinfo" method="post"  class="form form-horizontal" id="form-admin-add">
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>医生姓名：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  placeholder="" id="user-name" name="doctorName" datatype="*2-16" nullmsg="用户名不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>密码：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  placeholder="" id="user-password" name="password" datatype="*2-16" nullmsg="密码不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>职位：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  placeholder="" id="user-position" name="position" datatype="*" nullmsg="职位不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>部门：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  placeholder="" id="user-departments" name="departments"  datatype="*" nullmsg="部门不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>医生图片：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  placeholder="" id="user-photo" name="photo"  datatype="*" nullmsg="图片地址不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <%--<div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>医生图片：</label>
            <div class="formControls col-5">
                <input type="file" id="file_upload"/>
                <input type="hidden" name="photo" id="goodsPic" />
                <img src="" alt="" id="img" width="60px" height="60px" />
            </div>--%>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>商品数量：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  placeholder="" id="user-count" name="goodcount" datatype="*1-3" nullmsg="商品数量不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

            <div class="row cl">
                <label class="form-label col-3"><span class="c-red">*</span>项目id：</label>
                <div class="formControls col-5">
                    <input type="text" class="input-text"  placeholder="" id="user-projectId" name="projectId" datatype="*1-3" nullmsg="项目id不能为空">
                </div>
                <div class="col-4"> </div>
            </div>
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
