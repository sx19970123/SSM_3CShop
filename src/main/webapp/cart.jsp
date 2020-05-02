<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CCC商城</title>
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/common.js"></script>
    <script src="js/swiper.min.js"></script>
</head>

<body data-tpage="" data-tproduct="" data-tuserid="613072" style="overflow: auto;">
<header class="m-header" style="display: block;">
    <a class="logo" href="http://localhost:8080/SSM_3CShop_war_exploded/">
        <img src="img/cgwc.png" height="37px" alt="3C商城">
    </a>
    <div class="user">
        <div class="uc item login" id="username">登录</div>
    </div>
    </div>
    <nav class="nav w">
        <div class="item">
            <a href="category?category_id=1">手机</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=1"><img
                        src="img/apple.png"><span>苹果</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=5"><img src="img/samsung.png"><span>三星</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=4"><img src="img/huawei.png"><span>华为</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=17"><img
                        src="img/mi.png"><span>小米</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=1&&brand_id=3"><img
                        src="img/mei.png"><span>魅族</span></a>
            </div>
        </div>
        <div class="item">
            <a href="category?category_id=2">相机</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=2&&brand_id=7"><img
                        src="img/nk.png"><span>尼康</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=2&&brand_id=9"><img
                        src="img/pt.png"><span>宾得</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=2&&brand_id=8"><img
                        src="img/sony.png"><span>索尼</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=2&&brand_id=10"><img
                        src="img/f.png"><span>富士</span></a>
            </div>
        </div>
        <div class="item">
            <a href="category?category_id=3">耳机</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=3&&brand_id=8"><img
                        src="img/sony.png"><span>索尼</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=3&&brand_id=11"><img
                        src="img/T.png"><span>铁三角</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=3&&brand_id=12"><img
                        src="img/sh.png"><span>森海塞尔</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=3&&brand_id=1"><img
                        src="img/apple.png"><span>苹果</span></a>
            </div>
        </div>
        <div class="item">
            <a href="category?category_id=4">主机</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=4&&brand_id=8"><img
                        src="img/sony.png"><span>索尼</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=4&&brand_id=14"><img
                        src="img/weiruan.png"><span>微软</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=4&&brand_id=15"><img
                        src="img/n.png"><span>任天堂</span></a>
            </div>
        </div>
        <div class="item">
            <a href="category?category_id=5">笔记本</a>
            <div class="menu">
                <a class="" href="Brand_Commodity?commodity_category_id=5&&brand_id=1"><img
                        src="img/apple.png"><span>苹果</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=5&&brand_id=16"><img
                        src="img/msi.png"><span>微星</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=5&&brand_id=17"><img src="img/xiaomi.png"><span>小米</span></a>
                <a class="" href="Brand_Commodity?commodity_category_id=5&&brand_id=4"><img src="img/huawei.png"><span>华为</span></a>
            </div>
        </div>
    </nav>
</header>
<section class="m-buy-step w">
    <i class="line left-line n-active"></i>
    <i class="line right-line"></i>
    <p class="left n-active">
        <i></i>
        <span>购物车</span>
    </p>
    <p class="center n-active n-now">
        <i></i>
        <span>确认支付</span>
    </p>
    <p class="right">
        <i></i>
        <span>购物成功</span>
    </p>
</section>

<section class="m-pay-mode w" data-order="201912161517485466" data-payable="39.90">
    <div class="title">
        <strong>选择地址</strong>
    </div>
    <br>
    <br>
    <div class="list">
        <ul>
            <c:forEach items="${addresses}" var="address">
                <li class="cell" id="adid" onclick="ad(address_id=${address.address_id})">
                    <div class="m-modal">地址编号：<span>${address.address_id}</span></div>
                    <h3 id="fh3">&nbsp;&nbsp;${address.name}&nbsp;&nbsp;${address.user_phone}</h3>
                    <p id="des">${address.address}</p>
                </li>
            </c:forEach>
        </ul>
    </div>
</section>

<section class="m-pay-list w" data-order="201912161517485466" data-payable="39.90">
    <div class="title">
        <strong>购物清单</strong>
    </div>
    <ul class="head c">
        <li class="cell name">产品名称</li>
        <li class="cell price">&nbsp;</li>
        <li class="cell num">数量</li>
        <li class="cell count">单价</li>
    </ul>
    <ul class="list c">
        <c:forEach items="${carts}" var="cart">
            <li class="main">
                <div class="cell name">
                    <a class="info">
                        <img src="${cart.commodity_photo1}">
                        <div class="details" data-format="{&quot;1&quot;:&quot;620&quot;}">
                            <strong>${cart.commodity_brand}&nbsp;&nbsp;${cart.commodity_name}</strong>
                            <p><span>颜色分类：</span><span>${cart.commodity_size}&nbsp;&nbsp;${cart.color}</span></p>
                        </div>
                    </a>
                </div>
                <div class="cell price">
                    <span class="vlc"></span>
                </div>
                <div class="cell num">
                    <span class="vlc">${cart.num}</span>
                </div>
                <div class="cell count">
                    <span class="vlc">¥${cart.commodity_price}</span>
                </div>
            </li>
            <div class="m-modal">
                <div id="state">${cart.state}</div>
                <div id="cart_id">${cart.cart_id}</div>
            </div>
        </c:forEach>
        <!--                -->
    </ul>
    <div class="handle">

        <div class="pay-total">
            <dl class="c">
                <dt>
                    <span>${count.count}</span>件商品，商品总额：
                </dt>
                <dd>
					<span class="p-price">
					     <span>¥</span>
					     <span class="price">${count.sum}</span>
					</span>
                </dd>
            </dl>
            <br/>
            <dl class="payable c">
                <dt>应付金额：</dt>
                <dd><span class="p-price large">
                        <span>¥</span>
							<span class="price">${count.sum}</span>
				        </span>
                </dd>
            </dl>
        </div>
    </div>
</section>
<section class="m-pay-mode w">
    <div class="handle">
        <div class="pay-info c"></div>
        <div class="pay c">
            <div class="m-modal">
                当前选择地址：
                <div id="address_id"></div>
            </div>
            <a class="u-btn n-middle n-blue f-fr" href="#" id="gopay" onclick="gopay()">前往付款</a>
        </div>
    </div>
</section>
<br>
<br>

<script>

    //判断是否添加了地址
    function gopay(address_id) {
        if ($.trim("${addresses}") == '[]') {
            alert("亲还没添加地址呢，先去个人中心添加地址吧")
        } else {
            if (document.getElementById("state").innerText == 5) {
                $.ajax({
                    url: "addRessInCart",
                    data: {
                        user_id:${user.user_id},
                        address_id: document.getElementById("address_id").innerText,
                        state: document.getElementById("state").innerText
                    },
                    datatype: 'json'
                })
                document.getElementById("gopay").href = "pay.jsp";
            } else {
                $.ajax({
                    url: "addRessInCartbyId",
                    data: {
                        user_id:${user.user_id},
                        address_id: document.getElementById("address_id").innerText,
                        cart_id: document.getElementById("cart_id").innerText,
                        state: document.getElementById("state").innerText
                    },
                    datatype: 'json'
                })
                document.getElementById("gopay").href = "pay.jsp";
            }

        }
    }


    function ad(address_id) {
        $("#address_id").empty();
        $("#address_id").append(address_id);
    }


    //登录状态下改变样式

    if ($.trim("${user}") == '') {
    } else {

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

    //地址选择
    $(function () {
        var int;
        $('.m-pay-mode').on('click', '.head li', function () {
            if (int) clearInterval(int);
            if ($(this).hasClass('n-active')) return false;
            $(this).addClass('n-active').siblings().removeClass('n-active');
            var parents = $(this).parents('.m-pay-mode');
            var mode = $(this).data('mode');
            parents.data('mode', mode);
            $('.m-pay-mode .list').hide();
            if (mode == 'wx') return false;
            ($('.m-pay-mode .list.' + mode).length > 0) ? $('.m-pay-mode .list.' + mode).show().find('li:eq(0)').click() : parents.data('stages', '');
        })
        $('.m-pay-mode').on('click', '.list li', function () {
            //        if($(this).hasClass('n-active'))return false;
            $(this).addClass('n-active').siblings().removeClass('n-active');
            $(this).parents('.m-pay-mode').data('stages', $(this).data('val'));
        })
    })

    {
        document.getElementById("adid").click();
        document.getElementById("adid").className = "cell n-active";
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

</body>

</html>