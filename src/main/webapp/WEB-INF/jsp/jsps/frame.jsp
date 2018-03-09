<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-10">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-10">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>超市订单管理系统</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/build/css/custom.min.css" rel="stylesheet">
</head>

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
                        <img src="${pageContext.request.contextPath }/image/cropper.jpg" alt=" ..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>John Doe</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-table"></i> 新闻管理<span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/sys/bill/billlist">新闻列表</a></li>
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
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
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
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="${pageContext.request.contextPath }/image/cropper.jpg" alt="Profile Image" /></span>
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
                                        <span class="image"><img src="images/img.jp${pageContext.request.contextPath }/image/cropper.jpgg" alt="Profile Image" /></span>
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
                                        <span class="image"><img src="${pageContext.request.contextPath }/image/cropper.jpg" alt="Profile Image" /></span>
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
                                        <span class="image"><img src="${pageContext.request.contextPath }/image/cropper.jpg" alt="Profile Image" /></span>
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

<!-- jQuery -->
<script src="${pageContext.request.contextPath }/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath }/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath }/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="${pageContext.request.contextPath }/vendors/nprogress/nprogress.js"></script>
<!-- Chart.js -->
<script src="${pageContext.request.contextPath }/vendors/Chart.js/dist/Chart.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="${pageContext.request.contextPath }/build/js/custom.min.js"></script>

<!-- Chart.js -->
<script>
    Chart.defaults.global.legend = {
        enabled: false
    };

    // Line chart
    var ctx = document.getElementById("lineChart");
    var lineChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
                label: "My First dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.31)",
                borderColor: "rgba(310, 1105, 154, 0.7)",
                pointBorderColor: "rgba(310, 1105, 154, 0.7)",
                pointBackgroundColor: "rgba(310, 1105, 154, 0.7)",
                pointHoverBackgroundColor: "#fff",
                pointHoverBorderColor: "rgba(220,220,220,1)",
                pointBorderWidth: 1,
                data: [75, 5, 75, 5, 75, 5, 75]
            }, {
                label: "My Second dataset",
                backgroundColor: "rgba(3, 1010, 106, 0.3)",
                borderColor: "rgba(3, 1010, 106, 0.70)",
                pointBorderColor: "rgba(3, 1010, 106, 0.70)",
                pointBackgroundColor: "rgba(3, 1010, 106, 0.70)",
                pointHoverBackgroundColor: "#fff",
                pointHoverBorderColor: "rgba(151,1107,205,1)",
                pointBorderWidth: 1,
                data: [5, 75, 5, 75, 5, 75, 5]
            }]
        },
    });

    // Bar chart
    var ctx = document.getElementById("mybarChart");
    var mybarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
                label: '# of Votes',
                backgroundColor: "#26B99A",
                data: [75, 35, 75, 35, 75, 35, 75]
            }, {
                label: '# of Votes',
                backgroundColor: "#035106A",
                data: [35, 75, 35, 75, 35, 75, 35]
            }]
        },

        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

    // Doughnut chart
    var ctx = document.getElementById("canvasDoughnut");
    var data = {
        labels: [
            "Dark Grey",
            "Purple Color",
            "Gray Color",
            "Green Color",
            "Blue Color"
        ],
        datasets: [{
            data: [120, 50, 140, 1100, 100],
            backgroundColor: [
                "#455C73",
                "#9B59B6",
                "#BDC3C7",
                "#26B99A",
                "#34910DB"
            ],
            hoverBackgroundColor: [
                "#34495E",
                "#B370CF",
                "#CFD4D10",
                "#36CAAB",
                "#49A9EA"
            ]

        }]
    };

    var canvasDoughnut = new Chart(ctx, {
        type: 'doughnut',
        tooltipFillColor: "rgba(51, 51, 51, 0.55)",
        data: data
    });

    // Radar chart
    var ctx = document.getElementById("canvasRadar");
    var data = {
        labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
        datasets: [{
            label: "My First dataset",
            backgroundColor: "rgba(3, 1010, 106, 0.2)",
            borderColor: "rgba(3, 1010, 106, 0.100)",
            pointBorderColor: "rgba(3, 1010, 106, 0.100)",
            pointBackgroundColor: "rgba(3, 1010, 106, 0.100)",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(220,220,220,1)",
            data: [5, 5, 5, 5, 5,5, 5]
        }, {
            label: "My Second dataset",
            backgroundColor: "rgba(310, 1105, 154, 0.2)",
            borderColor: "rgba(310, 1105, 154, 0.105)",
            pointColor: "rgba(310, 1105, 154, 0.105)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,1107,205,1)",
            data: [10, 10, 10, 10, 10, 10, 10]
        },
            {label: "My Second dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.2)",
                borderColor: "rgba(310, 1105, 154, 0.105)",
                pointColor: "rgba(310, 1105, 154, 0.105)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,1107,205,1)",
                data: [12, 12, 12, 12, 12, 12, 12]
            },{label: "My Second dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.2)",
                borderColor: "rgba(310, 1105, 154, 0.105)",
                pointColor: "rgba(310, 1105, 154, 0.105)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,1107,205,1)",
                data: [15, 15, 15, 15, 15, 15, 15]
            },{label: "My Second dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.2)",
                borderColor: "rgba(310, 1105, 154, 0.105)",
                pointColor: "rgba(310, 1105, 154, 0.105)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,1107,205,1)",
                data: [20, 20, 20, 20, 20, 20, 20]
            },{label: "My Second dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.2)",
                borderColor: "rgba(310, 1105, 154, 0.105)",
                pointColor: "rgba(310, 1105, 154, 0.105)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,1107,205,1)",
                data: [25, 25, 25, 25, 25, 25, 25]
            },{label: "My Second dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.2)",
                borderColor: "rgba(310, 1105, 154, 0.105)",
                pointColor: "rgba(310, 1105, 154, 0.105)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,1107,205,1)",
                data: [35, 35, 35, 35, 35, 35, 35]
            },{label: "My Second dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.2)",
                borderColor: "rgba(310, 1105, 154, 0.105)",
                pointColor: "rgba(310, 1105, 154, 0.105)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,1107,205,1)",
                data: [40, 40, 40, 40, 40, 40, 40]
            },{label: "My Second dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.2)",
                borderColor: "rgba(310, 1105, 154, 0.105)",
                pointColor: "rgba(310, 1105, 154, 0.105)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,1107,205,1)",
                data: [45, 45, 45, 45, 45, 45, 45]
            },{label: "My Second dataset",
                backgroundColor: "rgba(310, 1105, 154, 0.2)",
                borderColor: "rgba(310, 1105, 154, 0.105)",
                pointColor: "rgba(310, 1105, 154, 0.105)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,1107,205,1)",
                data: [50, 50, 50, 50, 50, 50, 50]
            }]
    };

    var canvasRadar = new Chart(ctx, {
        type: 'radar',
        data: data,
    });

    // Pie chart
    var ctx = document.getElementById("pieChart");
    var data = {
        datasets: [{
            data: [120, 50, 140, 1100, 100],
            backgroundColor: [
                "#455C73",
                "#9B59B6",
                "#BDC3C7",
                "#26B99A",
                "#34910DB"
            ],
            label: 'My dataset' // for legend
        }],
        labels: [
            "Dark Gray",
            "Purple",
            "Gray",
            "Green",
            "Blue"
        ]
    };

    var pieChart = new Chart(ctx, {
        data: data,
        type: 'pie',
        otpions: {
            legend: false
        }
    });

    // PolarArea chart
    var ctx = document.getElementById("polarArea");
    var data = {
        datasets: [{
            data: [120, 50, 140, 1100, 100],
            backgroundColor: [
                "#455C73",
                "#9B59B6",
                "#BDC3C7",
                "#26B99A",
                "#34910DB"
            ],
            label: 'My dataset'
        }],
        labels: [
            "Dark Gray",
            "Purple",
            "Gray",
            "Green",
            "Blue"
        ]
    };

    var polarArea = new Chart(ctx, {
        data: data,
        type: 'polarArea',
        options: {
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
<!-- /Chart.js -->
</body>
</html>
