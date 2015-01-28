<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String path =request.getContextPath(); %>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>My Blank Page - Ace Admin</title>

		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<s:url value='/assets/css/bootstrap.min.css'/>" />
		<link rel="stylesheet" href="<s:url value='/assets/css/font-awesome.min.css'/>" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="<s:url value='/assets/css/ace-fonts.css'/>" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<s:url value='/assets/css/ace.min.css'/>" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="<s:url value='/assets/css/ace-part2.min.css'/>" />
		<![endif]-->
		<link rel="stylesheet" href="<s:url value='/assets/css/ace-skins.min.css'/>" />
		<link rel="stylesheet" href="<s:url value='/assets/css/ace-rtl.min.css'/>" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<s:url value='/assets/css/ace-ie.min.css'/>" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="<s:url value='/assets/js/ace-extra.min.js'/>"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="<s:url value='/assets/js/html5shiv.min.js'/>"></script>
		<script src="<s:url value='/assets/js/respond.min.js'/>"></script>
		<![endif]-->
		
	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="#" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Ace Admin
						</small>
					</a>

					<!-- /section:basics/navbar.layout.brand -->

					<!-- #section:basics/navbar.toggle -->

					<!-- /section:basics/navbar.toggle -->
				</div>

				<!-- #section:basics/navbar.dropdown -->
				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>

				<ul class="nav nav-list">
					<li>
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text"> My test applicaiton </span>
							<b class="arrow icon-angle-down"></b>
						</a>
						<ul class="submenu" style="display:block">
							<li>
								<a href="javascript:void(0)" name="<s:url action='Database' />" class="dropdown-toggle">
									<i class="menu-icon fa fa-desktop"></i>
									Ace Admin
								</a>
							</li>
							<li>
								<a href="javascript:void(0)" name="<s:url action='HelloWorld' />" class="dropdown-toggle">
									<i class="menu-icon fa fa-desktop"></i>
									Struts 2 hello world
								</a>
							</li>
						</ul>
					</li>
				</ul><!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

				<!-- /section:basics/sidebar.layout.minimize -->
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">Home</a>
						</li>

						<li class="active">Blank Page</li>
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<!-- /.nav-search -->

					<!-- /section:basics/content.searchbox -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<!-- /.ace-settings-container -->

					<!-- /section:settings.box -->
					<div class="page-content-area" id="page-content-area">
						
					</div><!-- /.page-content-area -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=path%>/assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<%=path%>/assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=path%>/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<s:url value='/assets/js/bootstrap.min.js'/>"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="<s:url value='/assets/js/ace-elements.min.js'/>"></script>
		<script src="<s:url value='/assets/js/ace.min.js'/>"></script>
		<script src="<s:url value='/assets/js/bootstrap-tag.min.js'/>"></script>
		<script src="<s:url value='/assets/js/jquery-ui.custom.min.js'/>"></script>
		<script src="<s:url value='/assets/js/jquery.ui.touch-punch.min.js'/>"></script>
		<script src="<s:url value='/assets/js/jquery.validate.min.js'/>"></script>
		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			$(function ($) {
				var temp=$('#sidebar').find('.nav-list').find("a");
				console.log(temp);
				$(temp).each(function (i, e) {
					$(e).on('click', function () {
						var ename=$(this).attr('name');
						console.log(ename);
						$("#page-content-area").load(ename,null, function () {console.log("div load partial page")});
					});
				});
			});
		</script>

		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
	</body>
</html>