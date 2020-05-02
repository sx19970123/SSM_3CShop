<%@ page import="com.dfbz.po.User" %>
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
    <script>
        $.ajax({
            url:"allCart",
            data:{
                user_id:${user.user_id}
            },
        })
    </script>
</head>

<body data-tpage="首页" data-tproduct="" data-tuserid="" style="height: auto;">
<header class="m-header" style="display: block;">
    <a class="logo" href="http://localhost:8080/SSM_3CShop_war_exploded/">
        <img src="img/clogo.png" alt="3C商城">
    </a>
    <div class="user">
        <div class="uc item login" id="username">登录</div>
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
                        <p class="desc">
                           <%-- <a class="u-btnl" onclick="plus(i=-1,nu=${cart.num}),cart_id=${cart.cart_id}">-</a>--%><%--<a class="u-btnl" onclick="plus(i=+1,nu=${cart.num},cart_id=${cart.cart_id})">＋</a>--%>
                        </p>
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

<link href="css/swiper.min.css" rel="stylesheet" type="text/css">
<!--轮播图	-->
<section class="m-slide" style="display: block;">
    <div class="slider-wrap">
        <div class="swiper-container swiper-container-fade swiper-container-horizontal">
            <div class="swiper-wrapper" style="transition-duration: 0ms;">
                <a href="#" class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="2"><img
                        src="img/ccc1.jpg" width="100%" height="100%"></a>
                <a href="#" class="swiper-slide swiper-slide-prev" data-swiper-slide-index="0"><img src="img/ccc2.jpg"
                                                                                                    width="100%"
                                                                                                    height="100%"></a>
                <a href="#" class="swiper-slide swiper-slide-active" data-swiper-slide-index="1"><img src="img/ccc3.jpg"
                                                                                                      width="100%"
                                                                                                      height="100%"></a>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-white swiper-pagination-clickable swiper-pagination-bullets">
                <span class="swiper-pagination-bullet"></span><span
                    class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
                    class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span
                    class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span
                    class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>
            <!-- Add Arrows -->
            <div class="swiper-button-next" style="right: 100px;"></div>
            <div class="swiper-button-prev" style="left: 100px;"></div>
        </div>
    </div>

</section>

<section class="m-pro-seckill">
    <div class="w">
        <div class="list c">
            <div class="item">

                <div class="seckill-countdown">
                    <br>
                    <div class="title">国行正品</div>
                    <div class="desc" id="switch_brand"></div>
                    <div class="dynamic active">
                    </div>
                </div>
                <div class="seckill-list">
                    <a href="" id="switch_id">
                        <div class="seckill-list-item">
                            <div class="thumb"><img src="" id="switch_photo"></div>
                            <div class="title" id="switch_name">&nbsp;&nbsp;任天堂</div>
                            <div class="desc"></div>
                            <div class="price">
                                <div class="actual">&nbsp;&nbsp;&nbsp;&nbsp;闪购价：
                                    <div class="number">¥<span id="switch_price"></span></div>
                                </div>
                                <div class="original">2299.00元</div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="m-pro-recommend" style="display: block;">
    <div class="w">
        <div class="box-hd c">
            <h3 class="g">人气手机</h3>
            <div class="more fr">
                <a class="item" href="category?category_id=1">更多手机</a>
            </div>
        </div>

        <div class="list c xs020 m03 s04 x04 n-hover">
            <div class="g pro-item">
                <a class="pro-item-a n-active" href="" id="16s_id">
                    <img src="" id="16s_photo">
                    <p class="title" id="16s_brand"></p>
                    <p class="title" id="16s_name"></p>
                    <p class="price" id="16s_price">¥</p>

                </a>
            </div>

            <div class="g pro-item">
                <a class="pro-item-a n-active" href="" id="v20_id">
                    <img src="" id="v20_photo">
                    <p class="title" id="v20_brand"></p>
                    <p class="title" id="v20_name"></p>
                    <p class="price" id="v20_price">¥</p>
                </a>
            </div>
            <div class="g pro-item">
                <a class="pro-item-a n-active" href="" id="pro2_id">
                    <img src="" id="pro2_photo">
                    <p class="title" id="pro2_brand"></p>
                    <p class="title" id="pro2_name"></p>
                    <p class="price" id="pro2_price">¥</p>
                </a>
            </div>
            <div class="g pro-item">
                <a class="pro-item-a n-active" href="" id="6s_id">
                    <img src="" id="6s_photo">
                    <p class="title" id="6s_brand"></p>
                    <p class="title" id="6s_name"></p>
                    <p class="price" id="6s_price">¥</p>
                </a>
            </div>
        </div>
    </div>

    <div class="w">
        <div class="box-hd c">
            <h3 class="g">人气笔记本</h3>
            <div class="more fr">
                <a class="item" href="category?category_id=5">更多笔记本</a>
            </div>
        </div>
        <div class="list c xs020 m03 s04 x04 n-hover">
            <div class="g pro-item">
                <a class="pro-item-a n-active" href="" id="mibook_id">
                    <img src="" id="mibook_photo">
                    <p class="title" id="mibook_brand"></p>
                    <p class="title" id="mibook_name"></p>
                    <p class="price" id="mibook_prace">¥</p>
                </a>
            </div>
            <div class="g pro-item">
                <a class="pro-item-a n-active" href="" id="laptop3_id">
                    <img src="" id="laptop3_photo">
                    <p class="title" id="laptop3_brand"></p>
                    <p class="title" id="laptop3_name"></p>
                    <p class="price" id="laptop3_prace">¥</p>
                </a>
            </div>
            <div class="g pro-item">
                <a class="pro-item-a n-active" href="" id="macbook_id">
                    <img src="" id="macbook_photo">
                    <p class="title" id="macbook_brand"></p>
                    <p class="title" id="macbook_name"></p>
                    <p class="price" id="macbook_prace">¥</p>
                </a>
            </div>
            <div class="g pro-item">
                <a class="pro-item-a n-active" href="" id="msi_id">
                    <img src="" id="msi_photo">
                    <p class="title" id="msi_brand"></p>
                    <p class="title" id="msi_name"></p>
                    <p class="price" id="msi_prace">¥</p>
                </a>
            </div>
        </div>
    </div>
</section>

<!--登录框-->
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
    {
        //主页推荐手机
        $.ajax({
            url: "phone",
            dataType: "json",
            success: function (msg) {
                var obj = eval(msg)
                //手机1
                document.getElementById("16s_photo").src = obj[0].commodity_photo1
                document.getElementById("16s_id").href = 'COMMODITY_Detailed?commodity_id=' + obj[0].commodity_id + '&&pj=2'

                $("#16s_brand").append(obj[0].commodity_brand)
                $("#16s_name").append(obj[0].commodity_name)
                $("#16s_price").append(obj[0].commodity_price)
                //手机2
                document.getElementById("v20_photo").src = obj[1].commodity_photo1
                document.getElementById("v20_id").href = 'COMMODITY_Detailed?commodity_id=' + obj[1].commodity_id + '&&pj=2'
                $("#v20_brand").append(obj[1].commodity_brand)
                $("#v20_name").append(obj[1].commodity_name)
                $("#v20_price").append(obj[1].commodity_price)
                //手机3
                document.getElementById("pro2_photo").src = obj[2].commodity_photo1
                document.getElementById("pro2_id").href = 'COMMODITY_Detailed?commodity_id=' + obj[2].commodity_id + '&&pj=2'
                $("#pro2_brand").append(obj[2].commodity_brand)
                $("#pro2_name").append(obj[2].commodity_name)
                $("#pro2_price").append(obj[2].commodity_price)
                //手机4
                document.getElementById("6s_photo").src = obj[3].commodity_photo1
                document.getElementById("6s_id").href = 'COMMODITY_Detailed?commodity_id=' + obj[3].commodity_id + '&&pj=2'
                $("#6s_brand").append(obj[3].commodity_brand)
                $("#6s_name").append(obj[3].commodity_name)
                $("#6s_price").append(obj[3].commodity_price)
            }
        })
        //switch
        $.ajax({
            url: "switch",
            dataType: "json",
            success: function (ns) {
                document.getElementById("switch_photo").src = ns[0].commodity_photo1;
                document.getElementById("switch_id").href = 'COMMODITY_Detailed?commodity_id=' + ns[0].commodity_id + '&&pj=2'
                $("#switch_name").append(ns[0].commodity_name)
                $("#switch_price").append(ns[0].commodity_price)
                $("#switch_brand").append(ns[0].commodity_brand)
            }
        })
        //laptop
        $.ajax({
            url: "laptop",
            dataType: "json",
            success: function (laptop) {
                document.getElementById("mibook_photo").src = laptop[0].commodity_photo1
                document.getElementById("mibook_id").href = 'COMMODITY_Detailed?commodity_id=' + laptop[0].commodity_id + '&&pj=2'
                $("#mibook_brand").append(laptop[0].commodity_brand)
                $("#mibook_name").append(laptop[0].commodity_name)
                $("#mibook_prace").append(laptop[0].commodity_price)

                document.getElementById("laptop3_photo").src = laptop[1].commodity_photo1
                document.getElementById("laptop3_id").href = 'COMMODITY_Detailed?commodity_id=' + laptop[1].commodity_id + '&&pj=2'
                $("#laptop3_brand").append(laptop[1].commodity_brand)
                $("#laptop3_name").append(laptop[1].commodity_name)
                $("#laptop3_prace").append(laptop[1].commodity_price)

                document.getElementById("macbook_photo").src = laptop[2].commodity_photo1
                document.getElementById("macbook_id").href = 'COMMODITY_Detailed?commodity_id=' + laptop[2].commodity_id + '&&pj=2'
                $("#macbook_brand").append(laptop[2].commodity_brand)
                $("#macbook_name").append(laptop[2].commodity_name)
                $("#macbook_prace").append(laptop[2].commodity_price)

                document.getElementById("msi_photo").src = laptop[3].commodity_photo1
                document.getElementById("msi_id").href = 'COMMODITY_Detailed?commodity_id=' + laptop[3].commodity_id + '&&pj=2'
                $("#msi_brand").append(laptop[3].commodity_brand)
                $("#msi_name").append(laptop[3].commodity_name)
                $("#msi_prace").append(laptop[3].commodity_price)
            }
        })
    }
</script>


<script>

    //判断购物车是否有商品
    function settlement() {
        if ($.trim("${count.count}") == 0) {
            alert("购物车空空如也呢，快去浏览商品把")
        } else {
            document.getElementById("settlement").href = "address?user_id=${user.user_id}";
        }
    }

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

    //轮播图
    $(function () {
        var swiper = new Swiper('.swiper-container', {
            loop: true,
            spaceBetween: 30,
            effect: 'fade',
            fadeEffect: true,
            speed: 2000,
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
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