<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script  type="text/javascript"> var navid="2"</script>
    <script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>

    <link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
    <script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
    <script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="js/H-ui.js"></script>
    <script type="text/javascript" src="js/H-ui.admin.js"></script>

    <script type="text/javascript">

        $(function () {
            var doctorId;

            $(".sin").click(function () {
                doctorId  =  $(this).val();
            })

            $(".a_next").click(function () {



                if(doctorId!=null){
                    $(".a_next").attr("href","/project/addConsultOrder?doctorId="+doctorId);
                }else{
                    layer.msg('请选择医生!', {icon: 5,time:2000});
                    return;
                }
            })



        })

        function  doctorDitals(title,url,w,h) {




            layer_show(title,url,w,h)



        }

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
<aside class="banner ban" style=" background:url(uploadfiles/h01.jpg) no-repeat top center; height:210px;">
    <div class="banlink">
        <a href="#" class="a1">会员登录</a>
        <a href="#" class="a2">名医推荐</a>
        <a href="#" class="a3">咨询客服</a>
    </div>
</aside>
<!--图片切换 End-->
<aside class="Current"><em></em><a href="index.jsp">首页</a> > <span>会诊医生</span></aside>

<section class="DoctorMain Main">
    <ul class="cate">
        <li class="on first"><a href="#" class="a1">会诊医生</a></li>
        <li ><a href="#" class="a2">保健医生</a></li>
        <li ><a href="#" class="a3">专科医生</a></li>
        <li ><a href="#" class="a4">专科医生</a></li>
    </ul>
    <div class="conbox">
        <div class="siderDoc">
            <ul>
                <li><a href="consultantLogin.jsp">注册/登录</a></li>
                <dl><img src="images/docsider-coin.png"></dl>
                <li ><a href="#">选择咨询项目</a></li>
                <dl><img src="images/docsider-coin.png"></dl>
                <li class="on"><a href="#">选择医生</a></li>
                <dl><img src="images/docsider-coin.png"></dl>
                <li><a href="#">提交咨询信息</a></li>
                <dl><img src="images/docsider-coin.png"></dl>
                <li><a href="#">订单支付</a></li>
                <dl><img src="images/docsider-coin.png"></dl>
                <li><a href="#">完成</a></li>
            </ul>
        </div>

        <div class="mainCont">
            <div class="publicBox">
                <ul>

                    <c:forEach items="${doctorList}" var="doctor">
                    <li>
                        <a class="imgBox" href="javascript:void(0)" ><img src="${doctor.photo}"></a>
                        <h3 class="h3"><a href="#" target="_blank">职位</a><span>${doctor.position}</span></h3>
                        <p class="p2">好评数：<span>${doctor.goodcount}</span></p>
                        <p class="p3">姓名: <span>${doctor.doctorName}</span></p>
                        <a href="javascript:void(0)" class="btn" onclick='doctorDitals("医生简介","ditals/doctor?doctorId=+${doctor.doctorId}","800","500")'>医生简介</a>
                        <p class="p4">选择: <input type="checkbox" value="${doctor.doctorId}" class="sin"></p>
                    </li>
                    </c:forEach>

            </div>
            <!--*pages*-->
            <wtl:Pager   PageSize="5" TargetID="mylist1" Footer="5" IsNullShow="true">
                <div class='Pages'>
                        <span class='p_page'>
                            <%--<a  href="/project/list" class='a_prev'>上一步</a>--%>
                            <a  href="javascript:void(0)"  class='a_next '>下一步</a>
                        </span>
                </div>
            </wtl:Pager>
            <!--*pages*-->

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

</body>
</html>
