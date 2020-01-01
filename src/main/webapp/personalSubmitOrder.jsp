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

    <link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
    <script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
    <script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="js/H-ui.js"></script>
    <script type="text/javascript" src="js/H-ui.admin.js"></script>

    <script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $(function () {





            $("#aaxx").click(function () {
                layer.msg('您已确认发票信息!', {icon: 6,time:3000}
                );
            })

            $("#bbxx").click(function () {
                layer.msg('您已确认收货信息!', {icon: 6,time:3000}
                );
            })



            $(".td1").click(function () {

               var aa =  $("input[name=6]:checked").val();

                $("#ee").text(aa);

                var bb = parseInt(aa);

               // var yunfei2 = parseInt($("#yunfei2").text());

                debugger

                var shangpin= parseInt(${sum});

              var zhanghu =  parseInt($("#zhanghu").text());

              var jifen = parseInt($("#jifen").text());

              var yingfu = -bb+shangpin-jifen-zhanghu;

              $("#yingfu").text(yingfu);

            })


            $("#ww").click(function () {

              var zhanghuqian =   $("#wws").val();

              $("#zhanghu").text(zhanghuqian);

             //   var yunfei2 = parseInt($("#yunfei2").text());

                var youhuijuan = parseInt($("#ee").text());

                var shangpin= parseInt(${sum});

                var jifen = parseInt($("#jifen").text());

                var yingfu = -youhuijuan+shangpin-zhanghuqian-jifen;

                $("#yingfu").text(yingfu);

            })


            $("#wwe").click(function () {

             var jifen = $("#wwa").val();

             $("#jifen").text(jifen);

           //  var yunfei2 = parseInt($("#yunfei2").text());

             var youhuijuan = parseInt($("#ee").text());

             var shangpin= parseInt(${sum});

             var zhanghuqian = parseInt($("#zhanghu").text(zhanghuqian));

             var yingfu = -youhuijuan+shangpin-zhanghuqian-jifen;

             $("#yingfu").text(yingfu);

            })


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

        <div class="coutBox Dt">
            <!--收货信息start-->
            <div class="get-info">
                <p><span>收货信息</span></p>
                <div class="info-table">
                    <table>
                        <tr>
                            <td><span>*</span>收&nbsp货 &nbsp人:
                                <input type="text" class="text" value="${consignee.name}"/>
                            </td>
                        </tr>
                        <%--<tr>--%>
                            <%--<td><span>*</span>地区:--%>
                                <%--<input type="text" class="text" value="${consignee.name}"/>--%>
                                <%--<select id="18168" name="18168" class="select1">--%>
                                    <%--<option value=""></option>--%>
                                    <%--<option value="33">湖南</option>--%>
                                    <%--<option value="34">上海</option>--%>
                                <%--</select>--%>
    <%----%>
                                <%--<select id="18168" name="18168" class="select1">--%>
                                    <%--<option value=""></option>--%>
                                    <%--<option value="33">长沙市</option>--%>
                                    <%--<option value="34">郴州市</option>--%>
                                <%--</select>--%>

                                <%--<select id="18168" name="18168" class="select2">--%>
                                    <%--<option value=""></option>--%>
                                    <%--<option value="33">男</option>--%>
                                    <%--<option value="34">女</option>--%>
                                <%--</select>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                        <tr>
                            <td><span>*</span>详细地址:
                                <input type="text" class="text text1" value="${consignee.address}"/>
                            </td>
                        </tr>
                        <tr>
                            <td><span>*</span>邮政编号:
                                <input type="text" class="text " value="${consignee.postcode}"/>
                            </td>
                        </tr>
                        <tr>
                            <td><span>*</span>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机:
                                <input type="text" class="text" value="${consignee.phone}"/>
                            </td>
                        </tr>
                        <tr>
                            <td><span>*</span>固定电话:
                                <input type="text"  class="text" value="${consignee.telephone}"/>
                                <%--<input type="text"  class="text text3" />---%>
                                <%--<input type="text"  class="text text4" />--%>
                                <%--<a>(*手机或是固定电话至少填写一项)</a>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" class="button1" value="确认收货信息" id="bbxx"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--收货信息end-->
            <!--配送方式 start-->
            <div class="send-way">
                <p><span>配送方式</span></p>
                <div><a href="javascript:void(0);">圆通速递</a></div>
            </div>
            <!--配送方式-->
            <!--支付方式-->
            <div class="send-way">
                <p><span>支付方式</span></p>
                <div><a href="javascript:void(0);">支付宝</a></div>
            </div>
            <!--支付方式 end-->
            <!--发票信息-->
            <div class="card-info">
                <p><span>发票信息</span></p>
                <div class="card-box">
                    <table>
                        <tr>
                            <td><span>发票类型：</span>
                                <input type="radio" value="普通发票" class="radio1" name="1" />普通发票
                                <input type="radio" value="增值税发票" class="radio2" name="1" />增值税发票
                            </td>
                        </tr>
                        <tr>
                            <td><span>发票抬头：</span>
                                <input type="radio" value="个人" class="radio1" name="2"/>个人
                                <input type="radio" value="增值税发票" class="radio2" name="2"/>单位
                            </td>
                        </tr>
                        <tr>
                            <td><span>单位名称：</span>
                                <input type="text" class="text" />
                            </td>
                        </tr>
                        <tr>
                            <td><span>发票内容：</span>
                                <input type="radio" value="明细" class="radio1" name="3"/>明细
                                <input type="radio" value="办公用品" class="radio2" name="3"/>办公用品
                                <input type="radio" value="电脑耗材" class="radio3" name="3"/>电脑耗材
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" class="button1" value="确认发票信息" id="aaxx"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--发票信息 end-->
            <div class="clear"></div>
            <%--<p class="check-text">请留言：您填写的收货地址所在地区无货</p>--%>
            <!--购物清单-->
            <div class="buy-box">
                <p class="left"><span>购物清单</span><a href="#">更改</a></p>
                <div class="buy-list">
                    <!--表单开始-->
                    <p>
                        <span class="sp1">购物车中的商品</span>
                        <span class="sp2">价格</span>
                        <span class="sp3">数量</span>
                        <span class="sp4">送积分</span>
                        <span class="sp5">活动</span>
                        <span class="sp6">合计 </span>
                    </p>
                    <div class="clear"></div>
                    <ul>
                        <li>
                    <span class="sp1">
                      <a class="a1">${goodsOrder.goodsName}</a>
                      <%--<a class="a2">收货地址所在区域的库房无货</a>--%>
                    </span>
                            <span class="sp2">
                       <a class="color-red">￥${goodsOrder.orderTotalPrice} </a>
                    </span>
                            <span class="sp3"><a>${count}</a></span>
                            <span class="sp4"> <a>1000</a></span>
                            <span class="sp5">
                       <%--<select id="18168" name="18168" class="select1">--%>
                        <%--<option value="-1"></option>--%>
                        <%--<option value="1">100元</option>--%>
                        <%--<option value="2">500元</option>--%>
                           暂无活动
                       </select>
                    </span>
                            <span class="sp6"> <a class="color-red">￥${sum} </a></span>

                        </li>

                        <%--<li>--%>
                    <%--<span class="sp1">--%>
                      <%--<a class="a1">美怡洁口腔护理牙膏</a>--%>
                      <%--<a class="a2">收货地址所在区域的库房无货</a>--%>
                    <%--</span>--%>
                            <%--<span class="sp2">--%>
                       <%--<a class="color-red">￥1802.00 </a>--%>
                    <%--</span>--%>
                            <%--<span class="sp3"><a>1</a></span>--%>
                            <%--<span class="sp4"> <a>1000</a></span>--%>
                            <%--<span class="sp5">--%>
                       <%--<select id="18168" name="18168" class="select1">--%>
                        <%--<option value=""></option>--%>
                        <%--<option value="33">男</option>--%>
                        <%--<option value="34">女</option>--%>
                       <%--</select>--%>
                    <%--</span>--%>
                            <%--<span class="sp6"> <a class="color-red">￥1802.00 </a></span>--%>

                        <%--</li>--%>

                    </ul>
                    <!--表单结束-->
                </div>
            </div>
            <!--购物清单end-->

            <!--订单结算-->
            <div class="order-couter">
                <p class="left"><span>订单结算</span></p>
                <!--左边表单-->
                <div class="cout-box">
                    <div class="box-left">
                        <p class="p1">
                            <span class="sp1">优惠券</span>
                            <span class="sp2">可抵扣金额</span>
                            <span class="sp3">有效期至</span>
                        </p>
                        <table>
                            <tr>
                                <td class="td1"><input type="radio" name="6" value="50"/>圣诞节优惠券</td>
                                <td class="td2">￥50.00</td>
                                <td class="td3">￥2020-08-05</td>
                            </tr>
                            <tr>
                                <td class="td1"><input type="radio" name="6" value="10"/>三丸牙医卷</td>
                                <td class="td2">￥10.00</td>
                                <td class="td3">￥2020-01-05</td>
                            </tr>
                            <tr>
                                <td class="td1"><input type="radio" name="6" value="60"/>儿童卷</td>
                                <td class="td2">￥60.00</td>
                                <td class="td3">￥2020-05-24</td>
                            </tr>
                        </table>
                        <p class="p2">
                            可用余额：￥500000.00，使用帐户余额：
                            <input type="text" class="text" id="wws"/>
                            <input type="button" class="button4"  value="使用" id="ww"/>
                        </p>
                        <p class="p3">
                            现有积分50000，可抵扣金额50000.00，使用积分：
                            <input type="text" class="text" id="wwa"/>
                            <input type="button" class="button4" value="使用" id="wwe"/>
                        </p>
                        <p class="p4">
                            <a>备注：</a>
                            <input type="textarea" class="textarea" />
                        </p>
                    </div>
                    <!--左边表单end-->

                    <!--右边表单-->
                    <div class="box-right">
                        <%--<p><span>美怡洁口腔护理牙膏 ：</span><a>＋1802.00</a></p>--%>
                        <p><span>${goodsOrder.goodsName}  X ${count}：</span><a>＋${sum}</a></p>
                        <%--<c:if test="${sum<200}">--%>
                                <%--<p ><span>满200免运费：</span><a><em id="yunfei2">10</em></a></p>--%>
                        <%--</c:if>--%>
                        <p><span>
                    <%--<select id="18168" name="18168" class="select1">--%>
                        <%--<option value=""></option>--%>
                        <%--<option value="33">100元</option>--%>
                        <%--<option value="34">500元</option>--%>
                    <%--</select>--%>优惠券：
               </span><a><em id="ee">0</em></a></p>
                        <p><span>使用帐户余额：</span><a><em id="zhanghu">0</em></a></p>
                            <p><span>使用积分：</span><a ><em id="jifen">0</em></a></p>
                        <dl>
                            应付金额：<span id="yingfu">¥${sum}</span>
                        </dl>
                    </div>
                    <!--右边表单end-->
                </div>
                <!--订单结算end-->
            </div>
            <form action="/goods/paySuccess?orderNumber=${orderNumber}" method="post">
            <div class="table-button"><input type="submit" class="button" value="确认付款" /></div>
            </form>
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
