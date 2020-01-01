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
    <script  type="text/javascript"> var navid="3"</script>
    <script src="/Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $(".cate li").each(function(){
                $(this).click(function(){
                    $(".cate li").removeClass("on first");
                    $(this).addClass("on first");
                });
            });
        })
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
<aside class="banner ban" style=" background:url(uploadfiles/banner_product.jpg) no-repeat top center; height:210px;">
    <div class="banlink">
        <!--<a href="#" class="a1">会员登录</a>
        <a href="#" class="a2">名医推荐</a>
        <a href="#" class="a3">咨询客服</a>-->
    </div>
</aside>
<!--图片切换 End-->
<aside class="Current"><em></em><a href="index.jsp">首页</a> > <span>产品目录</span></aside>

<section class="ProductMain Main">
    <ul class="cate">
        <li ><a href="/goods/listByBigTypeId?bigTypeId=1" class="a1">口腔护理</a></li>
        <li ><a href="/goods/listByBigTypeId?bigTypeId=2" class="a2">康复软件</a></li>
        <li class="on first"><a href="/goods/listByBigTypeId?bigTypeId=3" class="a3">康复训练</a></li>
        <li ><a href="/goods/listByBigTypeId?bigTypeId=4" class="a4">康复器材</a></li>
    </ul>
    <div class="conbox">
        <!--start-->
        <div class="product-box">

            <div class="p-menu">
                <ul>
                    <li>
                        <div>
                            <span class="first">类别</span>
                            <c:forEach items="${goodsTypeList}" var="typeList">
                                <span><a href="/goods/checkType?id=${typeList.id}">${typeList.goodsType}</a></span>
                            </c:forEach>
                        </div>
                    </li>

                    <li>
                        <div>
                            <span class="first">品牌</span>
                            <c:forEach items="${goodsBrandList}" var="brandList">
                                <span><a href="/goods/checkBrand?id=${brandList.id}">${brandList.goodsBrand}</a></span>
                            </c:forEach>
                        </div>
                    </li>
                </ul>
            </div>
            <!--列表 start-->
            <div class="p-list">
                <ul>
                    <c:forEach items="${goodsList}" var="goods">
                        <li>
                            <div>
                                <a class="img" href="/goods/details?goodsId=${goods.goodsId}"><img src="/images/${goods.goodsPicture}" width="311" height="108" /></a>
                                <h3><a class="title" href="#">${goods.goodsName}</a></h3>
                                <p>${goods.goodsExplain}</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!--列表 end-->
            <div class="clear"></div>
            <!--*pages*-->
            <wtl:Pager   PageSize="7" TargetID="mylist1" Footer="5" IsNullShow="true">
                <div class='Pages3'>
                    <span class='p_count'>共<b>2</b>页</span>
                    <span class='p_cur'>当前：第<b>1</b>页 </span>
                    <span class='p_page'>
                                <a href='{$FirstPageUrl}' class='a_first'>首页</a>
                                <a href='{$PrevPageUrl}' class='a_prev'>上一页</a>
                        <!--<em class='num'>
                        <Numeric>
                            <a href='{$PageUrl}' class='{$PageNumClass}' id='pageNum{$PageNum}'>{$PageNum}</a>
                        </Numeric>
                        </em>-->
                                <a href='{$NextPageUrl}' class='a_next'>下一页</a>
                                <a href='{$LastPageUrl}' class='a_end'>末页</a>
                            </span>

                </div>

            </wtl:Pager>
            <!--*pages*-->

        </div>
        <!--end-->
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

</body>
</html>
