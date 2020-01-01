<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/26
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


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

        $(function (){

            $("#aa").click(function () {
                layer.msg('您的退货申请已经提交!', {icon: 6,time:3000}
                );

                self.setInterval(function () {
                    $("#ee").submit();
                },5000)

            })



        })

    </script>

</head>
<body>
    <form action="/goods/goodsExchange" method="post" id="ee">
    订单编号:<input type="text" name="number" ><br>
    退货原因:<input type="text" name="resouce" ><br><br>
    <input type="button" value="确认提交" id="aa">
    </form>
</body>
</html>
