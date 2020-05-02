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

<body data-tpage="主产品" data-tproduct="P30 Pro" data-tuserid="">
<header class="m-header" style="display: block;">
    <a class="logo" href="http://localhost:8080/SSM_3CShop_war_exploded/">
        <img src="img/clogo.png" alt="3C商城">
    </a>
    <div class="user">
        <div class="uc item login" id="username">登录

        </div>
        <div class="cart item">
            <i class="i-icon"></i> 购物车
            <em>${count.count}</em>
            <div class="m-user-cart">
                <div class="wrap">
                    <c:forEach items="${carts}" var="cart">
                    <p class="pointer" data-time="538">
                        <ul>
                            <li data-id="291918">
                                <div class="thumb"><a href="COMMODITY_Detailed?commodity_id=${cart.commodity_id}&&pj=2"><img
                                        src="${cart.commodity_photo1}"></a></div>
                                <div class="details">
                    <p class="title">${cart.commodity_brand}&nbsp;&nbsp;${cart.commodity_name}</p>
                    <p class="desc">${cart.commodity_size}&nbsp;&nbsp;${cart.color}</p>
                        <p class="price">¥${cart.commodity_price}&nbsp;&nbsp;X${cart.num}&nbsp;&nbsp;</p>
                        <%--<p class="desc">
                            <a class="u-btnl" onclick="cart_plus(shuliang=-1,cart_id=${cart.cart_id},commodity_id=${cart.commodity_id},num=${cart.num})">-</a>
                            &nbsp;&nbsp;${cart.num}&nbsp;&nbsp;
                            <a class="u-btnl" onclick="cart_plus(shuliang=+1,cart_id=${cart.cart_id},commodity_id=${cart.commodity_id},num=${cart.num})">＋</a>
                        </p>--%>
                </div>
              <%--  <i class="i-icon delete" onclick="del(cart_id=${cart.cart_id},user_id=${user.user_id}+0)"></i></li>--%>
                </ul>
                </c:forEach>
                <div class="action">
                    <p class="cartinfo"><span class="cartcount">共有<em>${count.count}</em>件商品</span><span
                            class="countprice">￥${count.sum}</span></p>
                    <a class="u-btn n-middle f-fr" id="settlement" onclick="settlement()" href="">前往结算</a>
                </div>
            </div>
        </div>
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
<c:forEach items="${tests}" var="test">
    <section class="w">

        <div class="m-product-details" data-id="75101">
            <div class="title">
                <h1>${test.commodity_brand}&nbsp;&nbsp;&nbsp;${test.commodity_name}</h1>
            </div>
        </div>
    </section>

    <section class="m-report">
        <div class="w">
            <div class="details-hd">
                <div class="u-product-title">
                    <i></i>
                    <strong>详细评测</strong>
                </div>
                <br/>
                <br/>
            </div>

            <div class="report-bd">

                <div class="report-bd-space">
                    <div class="result">
                        <div class="result-hd result-hd-space">

                            <div class="title">外观概述</div>
                        </div>
                        <div class="result-bd result-bd-space">

                            <div align="left" style="font-size: 25px;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.test_facade_body}<br>
                                <c:forEach items="${test_facade_photos}" var="facade">
                                    <div align="center">
                                        <img src="${facade.test_facade_photo}" align="center"><br>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="desc">&nbsp;</div>
                        </div>
                    </div>

                    <div class="result">
                        <div class="result-hd result-hd-space">

                            <div class="title">系统UI</div>
                        </div>
                        <div class="result-bd result-bd-space">
                            <div align="left" style="font-size: 25px;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.test_ui_body}<br>
                                <c:forEach items="${test_ui_photos}" var="ui">
                                    <div align="center">
                                        <img src="${ui.test_ui_photo}"><br>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="desc">&nbsp;</div>
                        </div>
                    </div>

                    <div class="result">
                        <div class="result-hd result-hd-space">
                            <div class="title">性能测试</div>
                        </div>
                        <div class="result-bd result-bd-space">
                            <div align="left" style="font-size: 25px;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.test_property_body}<br>
                                <div align="center">
                                    <c:forEach items="${test_property_photos}" var="property">
                                        <img src="${property.test_property_photo}"><br>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="desc">&nbsp;</div>
                        </div>
                    </div>

                    <div class="result">
                        <div class="result-hd result-hd-space">

                            <div class="title">拍照测试</div>
                        </div>
                        <div class="result-bd result-bd-space">
                            <div align="left" style="font-size: 25px;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.test_photo_body}<br>
                                <div align="center">
                                    <c:forEach items="${test_photo_photos}" var="photo">
                                        <img src="${photo.test_photo_photo}"><br>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="desc">&nbsp;</div>
                        </div>
                    </div>

                    <div class="result">
                        <div class="result-hd result-hd-space">

                            <div class="title">总结</div>
                        </div>
                        <div class="result-bd result-bd-space">
                            <div align="left" style="font-size: 25px;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.test_over_body}<br>
                                <div align="center">
                                    <img src="${test.test_over_photo}"><br>
                                </div>
                            </div>
                            <div class="desc">&nbsp;</div>
                        </div>
                    </div>
                    <br>
                    <br>
                    <a class="addcart u-btn n-yellow n-middle" href="COMMODITY_Detailed?commodity_id=${test.commodity_id}&&pj=2">返回商品页</a>
                </div>

            </div>
        </div>
    </section>
</c:forEach>
<section class="m-login-modal" style="display:none;">
    <i class="bg"></i>
    <div class="wrap" style="height: auto;padding-bottom:0;">
        <div class="title">3C商城欢迎您</div>

        <div class="m-form clearfix c">
            <div class="formitm">
                <div class="ipt">
                    <input type="email" class="u-ipt" id="email" name="user_email" placeholder="邮箱">
                </div>
            </div>
            <div class="formitm verification"
                 style="position: relative;float: left;width: 100%;height:40px;vertical-align: bottom">
                <div class="ipt">
                    <input type="text" id="htcode" name="code" class="u-ipt" placeholder="请输入验证码"
                           style="width: 192px;font-size: 16px;vertical-align: middle;">
                    <img class="verifyCode" onclick="changeCode()" width="120" height="38" src="getVerifyCode"
                         style="display: inline-block;vertical-align: middle;cursor: pointer;">
                </div>
            </div>
            <div class="formitm phonecode">
                <div class="ipt f-ibs" id="no">
                    <input type="text" class="u-ipt" name="emailcode" id="emailcode" placeholder="邮箱验证码">
                    <button class="u-btn n-middle" id="getphonecode" onclick="getemail()" type="button">获取邮箱验证</button>
                </div>
            </div>
            <div class="formitm button">
                <div class="ipt">
                    <button class="u-btn n-middle confirm" onclick="login()">登录</button>
                </div>
                <br>
                <div class="weixin">
                    <span>新用户登陆后即完成注册</span>
                </div>
            </div>
        </div>
        <i class="i-icon close" id="close"></i>
    </div>
</section>

<script>
    //购物车删除
    function del(cart_id, user_id) {
        $.ajax({
            url: "cartDel",
            data: {
                cart_id: cart_id,
                user_id: user_id
            },
            dataType: "json",
            success: function (msg) {
                alert("删除成功")
                location.reload();
            }
        })
    }

    //判断购物车是否有商品
    function settlement() {
        if ($.trim("${count.count}") == 0) {
            alert("购物车空空如也呢，快去浏览商品把")
        } else {
            document.getElementById("settlement").href = "address?user_id=${user.user_id}";
        }
    }

    //图片验证码
    function changeCode() {
        var src = " getVerifyCode?" + new Date().getTime(); //加时间戳，防止浏览器利用缓存
        $('.verifyCode').attr("src", src); //jQuery写法
    }

    //根据图片验证码验证是否发送邮件
    function getemail() {
        var email=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
        if ($("#email").val() == "") {
            alert("请输入邮件")
        }else if (email.test($("#email").val())!=true){
            alert("请输入正确的邮件")
        } else {
            $.ajax({
                url: "photocode",
                data: {
                    code: $("#htcode").val()
                },
                dataType: "json",
                success: function (msg) {
                    if (msg == "success") {
                        alert("验证成功，即将发送邮件，请前往邮箱查收")
                        $("#no").append("<p class=\"tip u-btn n-middle\" style=\"display: block;\" >" + "发送成功" + "</p>");
                        $.ajax({
                            url: "emailCode",
                            data: {
                                emailaddress: $("#email").val()
                            },
                            dataType: "json"
                        })
                    } else {
                        document.getElementById("htcode").value = '';
                        alert("图片验证码验证出错")
                    }
                }
            })
        }
    }


    //验证邮件验证码
    function login() {
        $.ajax({
            url: "login",
            data: {
                user_email: $("#email").val(),
                emailcode: $("#emailcode").val()
            },
            dataType: 'json',
            success: function (msg) {
                if (msg == "error") {
                    document.getElementById("emailcode").value = '';
                    alert("登录失败，邮件验证码错误!")
                } else {
                    alert("登录成功")
                    document.getElementById("close").click();
                    location.reload();
                }
            }
        })
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

    //模态框
    $(function () {

        $(document).on('click', '.m-login-modal .close , .m-login-modal .bg', function () {
            $('.m-login-modal').hide();
            //resetLogin();
        })
    })
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