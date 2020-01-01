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
    <title>Guangzhou first generation pharmaceutical technology</title>
    <link rel="stylesheet" type="text/css" media="all" href="css/css_whir.css"/>
    <script type="text/javascript" src="Scripts/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.SuperSlide.2.1.1.js"></script>
    <!--[if lt IE 9]><script type="text/javascript" src="scripts/html5shiv.v3.72.min.js"></script><![endif]-->
    <script  type="text/javascript"> var navid="1"</script>
</head>

<body >
<header class="Header">
    <div class="head">
        <a href="#" class="logo"><img src="images/logo.jpg"  /></a>
        <div class="head-Right">
            <a href="#" class="add-site">Collect</a>
            <div class="language-select">
                <span class="checked-lan"><a >ENGLISH</a><em></em></span>
                <ul class="language-menu">
                    <li><a href="#">ENGLISH</a></li>
                    <li><a href="index.jsp">Chinese</a></li>
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
            <li><a href="index.jsp" class="ona" id="nav1">Home<span></span></a></li>
            <li><a href="consultant.jsp" class="ona" id="nav2">Consultation<span></span></a></li>
            <li><a href="/goods/list" class="ona" id="nav3">product list<span></span></a></li>
            <li><a href="healthknow.jsp" class="ona" id="nav4">health<span></span></a></li>
            <li><a href="userFeedback.jsp" class="ona" id="nav5">customer<span></span></a></li>
            <li><a href="aboutus.jsp" class="ona" id="nav6">about us<span></span></a></li>
            <li><a href="contactUs.jsp" class="ona" id="nav7">contact us<span></span></a></li>
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
            Vaccine consulting<em>consulting</em>
        </h2>
        <ul class="H-consul-box">
            <li>
                <a href="consultant.jsp" class="img"><img src="images/himg1.png"></a>
                <a href="consultant.jsp" class="txt">Consultation doctors<em>consultation</em></a>
            </li>
            <li>
                <a href="consultant2.jsp" class="img"><img src="images/himg2.png"></a>
                <a href="consultant2.jsp" class="txt">Health Doctors<em>Care doctor</em></a>
            </li>
            <li>
                <a href="consultant3.jsp" class="img"><img src="images/himg3.png"></a>
                <a href="consultant3.jsp" class="txt">Specialist<em>Specialized</em></a>
            </li>
        </ul>
        <div class="H-loginbox">
            <div class="login-name"><span class="active">users login</span></div>
            <div class="loginform">
                <c:if test="${tUser eq null}">
                <form action="user/login" method="post">
                    <dl><label>name<span> > </span></label><input name="name" type="text" class="inputtxt"></dl>
                    <dl><label>word<span> > </span></label><input name="password" type="password" class="inputtxt"></dl>
                    <div class="div"><a href="consultantsRegister.jsp">Register</a> | <a href="forgetPassword.jsp">forget word</a><input class="btn loginbtn" type="submit" value="登录"><input></div>
                </form>
                </c:if>
                <c:if test="${!(empty tUser)}">
                    <dl>${tUser.name}，Welcome you</dl>
                <dl> <a href="personalData.jsp">Member Center</a></dl>
                    <dl><a href="/logout">quit</a></dl>
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
                <h3 class="Mtitle">product presentation</h3>
                <h2 class="Ltitle">Medical rehabilitation software equipment</h2>
                <p class="con">Medical rehabilitation software hospi traditional Chinese culture to create a more mature psychotherapy techniquetal information system (eu-his V5.0 system) is the  set up the required forms...</p>
            </div>
            <div class="img"><img src="uploadfiles/img1.jpg"></div>
        </div>
        <div class="H-proinfo">
            <div class="txt">
                <h3 class="Mtitle">product presentation </h3>
                <h2 class="Ltitle">dental braces</h2>
                <p class="con">Common orthodontic devices can be divided into two types: fixed and movable. traditional Chinese culture to create a more mature psychotherapy technique Fixed orthodontic devices are fixed in position.</p>
            </div>
            <div class="img"><img src="images/MSEyachijiaozheng.png" height="180" width="500"></div>
        </div>
        <div class="H-proinfo">
            <div class="txt">
                <h3 class="Mtitle">product presentation </h3>
                <h2 class="Ltitle">Adhd sandbox game</h2>
                <p class="con">" with jung's analytical psychology and borrowed from traditional Chinese culture to create a more mature psychotherapy technique, which was eventually named "sand game".After nearly 40 years of development, sandbox has become one of the most fashionable psychoanalytic techniques in Europe, America and Japan</p>
            </div>
            <div class="img"><img src="images/SPYX.png" height="180" width="500"></div>
        </div>
        <div class="H-proinfo">
            <div class="txt">
                <h3 class="Mtitle">product presentation </h3>
                <h2 class="Ltitle">Yunnan Baiyao toothpaste </h2>
                <p class="con">Resist gingival bleeding, repair oral ulcer, improve gingival swelling and pain, remove bad breath, choose yunnan baiyao toothpaste.Insist on using yunnan baiyao toothpaste to brush 2 ~ 3 times a day, 1 ~ 3 minutes each time;If you have an oral ulcer, gargle the toothpaste in your mouth for 2-3 minutes after brushing..</p>
            </div>
            <div class="img"><img src="images/YNBYliulanxiang.png" height="180" width="500"></div>
        </div>
        <div class="H-proname">
            <a href="javascript:void(0);">Recovery<span></span></a>
            <a href="javascript:void(0);">rehabilitation<span></span></a>
            <a href="javascript:void(0);">adhd management<span></span></a>
            <a href="javascript:void(0);">toothpaste<span></span></a>
        </div>
    </section>
    <!--产品介绍 End-->

    <!--名医推荐-->
    <section class="H-Recodoctors">
        <h2 class="H-Recotitle"><img src="images/recotitleimg.png" width="60" height="66"><br>
            Doctors recommend<em>recommend</em>
        </h2>
        <ul class="H-Recolist">
            <li>
                <a href="/doctor/info?departments=1" class="img"><img src="images/doctor3_pic1.jpg" width="97" height="114"></a>
                <div class="txt">
                    <h3><a href="/doctor/info?departments=1">Professor lili zhang</a></h3>
                    <span class="tc">speciality ：</span><br>
                    prosthodontics

                </div>
            </li>
            <li>
                <a href="/doctor/info?departments=2" class="img"><img src="images/doctor3_pic3.jpg" width="97" height="114"></a>
                <div class="txt">
                    <h3><a href="/doctor/info?departments=2">Zhang meili</a></h3>
                    <span class="tc">speciality ：</span><br>
                    toothwash

                </div>
            </li>
            <li>
                <a href="/doctor/info?departments=3" class="img"><img src="images/meimei.jpg" width="97" height="114"></a>
                <div class="txt">
                    <h3><a href="/doctor/info?departments=3">meimei</a></h3>
                    <span class="tc">speciality ：</span><br>
                    prosthodontics

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
                    <h2 class="title"><a href="#" class="name">Cancer research centre</a><a href="#" class="more">+</a></h2>
                    <p class="con">Expand the influence of the enterprise, increase the exposure rate of the website
                        </p>
                </div>
            </li>
            <li>
                <a href="#" class="img"><img src="uploadfiles/gimg2.jpg" width="224" height="174"></a>
                <div class="txt">
                    <h2 class="title"><a href="#" class="name">Cancer research centre</a><a href="#" class="more">+</a></h2>
                    <p class="con">Expand the influence of the enterprise, increase the exposure rate of the website
                        </p>
                </div>
            </li>
            <li>
                <a href="#" class="img"><img src="uploadfiles/gimg3.jpg" width="224" height="174"></a>
                <div class="txt">
                    <h2 class="title"><a href="#" class="name">Cancer research centre</a><a href="#" class="more">+</a></h2>
                    <p class="con">Expand the influence of the enterprise, increase the exposure rate of the website
                        </p>
                </div>
            </li>
            <li>
                <a href="#" class="img"><img src="uploadfiles/gimg4.jpg" width="224" height="174"></a>
                <div class="txt">
                    <h2 class="title"><a href="#" class="name">Cancer research centre</a><a href="#" class="more">+</a></h2>
                    <p class="con">Expand the influence of the enterprise, increase the exposure rate of the website
                        </p>
                </div>
            </li>
        </ul>
    </section>
    <!--团体展示 End-->

    <section class="H-lastbox">
        <div class="H-New">
            <h2 class="H-title"><span>Health knowledge</span><em>Health knowledge</em><a href="#" class="more">+</a></h2>
            <ul class="H-newlist">
                <li class="top">
                    <a href="#" class="img"><img src="uploadfiles/hnew.jpg" width="130" height="80"></a>
                    <div class="txt">
                        <h3 class="title"><a href="#">What food does cancer prevention eat</a></h3>
                        <p class="con">
                            Fruit, not only delicious, but also easy to use, as you know, the rich in fruit</p>
                    </div>
                </li>
                <li><a href="#"><span></span>Healthy diet tips: kitchen herbs can not be misused</a></li>
                <li class="last"><a href="#"><span></span>Healthy diet tips: kitchen herbs can not be misused</a></li>

            </ul>

        </div>
        <div class="H-Contact">
            <h2 class="H-title contatitle"><span>Contact us</span><em>Contact us</em><a href="#" class="more">+</a></h2>
            <div class="Hcon">
                <p>Professionals answer customer questions and solve problems for customers in real time.
                </p>
                <div class="jcon">
                    <span class="j1">Contact us</span>
                    <span class="jtel">400-000-0000</span>
                    <span class="j2">（24Free hotline）</span>
                    <span class="j1">switchboard ：020-22222222 </span>
                </div>
            </div>


        </div>
    </section>

</div>
<footer class="BottomBox">
    <div class="bottom">
        <div class="fbox1">
            <div class="f-address">adrress：</div>
            <nav class="f-nav"><a href="#">flow statistics </a> | <a href="#">website map </a> | <a href="#">legal notice </a> | <a href="#">friendly link </a></nav>
        </div>
        <div class="fbox2">
            <div class="f-copyright">Copyright © 2015 Guangzhou first generation pharmaceutical technology. All Rights Reserved
            </div>
            <div class="f-record">ICP 123456789  Designed by <a href="#">My virtual world shop</a>.
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
