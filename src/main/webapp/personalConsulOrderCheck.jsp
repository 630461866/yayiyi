<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
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
    <script  type="text/javascript"> var navid="5"</script>
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
                <li ><a href="personalData.jsp" class="a1">个人资料</a></li>

                <li ><a href="personalPasswordUpdate.jsp" class="a2" >密码修改</a></li>

                <li><a href="personalGoodsOrder.jsp" class="a3">商品订单</a></li>

                <li><a href="personalReturnGoods.jsp" class="a4">商品退换货</a></li>

                <li><a href="/personal/consultantOrder" class="a5">咨询订单</a></li>

                <li><a href="#" class="a6">会诊订单</a></li>
                <li><a href="#" class="a7">门诊订单</a></li>
                <li><a href="#" class="a8">历史病历</a></li>
                <li><a href="#" class="a9">在线留言回复</a></li>
            </ul>
        </div>

        <!--右边内容-->
        <div class="mainCont">

            <div class="bookBox2 Dt">

                <h3>咨询申请单样式</h3>
                <!--start-->
                <div class="book-table">
                    <div class="line1">
                        <span class="sp1">姓名：<em>${user.name}</em></span>
                        <span class="sp2">性别：<em>${user.sex == 1 ? "男" : "女" }</em></span>
                        <span class="sp3">出生年月：<em><fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate> </em></span>
                        <span class="sp4">所在地：<em>${location}</em></span>
                    </div>
                    <div class="line1">
                        <span class="sp1">咨询项目：<em>${projectName}</em></span>
                        <span class="sp2">咨询目的：<em>${infomation.consultPurpose}</em></span>
                        <span class="sp3"></span>
                        <span class="sp4"></span>
                    </div>

                    <div class="part1">
                        <p class="p1" >具体情况</p>
                        <p class="p2">
                            <span class="sp1">发病经过</span>
                            <span class="sp2">既往病史</span>
                            <span class="sp3">既往病史</span>
                        </p>
                        <p class="p3">
             <span class="sp1">
                <a>开始时间：<fmt:formatDate value="${infomation.startDate}" pattern="yyyy-MM-dd"></fmt:formatDate></a>
                <a>并发症状时间：${infomation.complicationDate}天</a>
              </span>
                            <span class="sp2">
                <a>所患疾病:</a>
                <input type="text" class="text" disabled="disabled" value="${medicalHistory.disease}"/>
                <%--<select id="18168" name="18168" class="select1">--%>
                      <%--<option value=""></option>--%>
                      <%--<option value="33">口腔</option>--%>
                      <%--<option value="34">眼睛</option>--%>
                 <%--</select>--%>
                <br>治疗医院:<input type="text" class="text" disabled="disabled" value="${medicalHistory.hospital}">

                <%--<a>治疗医院:</a>--%>
                <%--<select id="18168" name="18168" class="select1">--%>
                      <%--<option value=""></option>--%>
                      <%--<option value="33">口腔</option>--%>
                      <%--<option value="34">眼睛</option>--%>
                 <%--</select>--%>

             </span>

                            <span class="sp3">
                <a>所患疾病:</a>
                <input type="text" class="text" disabled="disabled" value="${medicalHistory.disease}">
                 <br>治疗医院:<input type="text" class="text" disabled="disabled" value="${medicalHistory.hospital}">


             </span>
                        </p>
                        <p class="p4">
             <span class="sp1">
                <a>所患疾病:</a>
                <input type="text" class="text" disabled="disabled" value="${medicalHistory.disease}"/>
             </span>
                            <span class="sp2">
                <a>治疗方式:</a>
                <input type="text" class="text" disabled="disabled" value="${medicalHistory.treatmentWay}">

                 <a>主治医师:</a>
                <input type="text" class="text" disabled="disabled" value="${medicalHistory.attendDoctor}"/>

             </span>
                            <span class="sp3">
                 <a>治疗方式:</a>
                <input type="text" class="text" disabled="disabled" value="${medicalHistory.treatmentWay}">

                 <a>主治医师:</a>
               <input type="text" class="text" disabled="disabled" value="${medicalHistory.attendDoctor}"/>
             </span>
                        </p>
                    </div>
                    <div class="time">咨询时间：<fmt:formatDate value="${orderDate}" pattern="yyyy-MM-dd"></fmt:formatDate></div>
                    <div class="text-show">
                        <a>治疗方式:</a>
                        <input type="textarea" class="textarea" disabled="disabled" value="${medicalHistory.treatmentWay}"/>
                    </div>
                </div>
                <!--end-->
            </div>
        </div>
        <!--右边内容 end-->
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
    $(".bookcontent ul").hide();
    $(".bookcontent ul:first").show();
    $(".templet_jobs_005 ul li").click(function(){

        $(".templet_jobs_005 ul li").removeClass("on");
        $(this).addClass("on");
        $(".bookcontent ul").hide();
        var a=$(this).index();
        $(".bookcontent ul").eq(a).show();
    })
</script>

</body>
</html>
