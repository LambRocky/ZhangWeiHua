<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-10">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-10">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>超市订单管理系统</title>

    <link href="${pageContext.request.contextPath }/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->


    <!-- Bootstrap -->

    <link href="${pageContext.request.contextPath }/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="${pageContext.request.contextPath }/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="${pageContext.request.contextPath }/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath }/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath }/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath }/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath }/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
          rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/build/css/custom.css" rel="stylesheet">
</head>

<style>

    .zhezhao {
        display: none; /* 修改这里可以让遮罩层消失*/
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: #000;
        opacity: 0.7;
        filter: alpha(opacity=70);
        overflow: hidden;
    }

    .remove {
        display: none; /* 修改这里可以让删除框消失*/
        width: 400px;
        height: 190px;
        position: absolute;
        top: 200px;
        left: 500px;
        background: #fff;
        border-radius: 4px;
    }

    .removerChid {
        margin: 4px;
        border: 1px solid #ccc;
    }

    .removerChid h2 {
        padding-left: 8px;
        font-size: 14px;
        line-height: 30px;
        margin: 4px 8px;
        border-bottom: 1px solid #99cc33;
    }

    .removeMain {
        margin-top: 38px;
        text-align: center;
        margin-bottom: 30px;
        border-radius: 4px;
    }

    .removeMain a {
        padding: 0 20px;
        display: inline-block;
        height: 30px;
        line-height: 30px;
        border-radius: 4px;
        border: 1px solid #5e8809;
        margin-top: 30px;
        background: #99cc33;
        color: #fff;
    }

    .removeMain a:hover, .removeMain a:active {
        background: #679016;
    }

</style>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentellela Alela!</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile">
                    <div class="profile_pic">
                        <img src="${pageContext.request.contextPath }/image/cropper.jpg"
                             alt="${pageContext.request.contextPath }."
                             class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>John Doe</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br/>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-table"></i> 订单<span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/sys/bill/billlist">订单查询</a></li>
                                    <li><a href="/sys/bill/billadd">订单添加</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-paw"></i>供应商<span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/sys/provider/providerlist">供应商查询</a></li>
                                    <li><a href="/sys/provider/provideradd">供应商添加</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-user"></i>用户<span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/sys/user/userlist">用户查询</a></li>
                                    <li><a href="/sys/user/useradd">用户添加</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                               aria-expanded="false">
                                <img src="${pageContext.request.contextPath }/image/cropper.jpg" alt="">John Doe
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="javascript:;"> Profile</a></li>
                                <li>
                                    <a href="javascript:;">
                                        <span class="badge bg-red pull-right">50%</span>
                                        <span>Settings</span>
                                    </a>
                                </li>
                                <li><a href="javascript:;">Help</a></li>
                                <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown"
                               aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img
                                                src="${pageContext.request.contextPath }/image/cropper.jpg"
                                                alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where${pageContext.request.contextPath }.
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img
                                                src="${pageContext.request.contextPath }/image/cropper.jpg"
                                                alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where${pageContext.request.contextPath }.
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img
                                                src="${pageContext.request.contextPath }/image/cropper.jpg"
                                                alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where${pageContext.request.contextPath }.
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img
                                                src="${pageContext.request.contextPath }/image/cropper.jpg"
                                                alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where${pageContext.request.contextPath }.
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>你现在所在的位置是:
                            <small>供应商管理页面</small>
                        </h3>

                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control"
                                       placeholder="Search for">
                                <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">

                        <div class="x_panel">
                            <div class="x_title">
                                <h2>
                                    <small></small>
                                </h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                           aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>

                            <div class="x_content">
                                <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"
                                      action="/sys/provider/providerlistcon" method="get">
                                    <div class="form-group">
                                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="queryProCode">供应商编码</label>
                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                            <input type="text" name="queryProCode" id="queryProCode"
                                                   class="form-control col-md-7 col-xs-12">
                                        </div>

                                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="queryProName">供应商名称</label>
                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                            <input type="text" name="queryProName" id="queryProName"
                                                   class="form-control col-md-7 col-xs-12">
                                        </div>

                                        <div class="col-md-1 col-sm-1 col-xs-12">
                                            <input value="查 询" type="submit" id="searchbutton" class="form-control">
                                        </div>
                                    </div>

                                </form>




                                <table id="datatable" class="table table-striped table-bordered">

                                    <thead>
                                    <tr>
                                        <th width="10%">供应商编码</th>
                                        <th width="17%">供应商名称</th>
                                        <th width="8%">联系人</th>
                                        <th width="13%">联系电话</th>
                                        <th width="13%">传真</th>
                                        <th width="12%">创建时间</th>
                                        <th width="27%">操作</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach var="provider" items="${providerList }" varStatus="status">
                                        <tr>
                                            <td>
                                                <span>${provider.proCode }</span>
                                            </td>
                                            <td>
                                                <span>${provider.proName }</span>
                                            </td>
                                            <td>
                                                <span>${provider.proContact}</span>
                                            </td>
                                            <td>
                                                <span>${provider.proPhone}</span>
                                            </td>
                                            <td>
                                                <span>${provider.proFax}</span>
                                            </td>
                                            <td>
                                                <span>
                                                <fmt:formatDate value="${provider.creationDate}" pattern="yyyy-MM-dd"/>
                                                </span>
                                            </td>

                                            <td>
                                                <span> <a href="/sys/provider/providerview/${provider.id}" style="color: black"
                                                          class="btn btn-info fa fa-eye">查看</a> </span>
                                                <span> <a href="/sys/provider/providertomodify/${provider.id}" style="color: black"
                                                          class="btn btn-success fa fa-edit">修改</a></span>
                                                <span> <a style="color: black"
                                                          class="btn btn-danger fa fa-remove deleteprovider"
                                                          href="javascript:;"
                                                          proid=${provider.id } proname=${provider.proName }>删除</a></span>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>


<div class="zhezhao"></div>
<div class="remove" id="removeProv">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该订单吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>
<!-- jQuery -->
<script src="${pageContext.request.contextPath }/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath }/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath }/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="${pageContext.request.contextPath }/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath }/vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="${pageContext.request.contextPath }/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/vendors/datatables.net-scroller/js/datatables.scroller.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/jszip/dist/jszip.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath }/vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="${pageContext.request.contextPath }/build/js/custom.min.js"></script>

<!-- Datatables -->
<script>
    $(document).ready(function () {
        var handleDataTableButtons = function () {
            if ($("#datatable-buttons").length) {
                $("#datatable-buttons").DataTable({
                    dom: "Bfrtip",
                    buttons: [
                        {
                            extend: "copy",
                            className: "btn-sm"
                        },
                        {
                            extend: "csv",
                            className: "btn-sm"
                        },
                        {
                            extend: "excel",
                            className: "btn-sm"
                        },
                        {
                            extend: "pdfHtml5",
                            className: "btn-sm"
                        },
                        {
                            extend: "print",
                            className: "btn-sm"
                        },
                    ],
                    responsive: true
                });
            }
        };

        TableManageButtons = function () {
            "use strict";
            return {
                init: function () {
                    handleDataTableButtons();
                }
            };
        }();

        $('#datatable').dataTable();

        $('#datatable-keytable').DataTable({
            keys: true
        });

        $('#datatable-responsive').DataTable();

        $('#datatable-scroller').DataTable({
            ajax: "js/datatables/json/scroller-demo.json",
            deferRender: true,
            scrollY: 380,
            scrollCollapse: true,
            scroller: true
        });

        $('#datatable-fixed-header').DataTable({
            fixedHeader: true
        });

        var $datatable = $('#datatable-checkbox');

        $datatable.dataTable({
            'order': [[1, 'asc']],
            'columnDefs': [
                {orderable: false, targets: [0]}
            ]
        });
        $datatable.on('draw.dt', function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_flat-green'
            });
        });

        TableManageButtons.init();


        var providerObj;

//供应商管理页面上点击删除按钮弹出删除框(providerlist.jsp)
        function deleteProvider(obj) {
            $.ajax({
                type: "GET",
                url: "/sys/provider/providerdelete",
                data: {method: "delprovider", proid: obj.attr("proid")},
                dataType: "json",
                success: function (data) {
                    if (data.delResult == "true") {//删除成功：移除删除行
                        cancleBtn();
                        obj.parents("tr").remove();
                    } else if (data.delResult == "false") {//删除失败
                        //alert("对不起，删除供应商【"+obj.attr("proname")+"】失败");
                        changeDLGContent("对不起，删除供应商【" + obj.attr("proname") + "】失败");
                    } else if (data.delResult == "notexist") {
                        //alert("对不起，供应商【"+obj.attr("proname")+"】不存在");
                        changeDLGContent("对不起，供应商【" + obj.attr("proname") + "】不存在");
                    } else {
                        //alert("对不起，该供应商【"+obj.attr("proname")+"】下有【"+data.delResult+"】条订单，不能删除");
                        changeDLGContent("对不起，该供应商【" + obj.attr("proname") + "】下有【" + data.delResult + "】条订单，不能删除");
                    }
                },
                error: function (data) {
                    //alert("对不起，删除失败");
                    changeDLGContent("对不起，删除失败");
                }
            });
        }

        function openYesOrNoDLG() {
            $('.zhezhao').css('display', 'block');
            $('#removeProv').fadeIn();
        }

        function cancleBtn() {
            $('.zhezhao').css('display', 'none');
            $('#removeProv').fadeOut();
        }

        function changeDLGContent(contentStr) {
            var p = $(".removeMain").find("p");
            p.html(contentStr);
        }

        $(".viewProvider").on("click", function () {
            //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
            var obj = $(this);
            window.location.href = path + "/provider/providerview?method=view&proid=" + obj.attr("proid");
        });

        $(".modifyProvider").on("click", function () {
            var obj = $(this);
            window.location.href = path + "/jsp/provider.do?method=modify&proid=" + obj.attr("proid");
        });

        $('#no').click(function () {
            cancleBtn();
        });

        $('#yes').click(function () {
            deleteProvider(providerObj);
        });

        $(".deleteprovider").on("click", function () {
            providerObj = $(this);
            changeDLGContent("你确定要删除供应商【" + providerObj.attr("proname") + "】吗？");
            openYesOrNoDLG();
        });


    });
</script>
<!-- /Datatables -->
</body>
</html>
