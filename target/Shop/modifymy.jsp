<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- saved from url=(0038)http://www.aifou.cn/address/index.html -->
<html lang="zh-cn">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>CCC商城</title>
	<link href="css/style.css" rel="stylesheet">
	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/common.js"></script>
	<script>
		$.ajax({
			url:"allCart",
			data:{
				user_id:${user.user_id}
			},
		})
	</script>
	<style>
		/*a  upload */

		.a-upload {
			padding: 6px 10px;
			height: 33px;
			line-height: 20px;
			position: relative;
			cursor: pointer;
			color: #888;
			background: #fafafa;
			border: 1px solid #ddd;
			border-radius: 6px;
			overflow: hidden;
			display: inline-block;
			*display: inline;
			*zoom: 1
		}

		.a-upload input {
			position: absolute;
			font-size: 100px;
			right: 0;
			top: 0;
			opacity: 0;
			filter: alpha(opacity=0);
			cursor: pointer
		}

		.a-upload:hover {
			color: #444;
			background: #eee;
			border-color: #ccc;
			text-decoration: none
		}
	</style>
</head>

<body class="bg-f8" data-tpage="" data-tproduct="" data-tuserid="613072">
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
								<div class="thumb"><a href="COMMODITY_Detailed?commodity_id=${cart.commodity_id}&&pj=2"><img src="${cart.commodity_photo1}"></a></div>
								<div class="details">
					<p class="title">${cart.commodity_brand}&nbsp;&nbsp;${cart.commodity_name}</p>
					<p class="desc">${cart.commodity_size}&nbsp;&nbsp;${cart.color}</p>
						<p class="price">¥${cart.commodity_price}&nbsp;&nbsp;X${cart.num}&nbsp;&nbsp;</p>
						<%--<p class="desc">
							<a class="u-btnl" onclick="cart_plus(shuliang=-1,cart_id=${cart.cart_id},commodity_id=${cart.commodity_id},num=${cart.num})">-</a>
							&nbsp;&nbsp;${cart.num}&nbsp;&nbsp;
							<a class="u-btnl" onclick="cart_plus(shuliang=+1,cart_id=${cart.cart_id},commodity_id=${cart.commodity_id},num=${cart.num})">＋</a>
						</p>--%>
				</div><%--<i class="i-icon delete" onclick="del(cart_id=${cart.cart_id},user_id=${user.user_id}+0)"></i></li>--%>
				</ul>
				</c:forEach>
				<div class="action">
					<p class="cartinfo"><span class="cartcount">共有<em>${count.count}</em>件商品</span><span class="countprice">￥${count.sum}</span></p>
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
<section class="m-uc-user">
	<div class="w">
		<div class="user">
			<a class="avatar"><img src="${user.user_photo}"></a>
			<span>${user.user_name}</span>
			<p class="phone">绑定邮箱：${user.user_email}</p>
		</div>
	</div>
</section>

<section class="m-uc w">

	<aside class="m-uc-nav">
		<nav>
			<div class="list">
				<h3>我的订单</h3>
				<a class="item " href="allOrders?user_id=${user.user_id}"><i></i>我的订单</a>
			</div>
			<div class="list">
				<h3>信息管理</h3>
				<a class="item n-active" href="modifymy.jsp"><i></i>修改个人信息</a>
				<a class="item" href="myAddress?user_id=${user.user_id}"><i></i>修改地址</a>
			</div>
		</nav>
	</aside>
	<form action="modifyMy" method="post" enctype="multipart/form-data">
		<div class="m-modal">
			<input name="user_id" value="${user.user_id}">
			<input name="user_email" value="${user.user_email}">
		</div>
	<div class="main">
		<a href="javascript:;" class="a-upload">
			<input type="file" name="file" id="">上传头像
		</a>
		<div class="dialog">
			<div class="content">
				<div class="body">
					<div class="m-form c" id="form">
						<div class="formitm itm-name">
							<div class="ipt">
								<br />
								<input type="text" class="u-ipt" id="name" name="user_name" placeholder="昵称" value="">
							</div>
						</div>
						<br />
						<div class="formitm btn">
							<button class="u-btn n-middle confirm">确认</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</section>
<script>
	//购物车删除
	function del(cart_id,user_id) {
		$.ajax({
			url:"cartDel",
			data:{cart_id:cart_id,
				user_id:user_id
			},
			dataType:"json",
			success:function (msg) {
				alert("删除成功")
				location.reload();
			}
		})
	}

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

	//判断购物车是否有商品
	function settlement() {
		if ($.trim("${count.count}")==0){
			alert("购物车空空如也呢，快去浏览商品把")
		}else {
			document.getElementById("settlement").href="address?user_id=${user.user_id}";
		}
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