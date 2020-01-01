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
    <script  type="text/javascript"> var navid="5"</script>

    <script src="/Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        var stock=10;

        function jian(){

            var count = document.getElementById("value").value-1;
            if(count<1){
                document.getElementById("value").value = 1;
            }else{
                document.getElementById("value").value = count;
            }
        }
        function jia(){
            var count = parseInt(document.getElementById("value").value)+1;
            stock=1000;
            if(count>stock){
                document.getElementById("value").value = stock;
            }else{
                document.getElementById("value").value = count;
            }
        }

    </script>

</head>

<body >
<header class="Header">
    <div class="head">
        <a href="首页.html" class="logo"><img src="images/logo.jpg"  /></a>
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
            <li><a href="index.html" class="ona" id="nav1">首 页<span></span></a></li>
            <li><a href="会诊医生.html" class="ona" id="nav2">会诊医生<span></span></a></li>
            <li><a href="产品目录_列表页.html" class="ona" id="nav3">产品目录<span></span></a></li>
            <li><a href="健康知识.html" class="ona" id="nav4">健康知识<span></span></a></li>
            <li><a href="用户反馈.html" class="ona" id="nav5">用户反馈<span></span></a></li>
            <li><a href="关于我们.html" class="ona" id="nav6">关于我们<span></span></a></li>
            <li><a href="#" class="ona" id="nav7">联系我们<span></span></a></li>
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
<aside class="Current"><em></em><a href="index.html">首页</a> > <span>会员中心</span></aside>

<section class="MemberMain Main">

    <div class="conbox">
        <div class="siderMem">
            <ul>
                <li class="on"><a href="#" class="a1">个人资料</a></li>

                <li><a href="#" class="a2">密码修改</a></li>

                <li><a href="#" class="a3">商品订单</a></li>

                <li><a href="#" class="a4">商品退换货</a></li>

                <li><a href="#" class="a5">咨询订单</a></li>

                <li><a href="#" class="a6">会诊订单</a></li>
                <li><a href="#" class="a7">门诊订单</a></li>
                <li><a href="#" class="a8">历史病历</a></li>
                <li><a href="#" class="a9">在线留言回复</a></li>
            </ul>
        </div>

        <!--右边内容-->
        <div class="mainCont">

            <div class="bookBox Dt">
                <!--start-->
                <div class=" templet_jobs_006 ">
                    <ul>
                        <p class="status">
                            <span class="s1"><input type="checkbox" class="checkbox" />全部</span>
                            <span class="s2">订单商品</span>

                            <span class="s4">订单金额</span>
                            <span class="s5">数量</span>
                            <span class="s6">小计</span>
                            <span class="s7">操作</span>
                        </p>
                        <div class="clear"></div>
                        <!--从这里循环-->
                        <c:forEach items="${goodsOrderList}" var="good">
                        <li>
                            <div class="carbox">
                                <div class="sp6">
                                    <a href="#" style=" cursor:pointer;">删除</a>
                                </div>
                                <div class="sp5"><span>￥${good.orderTotalPrice}</span></div>
                                <div class="sp4">
                                    <a class="cut" onclick="jian();">-</a>
                                    <input type="text" class="num" value="1"  id="value"/>
                                    <a class="add" onclick="jia();">+</a>
                                </div>
                                <div class="sp3">
                                    <span>￥${good.orderTotalPrice}</span>
                                </div>

                                <div class="sp1">
                                    <a href="#"><img src="images/${good.orderPicture}" width="101" height="55"></a>
                                    <h6 class="h6"><a href="#">${good.goodsName}</a></h6>

                                </div>
                                <div class="sp0"><span><input type="checkbox" class="checkbox" /></span></div>
                            </div>
                        </li>
                        </c:forEach>
                        <%--<li>--%>
                            <%--<div class="carbox">--%>
                                <%--<div class="sp6">--%>
                                    <%--<a href="#" style=" cursor:pointer;">删除</a>--%>
                                <%--</div>--%>
                                <%--<div class="sp5"><span>￥1802.00</span></div>--%>
                                <%--<div class="sp4">--%>
                                    <%--<a class="cut">-</a>--%>
                                    <%--<input type="text" class="num"/>--%>
                                    <%--<a class="add">+</a>--%>
                                <%--</div>--%>
                                <%--<div class="sp3">--%>
                                    <%--<span>￥1802.00</span>--%>
                                <%--</div>--%>

                                <%--<div class="sp1">--%>
                                    <%--<a href="#"><img src="images/order_pic1.jpg" width="101" height="55"></a>--%>
                                    <%--<h6 class="h6"><a href="#">豪华大床房2</a></h6>--%>

                                <%--</div>--%>
                                <%--<div class="sp0"><span><input type="checkbox" class="checkbox" /></span></div>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <!--从这里循环end-->

                    </ul>
                    <div class="clear"></div>
                    <p class="pay-total">

                        <span class="sp2">应付总额<em>￥5406.00</em></span>
                        <span class="sp1">已选<em>3</em>件商品</span>
                    </p>
                </div>
                <!--end-->
            </div>
            <div class="last-submit"><a>提交订单</a></div>
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
