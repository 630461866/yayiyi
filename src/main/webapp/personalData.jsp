
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <base href="${pageContext.request.contextPath}/">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="Author" content="">
    <meta content="" name="design">
    <title>广州一代医药科技有限公司</title>
    <link rel="stylesheet" type="text/css" media="all" href="css/css_whir.css"/>
    <script type="text/javascript" src="Scripts/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.SuperSlide.2.1.1.js"></script>
    <!--[if lt IE 9]><script type="text/javascript" src="scripts/html5shiv.v3.72.min.js"></script><![endif]-->
    <script  type="text/javascript"> var navid="5"</script>
    <script src="/Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        /*$(function () {
            $("#updateUserData").click(function () {
                $("#userData").submit(function () {
                    return true;
                })
            })
        })*/
    </script>
</head>

<body >
<header class="Header">
    <div class="head">
        <a href="#" class="logo"><img src="images/logo.jpg"  /></a>
        <div class="head-Right">
            <a href="#" class="add-site">收藏本站</a>
            <div class="language-select">
                <span class="checked-lan"><a >ENGLISH</a><em></em></span>
                <ul class="language-menu">
                    <li><a href="#">ENGLISH</a></li>
                    <li><a href="#">中文版</a></li>
                </ul>
            </div>
            <div class="Searchbox">
                <input name="" type="text" class="search_ipu" id="key" value="输入要搜素的信息" onblur="if(this.value=='')this.value='输入要搜素的信息';" onfocus="if(this.value=='输入要搜素的信息')this.value='';" onkeydown="entersearch()"/>
                <input name="" type="button" class="search_btn" value="" onclick="return GoSearchUrl();" />

                <div class="clear"></div>

            </div>
        </div>
        <div class="clear"></div>
    </div>
    <nav class="Mainnav">
        <ul class="menuone">
            <li><a href="index.jsp" class="ona" id="nav1">首 页<span></span></a></li>
            <li><a href="consultant.jsp" class="ona" id="nav2">会诊医生<span></span></a></li>
            <li><a href="/goods/list" class="ona" id="nav3">产品目录<span></span></a></li>
            <li><a href="healthknow.jsp" class="ona" id="nav4">健康知识<span></span></a></li>
            <li><a href="userFeedback.jsp" class="ona" id="nav5">用户反馈<span></span></a></li>
            <li><a href="aboutus.jsp" class="ona" id="nav6">关于我们<span></span></a></li>
            <li><a href="contactUs.jsp" class="ona" id="nav7">联系我们<span></span></a></li>
            <div class="clear"></div>
        </ul>
    </nav>
</header>
<script type="text/javascript">
    $("#nav"+navid).addClass("active");

    //语言切换
    $(".checked-lan").click(function(){
        $(".language-menu").show();
    })
    $(".language-menu li").each(function(){
        $(this).click(function(){
            $(".checked-lan").find("a").html()=$(this).find("a").html();
            //$(".checked-lan").find("a").attr("href")=$(this).find("a").attr("href");
        })
    })
    $(".language-select").hover(function(){
    },function(){
        $(this).find(".language-menu").hide();
    })



</script>
<script type="text/javascript">
    //this function do not use jquery for honner page?
    function GoSearchUrl() {
        var searchinput = document.getElementById("key");
        if (searchinput.value == ""  || searchinput.value == "输入要搜素的信息") {
            alert("请输入关键字！");
            searchinput.focus();
            return false;
        }
        if (searchinput.value.length > 50) {
            alert("输入的关键字字数不要过多！");
            searchinput.focus();
            return false;
        }
        CheckString(searchinput.value);
    }

    function GoSreach(rs) {
        window.location = "{$syspath}search/search.aspx?key=" + escape(rs);
        return true;
    }

    function entersearch(){
        //alert(dd);
        var event = window.event || arguments.callee.caller.arguments[0];
        if (event.keyCode == 13)
        {
            GoSearchUrl();
        }
    }

    function CheckString(s) {
        // alert(s)
        var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）—|{}【】'；：“”'。，、？]")
        if (pattern.test(s)) {
            alert("不能输入特殊字符！");
            $(".sreach_ipu").focus();
            $(".sreach_ipu").val("");
            return false;
        }
        else {
            GoSreach(s);
        }
    }
</script>

<!--图片切换-->
<aside class="banner ban" style=" background:url(uploadfiles/banner_member.jpg) no-repeat top center; height:210px;">
    <div class="banlink">
        <!--<a href="#" class="a1">会员登录</a>
        <a href="#" class="a2">名医推荐</a>
        <a href="#" class="a3">咨询客服</a>-->
    </div>
</aside>
<!--图片切换 End-->
<aside class="Current"><em></em><a href="index.jsp">首页</a> > <span>会员中心</span></aside>

<section class="MemberMain Main">

    <div class="conbox">
        <div class="siderMem">
            <ul>
                <li class="on"><a href="personalData.jsp" class="a1">个人资料</a></li>

                <li ><a href="personalPasswordUpdate.jsp" class="a2" >密码修改</a></li>

                <li><a href="/goods/shopCar" class="a3">商品订单</a></li>

                <li><a href="aa.jsp" class="a4">商品退换货</a></li>

                <li><a href="/personal/consultantOrder" class="a5">咨询订单</a></li>

                <li><a href="#" class="a9">在线留言回复</a></li>
            </ul>
        </div>

        <div class="mainCont">
            <!--start-->
            <div class="infor-box">
                <div class="table-box box1">
                    <h3><span>个人资料修改</span></h3>
                    <form action="/user/updateUserData" method="post" id="userData">
                    <table>
                        <tr>
                            <td><span>邮箱:</span><input type="text" class="text" name="email" value="${tUser.email}"/></td>
                        </tr>
                        <tr>
                            <td><span>手机号码:</span><input type="text" class="text" name="phone" value="${tUser.phone}"/></td>
                        </tr>

                        <tr>
                            <td><span>真实姓名:</span><input type="text" class="text" name="name" value="${tUser.name}"/></td>
                        </tr>

                        <tr>
                            <td>
                                <span>所在地：</span>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="text" class="text" name="province" value="${tUser.province}"/><span>省</span></td>
                        </tr>
                        <tr>
                            <td><input type="text" class="text" name="city" value="${tUser.city}"/><span>市</span></td>
                        </tr>
                        <tr>
                            <td><input type="text" class="text" name="county" value="${tUser.county}"/><span>区</span></td>
                        </tr>
                        <tr>
                            <td><span >性别：</span>
                                <input type="radio" value="男" name="sex"/>男
                                <input type="radio" value="女" name="sex"/>女
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <span>生日：</span>
                                <input type="text" name="birthday" class="text" value="<fmt:formatDate value="${tUser.birthday}" type="date" dateStyle="long"/>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="member-change"><a class="button1" id="updateUserData"><input type="submit" value="修改"></a></p>
                            </td>
                        </tr>
                    </table>
                    </form>

                </div>
                <!--头像-->
                <div class="table-box box2">
                    <h3><span>个人资料修改</span></h3>
                    <p class="p1"><a class="img"><img src="${tUser.pictureUrl}"/></a></p>
                    <div class="p2">
                        <!--上传文件start-->
                        <form action="/user/upload" method="post" enctype="multipart/form-data">
                        <div class="FileBox demo2">
                            <div class="uploadBox">
                                <input name="uploadFile" type="file" class="file" onchange="UploadFile(this);" />
                                <span class="Btn">上传文件</span>
                            </div>
                            <input name="" class="text" type="text" id="FileName" />
                            <div class="clear"></div>
                            <p>限JPG格式，100x100px</p>
                            <input type="submit" class="button" value="确定上传" />
                            <div class="clear"></div>
                        </div>
                        </form>
                        <!--上传文件end-->
                    </div>

                    <p class="button1"><a></a></p>
                </div>
                <!--头像end-->
            </div>
            <!--end-->

        </div>
    </div>
</section>


<footer class="BottomBox">
    <div class="bottom">
        <div class="fbox1">
            <div class="f-address">地址：</div>
            <nav class="f-nav"><a href="#">流量统计</a> | <a href="#">网站地图</a> | <a href="#">法律声明</a> | <a href="#">友情链接</a></nav>
        </div>
        <div class="fbox2">
            <div class="f-copyright">Copyright © 2015 广州一代医药科技有限公司. All Rights Reserved
            </div>
            <div class="f-record">粤ICP备123456789号  Designed by <a href="#">我的虚拟世界店铺</a>.
            </div>
        </div>
    </div>
</footer>

<script type="text/javascript">
    //整站无图处理
    jQuery.each(jQuery("img"), function (i, n) { jQuery(n).error(function () { n.src = 'uploadfiles/nopic.jpg'; }); n.src = n.src; });

</script>

<script type="text/javascript">
    $(".p-list li").each(function (i, item) {
        if (Number(i + 1) % 3 == 0) {
            $(this).css("margin-right","0px");
        }
    });
</script>

<script type="text/javascript">
    //获取file的值
    function UploadFile(n){
        var UpFile = $(n).val();
        //alert(UpFile)
        $(n).parents(".uploadBox").next().val(UpFile);
    }
</script>

</body>
</html>