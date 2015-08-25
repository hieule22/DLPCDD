<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cardholder Data Discovery</title>
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


<title>Master Page</title>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content page-style-square">
<!-- BEGIN HEADER -->
<div class="page-header navbar">
	<!-- BEGIN HEADER INNER -->
	<%@include file="includes/header.jsp" %>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<div class="page-sidebar-wrapper">
		<div class="page-sidebar navbar-collapse collapse">
			<%@include file="includes/menubar.jsp" %>
		</div>
	</div>
	<!-- END SIDEBAR -->
	
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
		
<!--------------------- BEGIN PAGE HEADER---------------------------------------------->
			<h3 class="page-title">
			Main
			</h3>
			<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="index_cdd.html">Home</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="#">Main</a>
					</li>
				</ul>
				
			</div>
<!--------------------- END PAGE HEADER---------------------------------------------->			
			
<!--------------------- INSERT CONTENT HERE------------------------------------------>			
		</div>
	</div>
	
	</div>
	<!-- END CONTENT -->

<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->
<div style="width:100%;">
	<%@include file="includes/footer.jsp" %>
</div>
<!-- END FOOTER -->
</body>
</html>