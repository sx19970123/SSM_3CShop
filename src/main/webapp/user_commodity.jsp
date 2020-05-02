<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css"/>
    <!-- Custom styles for this template -->
    <link href="css/adminstyle.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
    <script src="lib/chart-master/Chart.js"></script>

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
                    <a class="logout" href="login.jsp">登出</a>
                </li>
            </ul>
        </div>
    </header>

    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <p class="centered">
                    <a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a>
                </p>
                <h5 class="centered">ADMIN</h5>
                <li class="sub-menu">
                    <a href="AllUser?pn=1">
                        <i class="fa fa-male"></i>
                        <span>全部用户</span>
                    </a>
                    <a href="allNoPay?pn=1">
                        <i class="fa fa-male"></i>
                        <span>待支付订单</span>
                    </a>
                    <a href="AllNofa?pn=1">
                        <i class="fa fa-male"></i>
                        <span>待发货订单</span>
                    </a>
                    <a href="AllAdminCart?pn=1&&state=0">
                        <i class="fa fa-male"></i>
                        <span>其它订单</span>
                    </a>
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <section id="main-content">
        <section class="wrapper">
            <h3><i class="fa fa-angle-right"></i>&nbsp;&nbsp;待&nbsp;&nbsp;发&nbsp;&nbsp;货&nbsp;&nbsp;订&nbsp;&nbsp;单&nbsp;&nbsp;</h3>
            <div class="col-md-12">

                <div class="content-panel">


                    <table class="table table-striped table-advance table-hover">
                        <thead>
                        <tr>
                            <th>订单ID</th>
                            <th>用户ID</th>
                            <th class="hidden-phone">用户姓名</th>
                            <th>用户手机号码</th>
                            <th>用户地址</th>
                            <th>下单商品</th>
                            <th>颜色版本</th>
                            <th>已付金额</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${users.list}" var="user">
                            <tr>
                                <td class="hidden-phone">${user.cart_id}</td>
                                <td class="hidden-phone">${user.commodity_id}</td>
                                <td>${user.name}</td>
                                <td>${user.user_phone}</td>
                                <td>${user.address}</td>
                                <td>${user.commodity_brand}&nbsp;&nbsp;${user.commodity_name}</td>
                                <td>${user.commodity_color}&nbsp;&nbsp;${user.commodity_size}</td>
                                <td>${user.commodity_price}&nbsp;&nbsp;*&nbsp;&nbsp;${user.num}</td>
                                <td>
                                    <a href="#" onclick="fah(cart_id=${user.cart_id})" data-toggle="modal"
                                       data-target="#Modal"><span class="label label-success">发货</span></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                    <div class="dataTables_paginate paging_bootstrap pagination">
                        <ul>
                            <c:if test="${users.hasPreviousPage}">
                                <li class="prev disabled">
                                    <a href="AllNofa?pn=${users.prePage}">← 上一页</a>
                                </li>
                            </c:if>
                            <c:if test="${users.hasNextPage}">
                                <li class="next">
                                    <a href="AllNofa?pn=${users.nextPage}">下一页 → </a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </section>
</section>

<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="Modal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">发货</h4>
            </div>
            <div class="modal-body">
                <form class="contact-form php-mail-form" role="form" id="faform" action="FA" method="POST">
                    <div class="modal">
                        <input type="text" value="" name="cart_id" id="cart_id">
                    </div>
                    <div class="form-group">
                        <input type="text" name="courier_num" class="form-control" id="courier_num" placeholder="快递单号"
                               data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                        <div class="validate"></div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-theme" type="button" onclick="fa()">确认发货</button>
            </div>
        </div>
    </div>
</div>

<script>
    function fah(cart_id) {
        document.getElementById("cart_id").value=cart_id;
    }
    function fa() {
       if (document.getElementById("courier_num").value==''){
           alert("请填写单号")
       } else {
           document.getElementById("faform").submit();
       }
    }
</script>

<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="lib/jquery.scrollTo.min.js"></script>
<script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
<script src="lib/jquery.sparkline.js"></script>
<script src="lib/common-scripts.js"></script>
<script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="lib/gritter-conf.js"></script>
<script src="lib/sparkline-chart.js"></script>
<script src="lib/zabuto_calendar.js"></script>
</body>

</html>