<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <script src="/Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script  type="text/javascript">

        var navid="1"

        $(function () {


            $(".add-site").click(function (){

                var name = $(".add-site").text();

                if(name=="收藏本站"){
                    $(".add-site").text("取消收藏");
                }else{
                    $(".add-site").text("收藏本站");
                }

            })

        })


    </script>
</head>

<body >
<header class="Header">
    <div class="head">
        <a href="#" class="logo"><img src="images/logo.jpg"  /></a>
        <div class="head-Right">
            <a href="javascript:void(0);" class="add-site">收藏本站</a>
            <div class="language-select">
                <span class="checked-lan"><a >ENGLISH</a><em></em></span>
                <ul class="language-menu">
                    <li><a href="index2.jsp">ENGLISH</a></li>
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
<aside class="H_ban">
    <ul>
        <li style="background:url(uploadfiles/hban1.jpg) no-repeat center top;"><a  target="_blank"></a></li>
        <li style="background:url(uploadfiles/hban1.jpg) no-repeat center top;"><a  target="_blank"></a></li>
        <li style="background:url(uploadfiles/hban1.jpg) no-repeat center top;"><a  target="_blank"></a></li>
        <li style="background:url(uploadfiles/hban1.jpg) no-repeat center top;"><a  target="_blank"></a></li>
    </ul>
    <div class="hd"><a class="prev"></a><a class="next"></a></div>
    <script type="text/javascript" src="Scripts/index.js"></script>
    <script type="text/javascript">$(".H_ban").Banner();</script>
</aside>
<!--图片切换 End-->

<div class="Hcontainer">

    <!--导医咨询-->
    <section class="H-consulting">
        <h2 class="H-consulting-title">
            导医咨询<em>consulting</em>
        </h2>
        <ul class="H-consul-box">
            <li>
                <a href="consultant.jsp" class="img"><img src="images/himg1.png"></a>
                <a href="consultant.jsp" class="txt">会诊医生<em>consultation</em></a>
            </li>
            <li>
                <a href="consultant2.jsp" class="img"><img src="images/himg2.png"></a>
                <a href="consultant2.jsp" class="txt">保健医生<em>Care doctor</em></a>
            </li>
            <li>
                <a href="consultant3.jsp" class="img"><img src="images/himg3.png"></a>
                <a href="consultant3.jsp" class="txt">专科医生<em>Specialized</em></a>
            </li>
        </ul>
        <div class="H-loginbox">
            <div class="login-name"><span class="active">用户登录</span></div>
            <div class="loginform">
                <c:if test="${tUser eq null}">
                <form action="user/login" method="post">
                    <dl><label>用户名<span> > </span></label><input name="name" type="text" class="inputtxt"></dl>
                    <dl><label>密　码<span> > </span></label><input name="password" type="password" class="inputtxt"></dl>
                    <div class="div"><a href="consultantsRegister.jsp">立即注册</a> | <a href="forgetPassword.jsp">忘记密码</a><input class="btn loginbtn" type="submit" value="登录"><input></div>
                </form>
                </c:if>
                <c:if test="${!(empty tUser)}">
                    <dl>${tUser.name}，欢迎您</dl>
                <dl> <a href="personalData.jsp">会员中心</a></dl>
                    <dl><a href="/logout">退出</a></dl>
                </c:if>
            </div>
        </div>
        <div class="clear"></div>
    </section>
    <!--导医咨询 End-->

    <!--产品介绍-->
    <section class="H-productintro">
        <div class="H-proinfo">
            <div class="txt">
                <h3 class="Mtitle">产品介绍</h3>
                <h2 class="Ltitle">医疗康复软件设备</h2>
                <p class="con">医院信息系统(EU-HIS V5.0系统)是全面升级的最新版本，以"患者"为中心，以"人、财、物"为重点的开发理念，基本解决了医院手工作业"三长一短"的问题。系统实现医院"一卡通"管理和医生电子处方功能，医院自己可个性化灵活设置所需各种窗体、财务报表，以满足各医院不同需求...</p>
            </div>
            <div class="img"><img src="uploadfiles/img1.jpg"></div>
        </div>
        <div class="H-proinfo">
            <div class="txt">
                <h3 class="Mtitle">产品介绍</h3>
                <h2 class="Ltitle">牙齿矫正器</h2>
                <p class="con">常见的牙齿矫正器按类型可分为固定式和活动式两大类的，固定矫正器是位置固定好了，不能拆卸的，而活动矫正器则是可以随意拆卸，使用范围广。两者相辅相成，结合使用矫正效果较好。矫正力可因矫正器离位而消失，可避免损伤牙体牙周组织，如感觉不适或疼痛时，患者可自行取下。</p>
            </div>
            <div class="img"><img src="images/MSEyachijiaozheng.png" height="180" width="500"></div>
        </div>
        <div class="H-proinfo">
            <div class="txt">
                <h3 class="Mtitle">产品介绍</h3>
                <h2 class="Ltitle">多动症沙盘游戏</h2>
                <p class="con">1966，Kalff将“游戏王国技术” 与荣格的分析心理学相结合 ,同时借鉴了中国传统文化的思想 ,创造出一种更为成熟的心理治疗的技术 ,并最终以“沙盘游戏” 来命名。经过近40年来的发展 ,目前 ,在欧美及日本 ,沙盘游戏已成为最为时髦的心理分析技术之一</p>
            </div>
            <div class="img"><img src="images/SPYX.png" height="180" width="500"></div>
        </div>
        <div class="H-proinfo">
            <div class="txt">
                <h3 class="Mtitle">产品介绍</h3>
                <h2 class="Ltitle">云南白药牙膏</h2>
                <p class="con">抵制牙龈出血，修复口腔溃疡，改善牙龈肿痛，袪除口腔异味,就选云南白药牙膏。坚持使用云南白药牙膏每天刷牙2～3次，每次刷牙1～3分钟；若患口腔溃疡，刷牙结束以后上牙膏在口腔内含漱2～3分钟。...</p>
            </div>
            <div class="img"><img src="images/YNBYliulanxiang.png" height="180" width="500"></div>
        </div>
        <div class="H-proname">
            <a href="javascript:void(0);">康复软件<span></span></a>
            <a href="javascript:void(0);">康复器材<span></span></a>
            <a href="javascript:void(0);">多动症管理配套游戏<span></span></a>
            <a href="javascript:void(0);">牙膏<span></span></a>
        </div>
    </section>
    <!--产品介绍 End-->

    <!--名医推荐-->
    <section class="H-Recodoctors">
        <h2 class="H-Recotitle"><img src="images/recotitleimg.png" width="60" height="66"><br>
            名医推荐<em>recommend</em>
        </h2>
        <ul class="H-Recolist">
            <li>
                <a href="/doctor/info?departments=1" class="img"><img src="images/doctor3_pic1.jpg" width="97" height="114"></a>
                <div class="txt">
                    <h3><a href="/doctor/info?departments=1">张莉莉教授</a></h3>
                    <span class="tc">特长：</span><br>
                    口腔修复<br>
                    种牙
                </div>
            </li>
            <li>
                <a href="/doctor/info?departments=2" class="img"><img src="images/doctor3_pic3.jpg" width="97" height="114"></a>
                <div class="txt">
                    <h3><a href="/doctor/info?departments=2">张美丽医生</a></h3>
                    <span class="tc">特长：</span><br>
                    洗牙<br>
                    拔牙
                </div>
            </li>
            <li>
                <a href="/doctor/info?departments=3" class="img"><img src="images/meimei.jpg" width="97" height="114"></a>
                <div class="txt">
                    <h3><a href="/doctor/info?departments=3">谢美美</a></h3>
                    <span class="tc">特长：</span><br>
                    口腔修复<br>
                    口腔种植修复
                </div>
            </li>
        </ul>
    </section>
    <!--名医推荐 End-->

    <!--团体展示-->
    <section class="H-Groupexhibition">
        <h2 class="Grouptitle"><span class="redL"></span><span class="redR"></span><span class="txt">团体展示<em>Group exhibition</em></span></h2>
        <ul class="H-Grouplist">
            <li class="first">
                <a href="#" class="img"><img src="uploadfiles/gimg1.jpg" width="224" height="174"></a>
                <div class="txt">
                    <h2 class="title"><a href="#" class="name">英国约克郡癌症研究中心</a><a href="#" class="more">+</a></h2>
                    <p class="con">扩大企业的影响力，增加网站的曝光率，
                        实现业务增长</p>
                </div>
            </li>
            <li>
                <a href="#" class="img"><img src="uploadfiles/gimg2.jpg" width="224" height="174"></a>
                <div class="txt">
                    <h2 class="title"><a href="#" class="name">英国约克郡癌症研究中心</a><a href="#" class="more">+</a></h2>
                    <p class="con">扩大企业的影响力，增加网站的曝光率，
                        实现业务增长</p>
                </div>
            </li>
            <li>
                <a href="#" class="img"><img src="uploadfiles/gimg3.jpg" width="224" height="174"></a>
                <div class="txt">
                    <h2 class="title"><a href="#" class="name">英国约克郡癌症研究中心</a><a href="#" class="more">+</a></h2>
                    <p class="con">扩大企业的影响力，增加网站的曝光率，
                        实现业务增长</p>
                </div>
            </li>
            <li>
                <a href="#" class="img"><img src="uploadfiles/gimg4.jpg" width="224" height="174"></a>
                <div class="txt">
                    <h2 class="title"><a href="#" class="name">英国约克郡癌症研究中心</a><a href="#" class="more">+</a></h2>
                    <p class="con">扩大企业的影响力，增加网站的曝光率，
                        实现业务增长</p>
                </div>
            </li>
        </ul>
    </section>
    <!--团体展示 End-->

    <section class="H-lastbox">
        <div class="H-New">
            <h2 class="H-title"><span>健康知识</span><em>Health knowledge</em><a href="#" class="more">+</a></h2>
            <ul class="H-newlist">
                <li class="top">
                    <a href="#" class="img"><img src="uploadfiles/hnew.jpg" width="130" height="80"></a>
                    <div class="txt">
                        <h3 class="title"><a href="#">防癌吃什么食品</a></h3>
                        <p class="con">水果，不仅仅只是好吃，更是好用，都知道，水果中富
                            含丰富的维生素，尤其是维生素A和维生素C...</p>
                    </div>
                </li>
                <li><a href="#"><span></span>健康饮食小常识:厨房药材不能乱用 调料多不一定味道好...</a></li>
                <li class="last"><a href="#"><span></span>健康饮食小常识:厨房药材不能乱用 调料多不一定味道好...</a></li>

            </ul>

        </div>
        <div class="H-Contact">
            <h2 class="H-title contatitle"><span>联系我们</span><em>Contact us</em><a href="#" class="more">+</a></h2>
            <div class="Hcon">
                <p>专业人士解答客户疑问，实时为客户解决问题。
                </p>
                <div class="jcon">
                    <span class="j1">关于我们</span>
                    <span class="jtel">400-000-0000</span>
                    <span class="j2">（24小时免费热线）</span>
                    <span class="j1">总机：020-22222222 </span>
                </div>
            </div>


        </div>
    </section>

</div>
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
    //不同人群登录
    $(".login-name span").eq(0).addClass("active");
    $(".loginform form").eq(0).show();
    $(".login-name span").each(function(){
        var ind=$(this).index();
        $(this).hover(function(){
            $(this).addClass("active");
            $(this).siblings("span").removeClass("active");
            $(".loginform form").eq(ind).show();
            $(".loginform form").eq(ind).siblings("form").hide();
        })
    })
    //产品介绍
    $(".H-productintro .H-proname a").eq(0).addClass("active");
    $(".H-productintro .H-proinfo").eq(0).show();
    $(".H-productintro .H-proname a").each(function(){
        var ind=$(this).index();
        $(this).hover(function(){
            $(this).addClass("active");
            $(this).siblings("a").removeClass("active");
            $(".H-productintro .H-proinfo").eq(ind).show();
            $(".H-productintro .H-proinfo").eq(ind).siblings(".H-proinfo").hide();
        })
    })
</script>
</body>
</html>
