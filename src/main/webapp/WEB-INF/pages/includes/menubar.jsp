<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<link
	href="<c:url value="/resources/global/plugins/font-awesome/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css" />
	
<link
	href="<c:url value="/resources/global/plugins/simple-line-icons/simple-line-icons.min.css"/>"
	rel="stylesheet" type="text/css" />
	
<link
	href="<c:url value="/resources/global/plugins/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" />
	
<link
	href="<c:url value="/resources/global/plugins/uniform/css/uniform.default.css"/>"
	rel="stylesheet" type="text/css" />
	
<link
	href="<c:url value="/resources/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"/>"
	rel="stylesheet" type="text/css" />
	

<link href="<c:url value="/resources/global/css/components.css"/>"
	rel="stylesheet" type="text/css" />

<link href="<c:url value="/resources/global/css/plugins.css"/>"
	rel="stylesheet" type="text/css" />
	
	
<link href="<c:url value="/resources/admin/layout/css/layout.css"/>"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/admin/layout/css/themes/darkblue.css"/>"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="<c:url value="/resources/admin/layout/css/custom.css"/>"
	rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="<c:url value="/resources/admin/layout/img/favicon.ico"/>">


<link href="../css/custom.css" rel="stylesheet" type="text/css"/>
<title>Menu</title>
</head>
<body>

			<!-- BEGIN HEADER -->
						<div class="page-sidebar navbar-collapse collapse">
				<!-- BEGIN SIDEBAR MENU -->
				<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
				<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
				<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
				<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
				<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
				<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
				<ul class="page-sidebar-menu" data-keep-expanded="false"
					data-auto-scroll="true" data-slide-speed="200">
					<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
					<li class="sidebar-toggler-wrapper">
						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
						<div class="sidebar-toggler"></div> <!-- END SIDEBAR TOGGLER BUTTON -->
					</li>
					<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
					<li class="sidebar-search-wrapper">
						<!-- BEGIN RESPONSIVE QUICK SEARCH FORM --> <!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
						<!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
						<form class="sidebar-search " action="extra_search.html"
							method="POST">
							<a href="javascript:;" class="remove"> <i class="icon-close"></i>
							</a>
							<!--
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
							<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
							</span>
						</div>
-->
						</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->
					</li>
					<li class="tooltips" data-container="body" data-placement="right"
						data-html="true" data-original-title="Main"><a href="${mainUrl}">
							<i class="icon-home"></i> <span class="title">
								Main </span>
					</a></li>
					<li class="tooltips" data-container="body" data-placement="right"
						data-html="true" data-original-title="Profile"><a href="${profileUrl}">
							<i class="fa fa-cogs"></i> <span class="title"> Profile </span>
					</a></li>
					<li class="tooltips" data-container="body" data-placement="right"
						data-html="true" data-original-title="Regular Expression"><a
						href="${regexUrl}"> <i class="icon-paper-plane"></i> <span class="title">
								Regular Expression </span>
					</a></li>
					<li class="tooltips" data-container="body" data-placement="right"
						data-html="true" data-original-title="Scans"><a href="${scanUrl}">
							<i class="icon-paper-plane"></i> <span class="title">
								Scans </span>
					</a></li>
					<li class="tooltips" data-container="body" data-placement="right"
						data-html="true" data-original-title="False Positives"><a
						href="${falsepositiveUrl}"> <i class="icon-paper-plane"></i> <span class="title">
								False Positives </span>
					</a></li>
					<li class="tooltips" data-container="body" data-placement="right"
						data-html="true" data-original-title="Logs"><a href="${logUrl}">
							<i class="icon-paper-plane"></i> <span class="title"> Logs
						</span>
					</a></li>
					<li class="tooltips" data-container="body" data-placement="right"
						data-html="true" data-original-title="About Us"><a href="${aboutusUrl}">
							<i class="icon-paper-plane"></i> <span class="title"> About Us
						</span>
					</a></li>
					<!-- END ANGULARJS LINK -->
					<!-- END SIDEBAR MENU -->
					</ul>
			</div>
				
				</body>
</html>