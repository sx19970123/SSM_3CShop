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
                    <a href="AllAdmin">
                        <i class="fa fa-tasks"></i>
                        <span>管理管理员</span>
                    </a>
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <section id="main-content">
        <section class="wrapper">
            <h3><i class="fa fa-angle-right"></i>&nbsp;&nbsp;管&nbsp;&nbsp;理&nbsp;&nbsp;管&nbsp;&nbsp;理&nbsp;&nbsp;员&nbsp;&nbsp;
            </h3>
            <div class="col-md-12">

                <div class="content-panel">

                    <ul class="unstyled inbox-pagination">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">添加管理员
                        </button> &nbsp;&nbsp;&nbsp;
                    </ul>
                    <table class="table table-striped table-advance table-hover">
                        <thead>
                        <tr>
                            <th>管理员ID</th>
                            <th class="hidden-phone">管理员名称</th>
                            <th>管理员权限</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <c:forEach items="${ad_admins}" var="ad_admin">
                            <tbody>
                            <tr>
                                <td class="hidden-phone">${ad_admin.admin_id}</td>
                                <td>${ad_admin.admin_name}</td>
                                <td>${ad_admin.role_name}</td>
                                <td>
                                    <a href="#" onclick="mo(admin_id=${ad_admin.admin_id})" data-toggle="modal"
                                       data-target="#Modal"><span
                                            class="label label-success">修改</span></a>
                                    &nbsp;
                                    <a href="#" onclick="notdel()"><span class="label label-danger">删除</span></a>
                                </td>
                            </tr>
                            </tbody>
                        </c:forEach>
                        <c:forEach items="${ad_admins1}" var="ad_admin">
                            <tbody>
                            <tr>
                                <td class="hidden-phone">${ad_admin.admin_id}</td>
                                <td>${ad_admin.admin_name}</td>
                                <td>${ad_admin.role_name}</td>
                                <td>
                                    <a href="#" onclick="modify(admin_id=${ad_admin.admin_id})" data-toggle="modal"
                                       data-target="#Modal"><span
                                            class="label label-success">修改</span></a>
                                    &nbsp;
                                    <a href="DelAdmin?admin_id=${ad_admin.admin_id}"><span
                                            class="label label-danger">删除</span></a>
                                </td>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>

                </div>
            </div>
        </section>
    </section>
</section>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加管理员</h4>
            </div>
            <div class="modal-body">
                <form class="contact-form php-mail-form" role="form" id="form" action="AddAdmin" method="post">

                    <div class="form-group">
                        <input type="name" name="admin_name" id="ae" class="form-control" placeholder="管理员名称"
                               autocomplete="off">
                        <div class="validate"></div>
                    </div>

                    <div class="form-group">
                        <input type="password" name="admin_pass" id="ap" class="form-control" placeholder="密码"
                               autocomplete="off">
                        <div class="validate"></div>
                    </div>

                    &nbsp;&nbsp;
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-theme">添加</button>
                    </div>
                    <br/>
                </form>
            </div>
        </div>
    </div>
</div>

<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="Modal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">修改管理员</h4>
            </div>
            <div class="modal-body">
                <form class="contact-form php-mail-form" id="form1" role="form" action="AdminModify" method="POST">
                    <div class="modal">
                        <input type="text" name="admin_id" id="admin_id" value="">
                        <input type="text" name="control_id" id="control_id" value="">
                    </div>

                    <div class="form-group">
                        <label>管理员名称:</label><input type="name" name="admin_name" class="form-control" value=""
                                                    id="admin_name" placeholder="管理员名称"
                                                    data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                        <div class="validate"></div>
                    </div>

                    <div class="form-group">
                        <label>管理员密码:</label><input type="password" name="admin_pass" value="" class="form-control"
                                                    id="admin_pass"
                                                    placeholder="密码"
                                                    data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                        <div class="validate"></div>
                    </div>
                    &nbsp;&nbsp;
                    <label>选择权限:</label>
                    <select class="form-control" name="role_id" id="roledel">
                        <option value="" id="role_id">请选择：</option>
                        <c:forEach items="${ad_roles}" var="ad_role">
                            <option value="${ad_role.role_id}">${ad_role.role_name}</option>
                        </c:forEach>
                    </select>
                    <br/>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-theme" onclick="mod()" type="button">修改</button>
            </div>
        </div>
    </div>
</div>
<script>
    //回显（未给权限）
    function modify(admin_id) {
        $.ajax({
            url: "AdminById",
            data: {admin_id: admin_id},
            dataType: "json",
            type: "post",
            success: function (msg) {
                document.getElementById("admin_name").value = msg.admin_name;
                document.getElementById("admin_pass").value = msg.admin_pass;
                document.getElementById("control_id").value = msg.control_id;
                document.getElementById("admin_id").value = msg.admin_id;
                document.getElementById("role_id").value = 999;
                $("#role_id").empty();
                $("#role_id").append("请选择：");
            }
        })
    }

    //回显（已给权限）
    function mo(admin_id) {
        $.ajax({
            url: "RoleAdminById",
            data: {admin_id: admin_id},
            dataType: "json",
            type: "post",
            success: function (msg) {
                document.getElementById("admin_name").value = msg.admin_name;
                document.getElementById("admin_pass").value = msg.admin_pass;
                document.getElementById("control_id").value = msg.control_id;
                document.getElementById("admin_id").value = msg.admin_id;
                document.getElementById("role_id").value = msg.role_id;
                $("#role_id").empty();
                $("#role_id").append(msg.role_name);
                $("#roledel").append("  <option value=\"666\">删除权限</option>")
            }
        })
    }

    //添加验证
    /* function add() {
         var admin_name = $("#ae").val();
         var admin_pass = $("#ap").val();
         if (admin_name == '') {
             alert("请填写管理员名称")
         } else if (admin_pass == '') {
             alert("请输入密码")
         } else {
             alert("添加成功")
             $("#form").submit();
             location.href = "AllAdmin"
         }
     }*/

    function mod() {
        var admin_name = $("#admin_name").val();
        var admin_pass = $("#admin_pass").val();
        if (admin_name == '') {
            alert("请输入名称")
        } else if (admin_pass == '') {
            alert("请输入密码")
        } else {
            alert("修改成功")
            $("#form1").submit();
        }
    }

    function notdel() {
        alert("已设置权限管理员无法删除")
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