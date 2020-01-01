
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <base href="${pageContext.request.contextPath}/">zi
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="Author" content="">
    <meta content="" name="design">
    <title>广州一代医药科技有限公司</title>
    <link rel="stylesheet" type="text/css" media="all" href="css/css_whir.css"/>
    <script type="text/javascript" src="Scripts/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.SuperSlide.2.1.1.js"></script>
    <!--[if lt IE 9]><script type="text/javascript" src="scripts/html5shiv.v3.72.min.js"></script><![endif]-->
    <script  type="text/javascript"> var navid="4"</script>
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
<aside class="banner ban" style=" background:url(uploadfiles/banner_health.jpg) no-repeat top center; height:210px;">
    <div class="banlink">
        <!--<a href="#" class="a1">会员登录</a>
        <a href="#" class="a2">名医推荐</a>
        <a href="#" class="a3">咨询客服</a>-->
    </div>
</aside>
<!--图片切换 End-->
<aside class="Current"><em></em><a href="index.jsp">首页</a> > <span>健康知识</span></aside>

<section class="HealthMain Main">
    <ul class="cate">
        <li ><a href="healthknow.jsp" class="a1">口腔溃疡</a></li>
        <li ><a href="bromopnea.jsp" class="a2">口臭</a></li>
        <li class="on first"><a href="bleedingGums.jsp" class="a3">牙龈出血</a></li>
        <li ><a href="hypertension.jsp" class="a4">高血压</a></li>
    </ul>
    <div class="conbox">
        <!--start-->
        <article class="NewsList">
            <ul>
                <article class="topnews">
                    <figure class="fimg">
                        <a href="#"><img src="images/YYCX.png" width="186" height="127"></a>
                    </figure>
                    <h3 class="h3"><a href="#">口腔小知识：牙龈出血的原因及预防</a></h3>

                    <p>牙龈出血是口腔科常见症状之一，是指牙龈自发性的或由于轻微刺激引起的少量流血。轻者表现为仅在吮吸、刷牙、咀嚼较硬食物时唾液中带有血丝，重者...</p>
                    <a href="#" class="more">&gt;&gt; 查看更多</a>
                </article>

                <li><span><time pubtime="2019/11/18">2019/11/18</time></span><a href="#">当牙齿周围发生病变时，其主要症状是牙龈水肿、发炎、新生血管充血扩张，一旦咀嚼或刷牙时，常可引起出血</a></li>
                <li><span><time pubtime="2019/11/11">2019/11/11</time></span><a href="#">如血液系统疾病、糖尿病等。致病方式通常是使全身的免疫力下降，诱发牙龈炎症、凝血系统障碍、血管的器质性变化等等</a></li>
                <li><span><time pubtime="2019/11/02">2019/11/02</time></span><a href="#">牙齿在靠近牙龈处因蛀牙形成了黑褐色的龋洞后，其边缘不整齐而呈锋利状，常会刺激牙龈发生溃疡而引起出血。</a></li>
                <li><span><time pubtime="2019/10/23">2019/10/23</time></span><a href="#">坚持早晚刷牙。应选用药物牙膏刷牙，最好买几种不同的具有止血功效的药物牙膏交替使用，最好使用不同的品牌。</a></li>
                <li><span><time pubtime="2019/10/17">2019/10/17</time></span><a href="#">每餐饭后及晚上要漱口，牙龈炎患者可使用漱口水，达到杀灭口腔及牙周大部分致病菌，以及清新口气的作用</a></li>
                <li><span><time pubtime="2019/10/06">2019/10/06</time></span><a href="#">定期到医院洗牙是非常重要的牙齿保健方法，一般半年到一年一次。若是牙周病的患者，要进行系统的牙周治疗。</a></li>
                <li><span><time pubtime="2019/9/25">2019/9/25</time></span><a href="#">保护口腔，呵护牙龈！</a></li>
                <a href="#" class="more">&gt;&gt; 查看往期小知识</a>
            </ul>

            <!--*pages*-->
            <div class="Pages4">
                        <span class="p_page">
                           <a href='{$FirstPageUrl}' class='a_first'>首页</a>
                           <a href="javascript:void(0);" class="a_prev"><<</a>
                           <em class="num">
                             <a href="/yzfd201412017318/gsxw/index_28.aspx?page=1" class="a_cur" id="A1">1</a>
                           </em>
                            <a href="javascript:void(0);" class="a_next">>></a>
                            <a href='{$LastPageUrl}' class='a_end'>末页</a>
                        </span>
            </div>
            <!--*pages*-->
        </article>
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
