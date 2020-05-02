<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Dashboard">
		<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
		<title>Dashio - Bootstrap Admin Template</title>

		<!-- Favicons -->
		<link href="img/favicon.png" rel="icon">
		<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

		<!-- Bootstrap core CSS -->
		<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<!--external css-->
		<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
		<!-- Custom styles for this template -->
		<link href="css/adminstyle.css" rel="stylesheet">
		<link href="css/style-responsive.css" rel="stylesheet">

	</head>

	<body>

		<div id="login-page">
			<div class="container">
				<form class="form-login" method="post" action="AdminLogin" id="loginf">
					<h2 class="form-login-heading">sign in now</h2>
					<div class="login-wrap">
						<input type="text" class="form-control" name="admin_id" id="admin_id" placeholder="User ID" autofocus>
						<br>
						<input type="password" class="form-control" name="admin_pass"id="admin_pass" placeholder="Password">
						<br />
						<button class="btn btn-theme btn-block"  type="button" onclick="login()"><i class="fa fa-lock"></i> SIGN IN</button>
					</div>
				</form>
			</div>
		</div>
		<script>
			function login() {
				if ($("#admin_id").val()==''){
					alert("请输入管理员用户名")
				} else if ($("#admin_pass").val()==""){
					alert("请输入管理员密码")
				} else {
					$("#loginf").submit();
				}
			}


		</script>
		<!-- js placed at the end of the document so the pages load faster -->
		<script src="lib/jquery/jquery.min.js"></script>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
		<!--BACKSTRETCH-->
		<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
		<script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>
		<script>
			$.backstretch("img/login-bg.jpg", {
				speed: 500
			});
		</script>
	</body>

</html>