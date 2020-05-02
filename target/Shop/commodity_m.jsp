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
    <!-- Custom styles for this template -->
    <link href="css/adminstyle.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">

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
                    <a class="logout" href="AllCommodity?commodity_category_id=0&&pn=1">返回页面</a>
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
                <h5 class="centered">ADMIN</h5>
                <li class="sub-menu">
                    <a href="AllCommodity?commodity_category_id=0&&pn=1">
                        <i class="fa fa-shopping-basket"></i>
                        <span>商品管理</span>
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
        <section class="wrapper">
            <h4>商品管理
                <ul class="unstyled inbox-pagination">
                    <a href="COMMODITY_Detailed?commodity_id=${commodity.commodity_id}&&pj=2" class="btn btn-primary" target='_BLANK'>预览效果</a> &nbsp;&nbsp;&nbsp;
                </ul>
            </h4>
            <div class="row mt">
                <!-- /col-lg-12 -->
                <div class="col-lg-12 mt">
                    <div class="">
                        <!-- /panel-heading -->
                        <div class="panel-body">
                            <div class="tab-content">
                                <div id="overview" class="tab-pane active">
                                    <br/>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-panel">
                                                <h3> 标准信息：</h3><br>
                                                <form class="form-inline" role="form">
                                                    <div class="modal">
                                                        <input type="text" name="commodity_id"
                                                               value="${commodity.commodity_id}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputEmail">商品品牌</label>
                                                        <input type="text" class="form-control" id="exampleInputEmail"
                                                               placeholder="品牌" name="commodity_brand"
                                                               value="${commodity.commodity_brand}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputEmail2">商品名称</label>
                                                        <input type="text" class="form-control" id="exampleInputEmail2"
                                                               placeholder="名称" name="commodity_name"
                                                               value="${commodity.commodity_name}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputPassword2">标准版价格</label>
                                                        <input type="text" class="form-control"
                                                               id="exampleInputPassword2"
                                                               placeholder="标准版价格" name="commodity_price"
                                                               value="${commodity.commodity_price}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputPassword23">库存</label>
                                                        <input type="text" class="form-control"
                                                               id="exampleInputPassword23"
                                                               placeholder="标准版价格" name="commodity_price"
                                                               value="${commodity.commodity_count}">
                                                    </div>
                                                    <button type="button" onclick="modifyCommodity()"
                                                            class="btn btn-theme">
                                                        修改
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-panel">
                                                <h3> 颜色：</h3>
                                                <br/>
                                                <c:forEach items="${colors}" var="color">
                                                    <form class="form-inline" action="modifyColor" method="post"
                                                          role="form">
                                                        <div class="modal">
                                                            <input type="text" name="cid" value="${color.cid}">
                                                            <input type="text" name="commodity_id"
                                                                   value="${commodity.commodity_id}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="sr-only">颜色</label>
                                                            <input type="text" class="form-control"
                                                                   placeholder="标准版价格" name="color"
                                                                   value="${color.color}">
                                                        </div>
                                                        <button type="submit" class="btn btn-theme">修改</button>
                                                        <br> <br>
                                                    </form>
                                                </c:forEach>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-panel">
                                                <h3> 内存和价格：</h3>
                                                <br/>
                                                <c:forEach items="${disks}" var="disk">
                                                    <form action="modifySize" method="post" class="form-inline">
                                                        <div class="modal">
                                                            <input type="text" name="did" value="${disk.did}">
                                                            <input type="text" name="commodity_id"
                                                                   value="${disk.commodity_id}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="sr-only">内存</label>
                                                                <%--<input type="text" class="form-control"
                                                                       placeholder="内存" name="disk" value="${disk.disk}">--%>
                                                            <div><h4>${disk.disk}</h4></div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="sr-only">价格</label>
                                                            <input type="text" class="form-control"
                                                                   placeholder="价格" name="price" value="${disk.price}">
                                                        </div>
                                                        <button type="submit" class="btn btn-theme">修改</button>
                                                        <br> <br>
                                                    </form>
                                                </c:forEach>
                                                <br>
                                            </div>
                                        </div>

                                    </div>
                                    <br/>
                                    <br/>
                                    <br/>
                                    <br/>
                                    <br/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</section>
<script>
    function modifyCommodity() {
        var brand = $("#exampleInputEmail").val();
        var name = $("#exampleInputEmail2").val();
        var price = $("#exampleInputPassword2").val();
        var count = $("#exampleInputPassword23").val();
        $.ajax({
            url: "modifyCommodity",
            data: {
                commodity_id: ${commodity.commodity_id},
                commodity_brand: brand,
                commodity_name: name,
                commodity_price: price,
                commodity_count:count
            },
            type: "post",
            success: function (msg) {
                if (msg == 'success') {
                    location.reload();
                } else {
                    alert("修改失败")
                }
            }
        })
    }
</script>

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
</body>

</html>