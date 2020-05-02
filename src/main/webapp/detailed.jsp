<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0045)http://www.aifou.cn/youpin/details/id/15.html -->
<html lang="zh-cn">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CCC商城</title>
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/common.js"></script>
    <script>
        $.ajax({
            url: "allCart",
            data: {
                user_id:${user.user_id}
            },
        })
    </script>
    <script>
        if ($.trim("${pj}") == 1) {
            location.href = "#pingjia";
        }
    </script>
    <style>
        /* radio */

        label.bui-radios-label input {
            position: absolute;
            opacity: 0;
            visibility: hidden;
        }

        label.bui-radios-label .bui-radios {
            display: inline-block;
            position: relative;
            width: 13px;
            height: 13px;
            background: #FFFFFF;
            border: 1px solid #979797;
            border-radius: 50%;
            vertical-align: -2px;
        }

        label.bui-radios-label input:checked + .bui-radios:after {
            position: absolute;
            content: "";
            width: 7px;
            height: 7px;
            background-color: #fff;
            border-radius: 50%;
            top: 2px;
            left: 2px;
        }

        label.bui-radios-label input:checked + .bui-radios {
            background: #00B066;
            border: 1px solid #00B066;
        }

        label.bui-radios-label input:disabled + .bui-radios {
            background-color: #e8e8e8;
            border: solid 1px #979797;
        }

        label.bui-radios-label input:disabled:checked + .bui-radios:after {
            background-color: #c1c1c1;
        }

        label.bui-radios-label.bui-radios-anim .bui-radios {
            -webkit-transition: background-color ease-out .3s;
            transition: background-color ease-out .3s;
        }
    </style>

</head>

<body data-tpage="" data-tproduct="" data-tuserid="">
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
                    <p class="price">¥${cart.commodity_price}</p>
                    <p class="desc">
                        <a class="u-btnl" onclick="cart_plus(shuliang=-1,cart_id=${cart.cart_id},commodity_id=${cart.commodity_id},num=${cart.num})">-</a>
                        &nbsp;&nbsp;${cart.num}&nbsp;&nbsp;
                        <a class="u-btnl" onclick="cart_plus(shuliang=+1,cart_id=${cart.cart_id},commodity_id=${cart.commodity_id},num=${cart.num})">＋</a>
                    </p>

                </div>
                <i class="i-icon delete" onclick="del(cart_id=${cart.cart_id},user_id=${user.user_id}+0)"></i></li>
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
    <script>
        function cart_plus(shuliang,cart_id,commodity_id,num) {
            var user_id = ${user.user_id};
            if (num+shuliang==0){
                alert("无法再减少了")
            }else if (0==$.trim("${commodity.commodity_count}")&&shuliang==+1) {
                alert("超出库存最大值")
            }else {
                $.ajax({
                    url:"numPrice",
                    data:{
                        cart_id:cart_id,
                        num:shuliang,
                        user_id:user_id,
                        commodity_id:commodity_id
                    },
                    success:function () {
                        location.reload();
                    }
                })
            }
        }
    </script>
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
<form name="form">
    <section class="w">
        <div class="m-product-img">
            <div class="view">
                <img src="${commodity.commodity_photo1}" alt="${commodity.commodity_name}">
            </div>
            <%--效果图--%>
            <div class="thumb">
                <a class="backward"></a>
                <a class="forward_disabled"></a>
                <ul id="icon_list">
                    <li class=""><img src="${commodity.commodity_photo1}" alt=""
                                      data-src="${commodity.commodity_photo1}"></li>
                    <li class=""><img src="${commodity.commodity_photo2}" alt=""
                                      data-src="${commodity.commodity_photo2}"></li>
                    <li class=""><img src="${commodity.commodity_photo3}" alt=""
                                      data-src="${commodity.commodity_photo3}"></li>
                </ul>
            </div>
        </div>
        <%--商品信息显示--%>
        <div class="m-product-details" data-id="15">
            <div class="title">
                <h1>${commodity.commodity_brand}&nbsp;${commodity.commodity_name}</h1>
                <span>库存：${commodity.commodity_count}件</span>
            </div>
            <br>

            <p class="price">
                <span>价格</span><strong>¥</strong><strong id="price">${commodity.commodity_price}</strong>
            </p>

            <%--选择颜色--%>
            <ul class="c details">
                <li data-id="21" data-idx="1" data-label="color">
                    <span>颜色</span>
                    <c:forEach items="${size_color}" var="sc">
                        <label class="bui-radios-label bui-radios-anim">
                            <input type="radio" name="color" id="${sc.color}" value="${sc.cid}"/><i
                                class="bui-radios"></i>${sc.color}
                        </label>&nbsp;&nbsp;&nbsp;
                    </c:forEach>
                </li>

                <script>
                    $('input[name=color]:radio').eq(0).attr('checked', 'true');
                </script>

                <li data-id="2" data-idx="2" data-label="memory">
                    <span>内存容量</span>
                    <c:forEach items="${size_disk}" var="sk">
                        <label class="bui-radios-label bui-radios-anim">
                            <input type="radio" name="disk" id="${sk.disk}" value="${sk.disk}"/><i
                                class="bui-radios"></i>${sk.disk}
                        </label>&nbsp;&nbsp;&nbsp;
                    </c:forEach>

                    <script>
                        $('input[name=disk]:radio').eq(0).attr('checked', 'true');
                    </script>
                </li>
            </ul>
            <script>
            </script>

            <%--根据内存大小改变价格--%>
            <c:forEach items="${size_disk}" var="sk">
                <script>
                    document.getElementById('${sk.disk}').onclick = function () {
                        $.ajax({
                            url: "price",
                            data: {
                                disk: '${sk.disk}',
                                commodity_id: ${commodity.commodity_id}
                            },
                            dataType: "json",
                            success: function (msg) {
                                $("#price").empty()
                                $("#price").append(msg.price)
                            }
                        })
                    }
                </script>
            </c:forEach>

            <div class="action">
                <a class="addcart u-btn n-yellow n-middle" onclick="gocart()">立即购买</a>
                <a class="addcart u-btn n-yellow n-middle" onclick="addcart()">加入购物车</a>
                <a class="buy u-btn n-middle" href="test?commodity_id=${commodity.commodity_id}">查看详细评测</a>
            </div>
        </div>
    </section>
</form>

<section class="m-product-nav" style="margin-top: 60px;border-top: 1px solid #e5e5e5;">
    <div class="wrap c">
        <div class="nav">
            <a class="n-active" data-href="#nav-product">产品详情</a>
            <a href="#pingjia">商品评价</a>
        </div>
    </div>
</section>

<!--详情页面-->
<c:forEach items="${describe}" var="de">
    <section id="nav-product" class="m-product-info w" style="margin-top: 10px;">
        <div class="content">
            <img src="${de.commodity_describe}">
        </div>
    </section>
</c:forEach>
<!--评论-->


<section class="m-report">
    <a name="pingjia"></a>
    <div class="w">

        <div class="report-bd">

            <div class="report-bd-space">
                <div class="result">
                    <div class="result-hd result-hd-space">

                        <div class="title">商品评价</div>
                    </div>
                    <div class="result-bd result-bd-space">

                        <!--这里还是是一条评论的开始-->
                        <c:forEach items="${page.list}" var="ct">

                            <div class="result-bd result-bd-space">
                                <div class="engineer c">
                                    <div class="rating">${ct.comment_type}</div>
                                    <div class="head"><img src="${ct.user_photo}"></div>
                                    <div class="name">
                                        <h3>${ct.user_name}</h3>
                                    </div>
                                    <div class="desc" align="right">${ct.comment}</div>
                                </div>
                                <div class="u-product-title">
                                    <i></i>
                                    <a name="nav-info"></a>
                                </div>
                            </div>
                        </c:forEach>
                        <!--这里还是是一条评论的结束-->

                        <div class="m-page">
                            <c:if test="${page.hasPreviousPage}">
                                <a class="front"
                                   href="COMMODITY_Detailed?pn=${page.prePage}&&commodity_id=${commodity.commodity_id}&&pj=1"><i
                                        class="i-icon"></i></a>
                            </c:if>
                            <a class="page n">${page.pageNum}</a><span>/</span>
                            <a class="page">${page.pages}</a>
                            <c:if test="${page.hasNextPage}">
                                <a class="after"
                                   href="COMMODITY_Detailed?pn=${page.nextPage}&&commodity_id=${commodity.commodity_id}&&pj=1"><i
                                        class="i-icon"></i></a>
                            </c:if>
                        </div>
                        <br>
                    </div>
                </div>

            </div>

        </div>
    </div>
</section>
<script>

</script>
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

    function addcart() {
        var color = form.color.value;
        var size = encodeURI(form.disk.value);
        var user_id = ${user.user_id}+0;
        if (document.getElementById("username").innerText == "登录") {
            alert("请登录后添加至购物车")
            document.getElementById("username").click();
        } else if ($.trim("${commodity.commodity_count}") == 0) {
            alert("商品库存不足，暂时无法添加至购物车")
        }  else {

            $.ajax({
                url:"cartBycommodity",
                data:{
                    commodity_color:color,
                    commodity_size:size,
                    user_id:user_id,
                    commodity_id:${commodity.commodity_id}
                },
                dataType: "json",
                success:function (msg) {
                    if (msg=="success"){
                        $.ajax({
                            url: "Cart",
                            data: {
                                user_id: user_id,
                                commodity_id:${commodity.commodity_id},
                                commodity_price: document.getElementById("price").innerText,
                                commodity_color: color,
                                commodity_size: size,
                                commodity_count:${commodity.commodity_count}
                            },
                            dataType: "json",
                            success: function (msg) {
                                alert("添加成功")
                                location.reload();
                            }
                        })
                    }else {
                        alert("该商品已经存在于购物车里了")
                    }
                }
            })



        }
    }

    function gocart() {
        if (document.getElementById("username").innerText == "登录") {
            alert("请登录后购买")
            document.getElementById("username").click();
        } else if ($.trim("${commodity.commodity_count}") == 0) {
            alert("商品库存不足，暂时无法购买")
        } else {
            var color = form.color.value;
            var size = encodeURI(form.disk.value);
            location.href = "addpay?user_id=${user.user_id}&&commodity_id=${commodity.commodity_id}&&commodity_price=" + document.getElementById("price").innerText + "&&commodity_color=" + color + "&&commodity_size=" + size + "&&commodity_count=${commodity.commodity_count}";
            /*$.ajax({
                url:"addpay",
                data:{
                    user_id:user_id,
                    commodity_id:,
                    commodity_price:document.getElementById("price").innerText,
                    commodity_color:color,
                    commodity_size:size,
                },
                dataType:"json",
                success:function (msg) {
                    location.href="address?user_id=";
                }
            })*/
        }
    }

    //删除购物车内容
    function del(cart_id, user_id) {

        $.ajax({
            url: "cartDel",
            data: {
                cart_id: cart_id,
                user_id: user_id,
                commodity_count:${commodity.commodity_count},
                commodity_id:${commodity.commodity_id}
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
        var email = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
        if ($("#email").val() == "") {
            alert("请输入邮件")
        } else if (email.test($("#email").val()) != true) {
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

    //判断购物车是否有商品
    function settlement() {
        if ($.trim("${count.count}") == 0) {
            alert("购物车空空如也呢，快去浏览商品把")
        } else {
            document.getElementById("settlement").href = "address?user_id=${user.user_id}";
        }
    }

    //模态框
    $(function () {

        $(document).on('click', '.m-login-modal .close , .m-login-modal .bg', function () {
            $('.m-login-modal').hide();
            //resetLogin();
        })
    })
</script>


<script>
    //主页图片
    $(function () {
        imgView();

        function imgView() {
            var thumbHeight = $('.m-product-img .thumb li').outerHeight() + 10; //缩略图高度+margin
            var thumbParentHeight = $('.m-product-img .thumb').height(); //显示缩略图容器高度
            var count = 1; //当前显示缩略图编号
            var imgnum = $('.m-product-img .thumb li').length; //缩略图个数
            var viewnum = Math.round(thumbParentHeight / thumbHeight); //显示的缩略图个数
            var hidenum = imgnum - viewnum; //隐藏缩略图个数
            var ul = $('.m-product-img .thumb ul');
            var li = $('.m-product-img .thumb ul li');
            var hoverIndex = $('.m-product-img .thumb ul .n-hover').index();
            var viewimg = $('.m-product-img .view img');
            $('.m-product-img .up , .m-product-img .down').on("selectstart", function () {
                return false;
            });
            li.on('mouseover touchstart', function (event) {
                li.removeClass('n-hover');
                $(this).addClass('n-hover');
                hoverIndex = $('.m-product-img .thumb ul .n-hover').index();
                var src = $('.m-product-img .thumb ul .n-hover img').data('src');
                viewimg.attr('src', src);
            })
        }
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
    <a class="top i-icon"><img src="img/top.png"/></a>
</div>

</body>

</html>