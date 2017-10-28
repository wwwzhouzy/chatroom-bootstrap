<%--
  author Tency
  
  Date 2016/11
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery-1.11.3.min.js" type="text/javascript"></script>
 <link rel="shortcut icon" href="images/icons/favicon.ico">
    <link rel="apple-touch-icon" href="images/icons/favicon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icons/favicon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icons/favicon-114x114.png">
    <!--Loading bootstrap css-->
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
    <link type="text/css" rel="stylesheet" href="styles/jquery-ui-1.10.4.custom.min.css">
    <link type="text/css" rel="stylesheet" href="styles/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="styles/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="styles/animate.css">
    <link type="text/css" rel="stylesheet" href="styles/all.css">
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <link type="text/css" rel="stylesheet" href="styles/style-responsive.css">
    <link type="text/css" rel="stylesheet" href="styles/zabuto_calendar.min.css">
    <link type="text/css" rel="stylesheet" href="styles/pace.css">
    <link type="text/css" rel="stylesheet" href="styles/jquery.news-ticker.css">
<script src="<%=request.getContextPath() %>/script/jquery-1.10.2.min.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery-migrate-1.2.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery-ui.js"></script>
    <script src="<%=request.getContextPath() %>/script/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/script/bootstrap-hover-dropdown.js"></script>
    <script src="<%=request.getContextPath() %>/script/html5shiv.js"></script>
    <script src="<%=request.getContextPath() %>/script/respond.min.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.metisMenu.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.slimscroll.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.cookie.js"></script>
    <script src="<%=request.getContextPath() %>/script/icheck.min.js"></script>
    <script src="<%=request.getContextPath() %>/script/custom.min.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.news-ticker.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.menu.js"></script>
    <script src="<%=request.getContextPath() %>/script/pace.min.js"></script>
    <script src="<%=request.getContextPath() %>/script/holder.js"></script>
    <script src="<%=request.getContextPath() %>/script/responsive-tabs.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.flot.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.flot.categories.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.flot.pie.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.flot.tooltip.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.flot.resize.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.flot.fillbetween.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.flot.stack.js"></script>
    <script src="<%=request.getContextPath() %>/script/jquery.flot.spline.js"></script>
    <script src="<%=request.getContextPath() %>/script/zabuto_calendar.min.js"></script>
    <script src="<%=request.getContextPath() %>/script/index.js"></script>
    <!--LOADING SCRIPTS FOR CHARTS-->
    <script src="<%=request.getContextPath() %>/script/highcharts.js"></script>
    <script src="<%=request.getContextPath() %>/script/data.js"></script>
    <script src="<%=request.getContextPath() %>/script/drilldown.js"></script>
    <script src="<%=request.getContextPath() %>/script/exporting.js"></script>
    <script src="<%=request.getContextPath() %>/script/highcharts-more.js"></script>
    <script src="<%=request.getContextPath() %>/script/charts-highchart-pie.js"></script>
    <script src="<%=request.getContextPath() %>/script/charts-highchart-more.js"></script>
    <!--CORE JAVASCRIPT-->
    <script src="<%=request.getContextPath() %>/script/main.js"></script>
 <script>
 $(function(){
     $(".panel-heading").click(function(e){
         /*切换折叠指示图标*/
         $(this).find("span").toggleClass("glyphicon-chevron-down");
         $(this).find("span").toggleClass("glyphicon-chevron-up");
     });
 });
 </script>
</head>
<body>
	<div>
        <!--BEGIN THEME SETTING-->
        <div id="theme-setting">
            <a href="#" data-toggle="dropdown" data-step="1" data-intro="&lt;b&gt;Many styles&lt;/b&gt; and &lt;b&gt;colors&lt;/b&gt; be created for you. Let choose one and enjoy it!"
                data-position="left" class="btn-theme-setting"><i class="fa fa-cog"></i></a>
            <div class="content-theme-setting">
                <select id="list-style" class="form-control">
                    <option value="style1">Flat Squared style</option>
                    <option value="style2">Flat Rounded style</option>
                    <option value="style3" selected="selected">Flat Border style</option>
                </select>
            </div>
        </div>
        <!--END THEME SETTING-->
        <!--BEGIN BACK TO TOP-->
        <a id="totop" href="#"><i class="fa fa-angle-up"></i></a>
        <!--END BACK TO TOP-->
        <!--BEGIN TOPBAR-->
        <div id="header-topbar-option-demo" class="page-header-topbar">
            <nav id="topbar" role="navigation" style="margin-bottom: 0;" data-step="3" class="navbar navbar-default navbar-static-top">
            <div class="navbar-header">
                <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <a id="logo" href="index.html" class="navbar-brand"><span class="fa fa-rocket"></span><span class="logo-text">KAdmin</span><span style="display: none" class="logo-text-icon">µ</span></a></div>
            <div class="topbar-main"><a id="menu-toggle" href="#" class="hidden-xs"><i class="fa fa-bars"></i></a>
                
                <form id="topbar-search" action="" method="" class="hidden-sm hidden-xs">
                    <div class="input-icon right text-white"><a href="#"><i class="fa fa-search"></i></a><input type="text" placeholder="Search here..." class="form-control text-white"/></div>
                </form>
                <div class="news-update-box hidden-xs"><span class="text-uppercase mrm pull-left text-white">News:</span>
                    <ul id="news-update" class="ticker list-unstyled">
                        <li>Welcome to KAdmin - Responsive Multi-Style Admin Template</li>
                        <li>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</li>
                    </ul>
                </div>
                <ul class="nav navbar navbar-top-links navbar-right mbn">
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-bell fa-fw"></i><span class="badge badge-green">3</span></a>
                        
                    </li>
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-envelope fa-fw"></i><span class="badge badge-orange">7</span></a>
                        
                    </li>
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-tasks fa-fw"></i><span class="badge badge-yellow">8</span></a>
                        
                    </li>
                    <li class="dropdown topbar-user"><a data-hover="dropdown" href="#" class="dropdown-toggle"><img src="images/avatar/48.jpg" alt="" class="img-responsive img-circle"/>&nbsp;<span class="hidden-xs">Robert John</span>&nbsp;<span class="caret"></span></a>
                       <ul class="dropdown-menu dropdown-user pull-right">
                            <li><a href="#"><i class="fa fa-user"></i>My Profile</a></li>
                            <li><a href="#"><i class="fa fa-calendar"></i>My Calendar</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i>My Inbox<span class="badge badge-danger">3</span></a></li>
                            <li><a href="#"><i class="fa fa-tasks"></i>My Tasks<span class="badge badge-success">7</span></a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-lock"></i>Lock Screen</a></li>
                            <li><a href="Login.html"><i class="fa fa-key"></i>Log Out</a></li>
                        </ul>
                    </li>
                    <li id="topbar-chat" class="hidden-xs"><a href="javascript:void(0)" data-step="4" data-intro="&lt;b&gt;Form chat&lt;/b&gt; keep you connecting with other coworker" data-position="left" class="btn-chat"><i class="fa fa-comments"></i><span class="badge badge-info">3</span></a></li>
                </ul>
            </div>
        </nav>
            <!--BEGIN MODAL CONFIG PORTLET-->
            <div id="modal-config" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">
                                &times;</button>
                            <h4 class="modal-title">
                                Modal title</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend et nisl eget
                                porta. Curabitur elementum sem molestie nisl varius, eget tempus odio molestie.
                                Nunc vehicula sem arcu, eu pulvinar neque cursus ac. Aliquam ultricies lobortis
                                magna et aliquam. Vestibulum egestas eu urna sed ultricies. Nullam pulvinar dolor
                                vitae quam dictum condimentum. Integer a sodales elit, eu pulvinar leo. Nunc nec
                                aliquam nisi, a mollis neque. Ut vel felis quis tellus hendrerit placerat. Vivamus
                                vel nisl non magna feugiat dignissim sed ut nibh. Nulla elementum, est a pretium
                                hendrerit, arcu risus luctus augue, mattis aliquet orci ligula eget massa. Sed ut
                                ultricies felis.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" data-dismiss="modal" class="btn btn-default">
                                Close</button>
                            <button type="button" class="btn btn-primary">
                                Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--END MODAL CONFIG PORTLET-->
        </div>
        <!--END TOPBAR-->
        <div id="wrapper">
            <!--BEGIN SIDEBAR MENU-->
            <nav id="sidebar" role="navigation" data-step="2" data-intro="Template has &lt;b&gt;many navigation styles&lt;/b&gt;"
                data-position="right" class="navbar-default navbar-static-side">
            <div class="sidebar-collapse menu-scroll">
                <ul id="side-menu" class="nav">
                    
                     <div class="clearfix"></div>
                    <li><a href="dashboard.html"><i class="fa fa-tachometer fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i><span class="menu-title">Dashboard</span></a></li>
                    <li class="active"><a href="Layout.html"><i class="fa fa-desktop fa-fw">
                        <div class="icon-bg bg-pink"></div>
                    </i><span class="menu-title">Layouts</span></a>
                       
                    </li>
                    <li><a href="UIElements.html"><i class="fa fa-send-o fa-fw">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title">UI Elements</span></a>
                       
                    </li>
                    <li><a href="Forms.html"><i class="fa fa-edit fa-fw">
                        <div class="icon-bg bg-violet"></div>
                    </i><span class="menu-title">Forms</span></a>
                      
                    </li>
                    <li><a href="Tables.html"><i class="fa fa-th-list fa-fw">
                        <div class="icon-bg bg-blue"></div>
                    </i><span class="menu-title">Tables</span></a>
                          
                    </li>
                    <li><a href="DataGrid.html"><i class="fa fa-database fa-fw">
                        <div class="icon-bg bg-red"></div>
                    </i><span class="menu-title">Data Grids</span></a>
                      
                    </li>
                    <li><a href="Pages.html"><i class="fa fa-file-o fa-fw">
                        <div class="icon-bg bg-yellow"></div>
                    </i><span class="menu-title">Pages</span></a>
                       
                    </li>
                    <li><a href="Extras.html"><i class="fa fa-gift fa-fw">
                        <div class="icon-bg bg-grey"></div>
                    </i><span class="menu-title">Extras</span></a>
                      
                    </li>
                    <li><a href="Dropdown.html"><i class="fa fa-sitemap fa-fw">
                        <div class="icon-bg bg-dark"></div>
                    </i><span class="menu-title">Multi-Level Dropdown</span></a>
                      
                    </li>
                    <li><a href="Email.html"><i class="fa fa-envelope-o">
                        <div class="icon-bg bg-primary"></div>
                    </i><span class="menu-title">Email</span></a>
                      
                    </li>
                    <li><a href="Charts.html"><i class="fa fa-bar-chart-o fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i><span class="menu-title">Charts</span></a>
                       
                    </li>
                    <li><a href="Animation.html"><i class="fa fa-slack fa-fw">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title">Animations</span></a></li>
                </ul>
            </div>
        </nav>
          
          
            <div id="page-wrapper">
                <!--BEGIN TITLE & BREADCRUMB PAGE-->
                <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        <div class="page-title">
                            Layout</div>
                    </div>
                    <ol class="breadcrumb page-breadcrumb pull-right">
                        <li><i class="fa fa-home"></i>&nbsp;<a href="dashboard.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                        <li class="hidden"><a href="#">Layout</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                        <li class="active">Layout</li>
                    </ol>
                    <div class="clearfix">
                    </div>
                </div>
                <!--END TITLE & BREADCRUMB PAGE-->
                <!--BEGIN CONTENT-->
                <div class="page-content">
                    <div id="tab-general">
                        <div class="row mbl">
                            <div class="col-lg-12">
                                
                                            <div class="col-md-12">
                                                <div id="area-chart-spline" style="width: 100%; height: 300px; display: none;">
                                                </div>
                                            </div>
                                
                            </div>

                            <div class="col-lg-12">
                                <!--BEGIN TITLE & BREADCRUMB PAGE-->
                                <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                <div class="page-header pull-left">
                    <div class="page-title">Title &amp; Breadcrumb</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li><a href="#">Layouts</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li class="active">Title &amp; Breadcrumb</li>
                </ol>
                <div class="clearfix"></div>
            </div>
                                <!--END TITLE & BREADCRUMB PAGE-->
                                <!--BEGIN CONTENT-->
                                <div class="page-content">
                                    <div id="title-breadcrumb-page" class="row">
                                        <div class="col-lg-12">
                                            <h4 class="mbxl">
                                                Let hover on the option you like and click "Demo" button to see it works!</h4>
                                            <div class="page-title-breadcrumb option-demo">
                                                <div class="page-header pull-left">
                                                    <div class="page-title">
                                                        Title & Breadcrumb Left</div>
                                                </div>
                                                <ol class="breadcrumb page-breadcrumb pull-right">
                                                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li><a href="#">Layouts</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li class="active">Title &amp; Breadcrumb</li>
                                                </ol>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                            <div class="mbxxl">
                                            </div>
                                            <div class="page-title-breadcrumb option-demo">
                                                <div class="page-header pull-left">
                                                    <div class="page-title pull-left mrm">
                                                        Title & Breadcrumb with Label</div>
                                                    <span class="label label-primary pull-left mtm">New</span></div>
                                                <ol class="breadcrumb page-breadcrumb pull-right">
                                                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li><a href="#">Layouts</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li class="active">Title &amp; Breadcrumb</li>
                                                </ol>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                            <div class="mbxxl">
                                            </div>
                                            <div class="page-title-breadcrumb option-demo">
                                                <div class="page-header pull-left">
                                                    <div class="page-title mrm">
                                                        Title & Subtitle & Breadcrumb Inline Left</div>
                                                    <div class="page-subtitle">
                                                        Lorem ipsum dolor sit amet</div>
                                                </div>
                                                <ol class="breadcrumb page-breadcrumb pull-right">
                                                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li><a href="#">Layouts</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li class="active">Title &amp; Breadcrumb</li>
                                                </ol>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                            <div class="mbxxl">
                                            </div>
                                            <div class="page-title-breadcrumb option-demo">
                                                <div class="page-header pull-right">
                                                    <div class="page-title">
                                                        Title & Breadcrumb Inline Right</div>
                                                </div>
                                                <ol class="breadcrumb page-breadcrumb pull-left">
                                                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li><a href="#">Layouts</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li class="active">Title &amp; Breadcrumb</li>
                                                </ol>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                            <div class="mbxxl">
                                            </div>
                                            <div class="page-title-breadcrumb option-demo">
                                                <div class="page-header pull-right">
                                                    <div class="page-title mrm">
                                                        Title & Subtitle & Breadcrumb Inline Right</div>
                                                    <div class="page-subtitle">
                                                        Lorem ipsum dolor sit amet</div>
                                                </div>
                                                <ol class="breadcrumb page-breadcrumb pull-left">
                                                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li><a href="#">Layouts</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li class="active">Title &amp; Breadcrumb</li>
                                                </ol>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                            <div class="mbxxl">
                                            </div>
                                            <div class="page-title-breadcrumb option-demo">
                                                <div class="page-header pull-right">
                                                    <div class="page-toolbar">
                                                        <button type="button" data-hover="tooltip" title="Download" class="btn btn-blue">
                                                            <i class="fa fa-download"></i>
                                                        </button>
                                                        &nbsp;
                                                        <button type="button" data-hover="tooltip" title="Send Message" class="btn btn-yellow">
                                                            <i class="fa fa-envelope-o"></i>
                                                        </button>
                                                        &nbsp;
                                                        <div class="btn-group">
                                                            <button type="button" data-toggle="dropdown" class="btn btn-orange dropdown-toggle">
                                                                Setting &nbsp;<span class="caret"></span></button>
                                                            <ul class="dropdown-menu pull-right">
                                                                <li><a href="#">Dropdown link</a></li>
                                                                <li><a href="#">Dropdown link</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <ol class="breadcrumb page-breadcrumb pull-left">
                                                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li><a href="#">Layouts</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li class="active">Title &amp; Breadcrumb</li>
                                                </ol>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                            <div class="mbxxl">
                                            </div>
                                            <div class="page-title-breadcrumb option-demo">
                                                <div class="page-header">
                                                    <div class="page-title mrm">
                                                        Title & Subtitle & Breadcrumb Inline Left</div>
                                                    <div class="page-subtitle">
                                                        Lorem ipsum dolor sit amet</div>
                                                </div>
                                                <hr />
                                                <ol class="breadcrumb page-breadcrumb">
                                                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li><a href="#">Layouts</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                                                    <li class="active">Title &amp; Breadcrumb</li>
                                                </ol>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--END CONTENT-->
                <!--BEGIN FOOTER-->
                <div id="footer">
                    <div class="copyright">
                        <a href="#">2014 © KAdmin Responsive Multi-Purpose Template</a></div>
                </div>
                <!--END FOOTER-->
            </div>
            <!--END PAGE WRAPPER-->
        </div>
    </div>	
</body>
</html>