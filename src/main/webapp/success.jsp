<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh-cn">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CCC商城</title>
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/common.js"></script>
    <script src="js/swiper.min.js"></script>
</head>

<body data-tpage="主产品" data-tproduct="P30 Pro" data-tuserid="">
<header class="m-header" style="display: block;">
    <a class="logo" href="http://localhost:8080/SSM_3CShop_war_exploded/">
        <img src="img/clogo.png" alt="3C商城">
    </a>
    <div class="user">
        <div class="uc item login" id="username">登录</div>
    </div>
    <nav class="nav w">
        <div class="item">
            <a href="category?category_id=1">手机</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=1"><img src="img/apple.png"><span>苹果</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=5"><img src="img/samsung.png"><span>三星</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=4"><img src="img/huawei.png"><span>华为</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=17"><img src="img/mi.png"><span>小米</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=3"><img src="img/mei.png"><span>魅族</span></a>
            </div>
        </div>
        <div class="item">
            <a href="category?category_id=2">相机</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=2&&brand_id=7"><img src="img/nk.png"><span>尼康</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=2&&brand_id=9"><img src="img/pt.png"><span>宾得</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=2&&brand_id=8"><img src="img/sony.png"><span>索尼</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=2&&brand_id=10"><img src="img/f.png"><span>富士</span></a>
            </div>
        </div>
        <div class="item">
            <a href="category?category_id=3">耳机</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=3&&brand_id=8"><img src="img/sony.png"><span>索尼</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=3&&brand_id=11"><img src="img/T.png"><span>铁三角</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=3&&brand_id=12"><img src="img/sh.png"><span>森海塞尔</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=3&&brand_id=1"><img src="img/apple.png"><span>苹果</span></a>
            </div>
        </div>
        <div class="item">
            <a href="category?category_id=4">主机</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=4&&brand_id=8"><img src="img/sony.png"><span>索尼</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=4&&brand_id=14"><img src="img/weiruan.png"><span>微软</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=4&&brand_id=15"><img src="img/n.png"><span>任天堂</span></a>
            </div>
        </div>
        <div class="item">
            <a href="category?category_id=5">笔记本</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=5&&brand_id=1"><img src="img/apple.png"><span>苹果</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=5&&brand_id=16"><img src="img/msi.png"><span>微星</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=5&&brand_id=17"><img src="img/xiaomi.png"><span>小米</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=5&&brand_id=4"><img src="img/huawei.png"><span>华为</span></a>
            </div>
        </div>
    </nav>
</header>
<section class="m-buy-step w">
    <i class="line left-line n-active"></i>
    <i class="line right-line n-active"></i>
    <p class="left n-active">
        <i></i>
        <span>购物车</span>
    </p>
    <p class="center n-active">
        <i></i>
        <span>确认支付</span>
    </p>
    <p class="right n-active">
        <i></i>
        <span>购物成功</span>
    </p>
</section>
<section class="m-pay-mode w" data-order="201912161517485466" data-payable="39.90">
    <div class="title">
        <strong>支付结果</strong>
    </div>
    <br>
    <br>
</section>
<br />
<br />
<div align="center"><img src="img/Success.png" />
    <div style="align-content: center; font-size: 24px; color: #666666;" data-id="15">
        <br />
        <div class="title" >
            <a href="allOrders?user_id=${user.user_id}">支付成功,点击前往我的订单</a>

        </div>
    </div>
</div>
<br /><br /><br /><br /><br /><br /><br />

<script>

    //我的订单开始付款
    $.ajax({
        url:"success",
        success:function () {
        }
    })


    //登录状态下改变样式
    if($.trim("${user}") == '') {} else {
        $("#username").empty();
        $("#username").append("${user.user_name}" + "<div class=\"m-user-menu\">\n" +
            "\t\t\t\t<i class=\"i-icon arrow\"></i>\n" +
            "\t\t\t\t<div class=\"wrap\">\n" +
            "\t\t\t\t\t<a href=\"myAddress?user_id=${user.user_id}\"><span>我的地址</span></a>\n" +
            "\t\t\t\t\t<a href=\"allOrders?user_id=${user.user_id}\"><span>我的订单</span></a>\n" +
            "\t\t\t\t\t<a href=\"logOut\"><span>退出登录</span></a>\n" +
            "\t\t\t\t</div>\n" +
            "\t\t\t</div>");
        document.getElementById("username").className = ("uc item");
    }


</script>

<footer class="m-footer" style="margin-top: 100px; display: block;">
    <div class="content">
        <div class="w">
            <div class="help">
                <div class="c">
                    <dl>
                        <dt>服务条款</dt>
                        <dd>
                            <a target="_blank" href="#">售后服务条款</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="#">维修服务条款</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>为您解答</dt>
                        <dd>
                            <a target="_blank" href="#">常见问题</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="#">招贤纳士</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>为您解答</dt>
                        <dd>
                            <a target="_blank" href="#">常见问题</a>
                        </dd>
                        <dd>
                            <a target="_blank" href="#">招贤纳士</a>
                        </dd>
                    </dl>

                    <dl>
                        <dt>感谢</dt>
                        <dd>
                            <a target="_blank" href="#">海报修改：杨晨</a>
                        </dd>

                        <dd>
                            <a target="_blank" href="#">LOGO设计：江欢航</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                        </dt>
                    </dl>

                    <dl>
                        <dt>进入后台</dt>
                        <dd>
                            <a target="_blank" href="login.jsp">LOGIN</a>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="u-tool">
    <a class="top i-icon"></a>
</div>

</body>

</html>