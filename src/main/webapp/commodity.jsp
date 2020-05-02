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
                    <a href="#"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a>
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
        <section class="wrapper ">
            <h4>商品管理
                <div id="yulan">
                    <ul class="unstyled inbox-pagination">
                        <a href="COMMODITY_Detailed?commodity_id=${commodity.commodity_id}&&pj=2"
                           class="btn btn-primary" target='_BLANK'>预览效果</a> &nbsp;&nbsp;&nbsp;
                    </ul>
                </div>
            </h4>
            <script>
                if ("${commodity.commodity_id}"==""){
                    document.getElementById("yulan").innerHTML = "";
                }
            </script>
            <div class="row mt">
                <!-- /col-lg-12 -->
                <div class="col-lg-12 mt">
                    <div class="row content-panel">
                        <div class="panel-heading">
                            <ul class="nav nav-tabs nav-justified">
                                <li class="active">
                                    <a data-toggle="tab" href="#overview">添加商品</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#contact" class="contact-map">添加可选配信息</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#edit">添加详情图</a>
                                </li>
                            </ul>
                        </div>
                        <!-- /panel-heading -->
                        <div class="panel-body">
                            <div class="tab-content">
                                <div id="overview" class="tab-pane active">
                                    <div class="row">
                                        <form action="AddCommodity" method="post" id="adf"
                                              enctype="multipart/form-data">
                                            <div class="col-md-1"></div>
                                            <div class="col-md-4">
                                                <div class="col-md-8">
                                                    <br/> 商品类别：
                                                    <select class="form-control" name="category_id">
                                                        <c:forEach items="${categories}" var="categorie">
                                                            <option value="${categorie.category_id}">${categorie.category_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <br/> 商品品牌：
                                                    <input type="text" class="form-control" name="brand" id="brand">
                                                    <br/> 商品名称：
                                                    <input type="text" class="form-control" name="commodity_name"
                                                           id="commodity_name">
                                                    <br/> 标准版价格：
                                                    <input type="text" class="form-control" name="commodity_price"
                                                           id="commodity_price">
                                                    <br>
                                                </div>
                                            </div>

                                            <div class="col-md-4 detailed">
                                                <br/>
                                                <br/>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">商品封面1</label>
                                                    <div class="col-md-4">
                                                        <input type="file" name="file1" id="file1" class="">
                                                    </div>
                                                </div>
                                                <br/>
                                                <br/>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">商品封面2</label>
                                                    <div class="col-md-4">
                                                        <input type="file" name="file2" id="file2">
                                                    </div>
                                                </div>
                                                <br/>
                                                <br/>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">商品封面3</label>
                                                    <div class="col-md-4">
                                                        <input type="file" class="" name="file3" id="file3">
                                                    </div>
                                                </div>
                                            </div>
                                            <br/>
                                            <br/>
                                            <button type="button" onclick="adc()"
                                                    class="btn btn-primary btn-lg btn-block">添加
                                            </button>
                                        </form>
                                    </div>
                                </div>

                                <script>
                                    function adc() {
                                        var brand = $("#brand").val();
                                        var commodity_name = $("#commodity_name").val();
                                        var commodity_price = $("#commodity_price").val();
                                        var file1 = $("#file1").get(0).files[0];
                                        var file2 = $("#file2").get(0).files[0];
                                        var file3 = $("#file3").get(0).files[0];
                                        console.info(file1);
                                        console.info(file2);
                                        console.info(file3);
                                        if (brand == '' || commodity_name == '' || commodity_price == '') {
                                            alert("请填入信息")
                                        } else if (file1 && file2 && file3) {

                                            $("#adf").submit();
                                        } else {
                                            alert("请上传商品封面")
                                        }
                                    }
                                </script>

                                <div id="contact" class="tab-pane">
                                    <br/>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-2"></div>

                                        <div class="col-md-3">
                                            <h3> 颜色：</h3>
                                            <br/>
                                            <div class="modal">
                                                <input type="text" name="commodity_id"
                                                       value="${commodity.commodity_id}">
                                            </div>
                                            <input type="text" name="color" id="color" class="form-control" value=""
                                                   placeholder="请输入颜色">
                                            <br>
                                            <br>
                                            <button type="button" onclick="color()" class="btn btn-primary">
                                                添加
                                            </button>
                                        </div>
                                        <!-- /col-md-6 -->
                                        <div class="col-md-2"></div>
                                        <div class="col-md-3">
                                            <h3> 内存和价格：</h3>
                                            <br/>
                                            <input type="text" name="disk" id="disk" class="form-control" value=""
                                                   placeholder="请输入内存大小">&nbsp;&nbsp;&nbsp;&nbsp;

                                            <input type="text" name="price" id="price" class="form-control" value=""
                                                   placeholder="请输入内存对应的价格">
                                            <br>

                                            <button type="button" onclick="disk()" class="btn btn-primary">
                                                添加
                                            </button>
                                        </div>
                                    </div>
                                    <br/>
                                    <br/>
                                    <br/>
                                    <br/>
                                    <br/>

                                </div>
                                <script>
                                    //ajax添加
                                    function color() {
                                        $.ajax({
                                            url: "AddColor",
                                            data: {
                                                commodity_id: "${commodity.commodity_id}",
                                                color: $("#color").val()
                                            },
                                            type: "post",
                                            success: function (msg) {
                                                if (msg == 'success') {
                                                    document.getElementById("color").value = '';
                                                    alert("添加成功")
                                                } else {
                                                    alert("添加失败")
                                                }
                                            }
                                        })
                                    }

                                    function disk() {
                                        $.ajax({
                                            url: "AddDisk",
                                            data: {
                                                commodity_id: "${commodity.commodity_id}",
                                                disk: $("#disk").val(),
                                                price: $("#price").val()
                                            },
                                            type: "post",
                                            success: function (msg) {
                                                if (msg == 'success') {
                                                    document.getElementById("disk").value = '';
                                                    document.getElementById("price").value = '';
                                                    alert("添加成功")
                                                } else {
                                                    alert("添加失败")
                                                }
                                            }
                                        })
                                    }
                                </script>
                                <!-- /tab-pane -->
                                <div id="edit" class="tab-pane">

                                    <div class="row">
                                        <form id="fpf" enctype="multipart/form-data">
                                            <div class="col-lg-12">
                                                <div class="modal">
                                                    <input type="text" id="commodity_id" name="commodity_id"
                                                           value="${commodity.commodity_id}" class="default">
                                                </div>
                                                <div class="form-group">
                                                    <br/>
                                                    <h3><label class="control-label col-md-2">添加详情图</label></h3>
                                                    <div class="col-md-2">
                                                        <input type="file" id="photoFile" name="photoFile"
                                                               class="default">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <br/><br/><br/>
                                    <button type="button" onclick="addphoto()" class="btn btn-primary btn-lg btn-block">
                                        添加
                                    </button>
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
    function addphoto() {

        var formPhoto = new FormData($("#fpf")[0]);
        formPhoto.append("commodity_id", $("#commodity_id").val());
        formPhoto.append("photoFile", $("#photoFile")[0].files[0]);
        $.ajax({
            url: "AddCommodityPhoto",
            data: formPhoto,
            type: "post",
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function () {
                alert("添加成功");
                document.getElementById("photoFile").value = '';
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