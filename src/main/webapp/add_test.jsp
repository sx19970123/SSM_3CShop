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
<script>


</script>
	</head>

	<body>
		<section id="container">
			<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
			<!--header start-->
			<header class="header black-bg">
				<div class="sidebar-toggle-box">
					<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
				</div>
				<!--logo start-->
				<a href="index.html" class="logo"><b>3C<span>SHOP</span></b></a>
				<div class="top-menu">
					<ul class="nav pull-right top-menu">
						<li>
							<a class="logout" href="CommoditysNoTest?pn=1">返回页面</a>
						</li>
					</ul>
				</div>
			</header>
			<!--header end-->
			<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
			<!--sidebar start-->
			<aside>
				<div id="sidebar" class="nav-collapse ">
					<!-- sidebar menu start-->
					<ul class="sidebar-menu" id="nav-accordion">
						<p class="centered">
							<a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a>
						</p>
						<h5 class="centered">Sam Soffes</h5>
						<li class="sub-menu">
							<a href="javascript:;">
								<i class="fa fa-male"></i>
								<span>用户管理</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="javascript:;">
								<i class="fa fa-shopping-basket"></i>
								<span>商品管理</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="javascript:;">
								<i class="fa fa-bell"></i>
								<span>发货管理</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="javascript:;">
								<i class="fa fa-book"></i>
								<span>评测系统</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="javascript:;">
								<i class="fa fa-tasks"></i>
								<span>管理管理员</span>
							</a>
						</li>
					</ul>
					<!-- sidebar menu end-->
				</div>
			</aside>
			<!--sidebar end-->
			<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
			<!--main content start-->
			<section id="main-content">
				<section class="wrapper ">
					<h4>评测系统
						<ul class="unstyled inbox-pagination">
							<a href="test?commodity_id=${commodity_id}" class="btn btn-primary"  target='_BLANK'>预览效果</a> &nbsp;&nbsp;&nbsp;
						</ul></h4>
					<div class="row mt">
						<!-- /col-lg-12 -->
						<div class="col-lg-12 mt">
							<div class="row content-panel">
								<div class="panel-heading">
									<ul class="nav nav-tabs nav-justified">
										<li class="active">
											<a data-toggle="tab" href="#overview">编辑评测文本</a>
										</li>
										<li>
											<a data-toggle="tab" href="#edit">编辑评测图</a>
										</li>
									</ul>
								</div>
								<!-- /panel-heading -->
								<div class="panel-body">
									<div class="tab-content">
										<div id="overview" class="tab-pane active">
											<div class="row">

												<form method="post" action="addText" id="addText">
													<div class="modal">
													<input type="text" name="commodity_id" value="${commodity_id}">
													</div>
												<div class="col-md-4">
													<div class="form-group">
														<h3>外观描述</h3>
														<textarea class="form-control" name="test_facade_body" id="test_facade_body"  placeholder="外观描述" rows="5" data-rule="required" data-msg="Please write something for us" style="margin: 0px 30px 0px 0px; height: 111px; width: 750px;"></textarea>
														<div class="validate"></div>
													</div>
												</div>

												<div class="col-md-4">
													<div class="form-group">
														<h3>UI描述</h3>
														<textarea class="form-control" name="test_ui_body" id="test_ui_body"  placeholder="UI描述" rows="5" data-rule="required" data-msg="Please write something for us" style="margin: 0px 30px 0px 0px; height: 111px; width: 750px;"></textarea>
														<div class="validate"></div>
													</div>
												</div>

												<div class="col-md-4">
													<div class="form-group">
														<h3>性能描述</h3>
														<textarea class="form-control" name="test_property_body" id="test_property_body"  placeholder="性能描述" rows="5" data-rule="required" data-msg="Please write something for us" style="margin: 0px 30px 0px 0px; height: 111px; width: 750px;"></textarea>
														<div class="validate"></div>
													</div>
												</div>

												<div class="col-md-4">
													<div class="form-group">
														<h3>相机描述</h3>
														<textarea class="form-control" name="test_photo_body" id="test_photo_body" placeholder="相机描述" rows="5" data-rule="required" data-msg="Please write something for us" style="margin: 0px 30px 0px 0px; height: 111px; width: 750px;"></textarea>
														<div class="validate"></div>
													</div>
												</div>

												<div class="col-md-4">
													<div class="form-group">
														<h3>总结</h3>
														<textarea class="form-control" name="test_over_body" id="test_over_body" placeholder="总结" rows="5" data-rule="required" data-msg="Please write something for us" style="margin: 0px 30px 0px 0px; height: 111px; width: 750px;"></textarea>
														<div class="validate"></div>
													</div>
												</div>
												</form>
											</div>

											<br />
											<br /> <br />

											<button type="button" onclick="addText()" class="btn btn-primary btn-lg btn-block">添加</button>
											<br />
											<br /> <br />
										</div>

										<script>
											function addText() {
												if (
												$("#test_facade_body").val()||
												$("#test_ui_body").val()||
												$("#test_property_body").val()||
												$("#test_photo_body").val()||
												$("#test_over_body").val()!=''
											){
													$("#addText").submit();
													alert("添加成功")
												}else {
													alert("请填写完成信息")
												}
											}
										</script>

										<!-- /tab-pane -->
										<div id="edit" class="tab-pane">
											<div class="row">
												<div class="col-lg-3">
													<form enctype="multipart/form-data" id="addFacadePhoto">
														<div class="modal">
															<input type="text" name="commodity_id" id="commodity_id" value="${commodity_id}">
														</div>
													<div class="form-group">
														<br />
														<h3><label class="control-label col-md-3">外观图</label></h3>
														<div class="col-md-2">
															<input type="file" class="default" id="FacadePhoto" name="FacadePhoto">
															<br />
															<input type="button" onclick="addFacadePhoto()" value="添加"/>
														</div>
													</div>
													</form>
												</div>
												<script>
													function addFacadePhoto() {
														var FacadePhoto = new FormData($("#addFacadePhoto")[0]);
														FacadePhoto.append("commodity_id",$("#commodity_id").val());
														FacadePhoto.append("test_facade_photo", $("#FacadePhoto")[0].files[0]);
														$.ajax({
															url: "addFacadePhoto",
															data: FacadePhoto,
															type: "post",
															async: false,
															cache: false,
															contentType: false,
															processData: false,
															success: function () {
																alert("添加成功")
																document.getElementById("FacadePhoto").value = '';
															}
														})
													}

												</script>
												<div class="col-lg-3">
													<form enctype="multipart/form-data" id="addUIPhoto">
														<div class="modal">
															<input type="text" name="commodity_id" id="commodity_id2" value="${commodity_id}">
														</div>
													<div class="form-group">
														<br />
														<h3><label class="control-label col-md-3">UI图</label></h3>
														<div class="col-md-2">
															<input type="file" class="default" id="UIPhoto" name="UIPhoto">
															<br />
															<input type="button" onclick="addUIPhoto()" value="添加"/>
														</div>
													</div>
													</form>
												</div>
												<script>
													function addUIPhoto() {
														var addUIPhoto = new FormData($("#addUIPhoto")[0]);
														addUIPhoto.append("commodity_id",$("#commodity_id2").val());
														addUIPhoto.append("test_ui_photo", $("#UIPhoto")[0].files[0]);
														$.ajax({
															url: "addUIPhoto",
															data: addUIPhoto,
															type: "post",
															async: false,
															cache: false,
															contentType: false,
															processData: false,
															success: function () {
																alert("添加成功")
																document.getElementById("UIPhoto").value = '';
															}
														})
													}

												</script>
												<div class="col-lg-3">
													<form enctype="multipart/form-data" id="addPropertyPhoto">
														<div class="modal">
															<input type="text" name="commodity_id" id="commodity_id3" value="${commodity_id}">
														</div>
													<div class="form-group">
														<br />
														<h3><label class="control-label col-md-3">性能图</label></h3>
														<div class="col-md-2">
															<input type="file" class="default" name="PropertyPhoto" id="PropertyPhoto">
															<br />
															<input type="button" onclick="addPropertyPhoto()" value="添加"/>
														</div>
													</div>
													</form>
												</div>
												<script>
													function addPropertyPhoto() {
														var addPropertyPhoto = new FormData($("#addPropertyPhoto")[0]);
														addPropertyPhoto.append("commodity_id",$("#commodity_id3").val());
														addPropertyPhoto.append("test_property_photo", $("#PropertyPhoto")[0].files[0]);
														$.ajax({
															url: "addPropertyPhoto",
															data: addPropertyPhoto,
															type: "post",
															async: false,
															cache: false,
															contentType: false,
															processData: false,
															success: function () {
																alert("添加成功")
																document.getElementById("PropertyPhoto").value = '';
															}
														})
													}



												</script>
												<div class="col-lg-3">
													<form enctype="multipart/form-data" id="addPhotoPhoto">
														<div class="modal">
															<input type="text" name="commodity_id" id="commodity_id4" value="${commodity_id}">
														</div>
													<div class="form-group">
														<br />
														<h3><label class="control-label col-md-3">相机图</label></h3>
														<div class="col-md-2">
															<input type="file" class="default" id="PhotoPhoto" name="PhotoPhoto">
															<br />
															<input type="button" onclick="addPhotoPhoto()" value="添加"/>
														</div>
													</div>
													</form>
												</div>
												<script>
													function addPhotoPhoto() {
														var addPhotoPhoto = new FormData($("#addPhotoPhoto")[0]);
														addPhotoPhoto.append("commodity_id",$("#commodity_id4").val());
														addPhotoPhoto.append("test_photo_photo", $("#PhotoPhoto")[0].files[0]);
														$.ajax({
															url: "addPhotoPhoto",
															data: addPhotoPhoto,
															type: "post",
															async: false,
															cache: false,
															contentType: false,
															processData: false,
															success: function () {
																alert("添加成功")
																document.getElementById("PhotoPhoto").value = '';
															}
														})
													}

												</script>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</section>

		</section>
		<!-- js placed at the end of the document so the pages load faster -->
		<script src="lib/jquery/jquery.min.js"></script>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
		<script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
		<script src="lib/jquery.scrollTo.min.js"></script>
		<script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
		<!--common script for all pages-->
		<script src="lib/common-scripts.js"></script>
		<!--script for this page-->
		<!-- MAP SCRIPT - ALL CONFIGURATION IS PLACED HERE - VIEW OUR DOCUMENTATION FOR FURTHER INFORMATION -->
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASm3CwaK9qtcZEWYa-iQwHaGi3gcosAJc&sensor=false"></script>

	</body>

</html>