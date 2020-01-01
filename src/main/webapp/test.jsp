<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <base href="${pageContext.request.contextPath}/">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/carts.css">
</head>
<body>
<section class="cartMain">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">
                <!--所有商品全选-->
                <input type="checkbox" id="all" class="whole_check">
                <label for="all"></label>
                全选
            </li>
            <li class="list_con">订单信息</li>
            <li class="list_info">订单编号</li>
            <li class="list_price">单价</li>
            <li class="list_amount">数量</li>
            <li class="list_sum">金额</li>
            <li class="list_op">操作</li>
        </ul>
    </div>

    <div class="cartBox">

        <div class="order_content">
                <c:forEach items="${goodsOrderList}" var="good" varStatus="index">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_${index.index}" class="son_check">
                    <label for="checkbox_${index.index}"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="./images/${good.orderPicture}" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">${good.goodsName}</a></div>
                </li>
                <li class="list_info">
                    <p class="Number">${good.orderNumber}</p>
                </li>
                <li class="list_price">
                    <p class="price">￥${good.orderTotalPrice}</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥${good.orderTotalPrice}</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="/goods/deleteOrder?orderNumber=${good.orderNumber}" class="delBtn">移除订单</a></p>
                </li>
            </ul>
                </c:forEach>


        </div>

    </div>


    <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
            <div class="calBtn"><a href="javascript:;" class="aa">结算</a></div>
        </div>
    </div>

</section>
<section class="model_bg"></section>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/carts.js"></script>
</body>
</html>
