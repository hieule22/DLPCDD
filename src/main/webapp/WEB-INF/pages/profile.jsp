<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<title>Profiles</title>
</head>

<spring:url value="/" var="mainUrl" />
<spring:url value="/profile" var="profileUrl" />
<spring:url value="/regex" var="regexUrl" />
<spring:url value="/profile/newprofile" var="newprofileUrl" />
<spring:url value="/scan" var="scanUrl" />
<spring:url value="/falsepositive" var="falsepositiveUrl" />
<spring:url value="/log" var="logUrl" />
<spring:url value="/aboutusUrl" var="aboutusUrl" />


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
			<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="index_cdd.html">Home</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="javascript:;">Profiles</a>
						
					</li>
					
				</ul>
			
		</div>
		
		<h3 class="page-title">
			Manage existing scan profiles
		</h3>
		
		<div class="portlet box green">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-edit"></i>Profiles
							</div>
							<div class="tools">
	
								<a href="javascript:;" class="reload">
								</a>
								<a href="javascript:;" class="remove">
								</a>
							</div>
						</div>
						<div class="portlet-body">
							<div class="table-toolbar">
								<div class="row">
									<div class="col-md-6">
										<div class="btn-group">
											<a href="${newprofileUrl}" class="btn green">
											Add New <i class="fa fa-plus"></i>
											</a>
										</div>
										<div class="btn-group">
											<a href = "#" class="btn red">
											Delete Selected <i class="fa fa-times"></i>
											</a>
										</div>
									</div>
									
								</div>
							</div>
							<table class="table table-striped table-hover table-bordered" id="sample_editable_1" style="text-align:center;">
							<thead>
							<tr >
								<th style="width: 10%;text-align:center;">
									 Select
								</th>
								<th style="text-align:center;">
									 Scan Profile Name
								</th>
								<th style="width: 20%;text-align:center;">
									 Action
								</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>
									 <span> <input type="checkbox" name="select" value="" /></span>
								</td>
								<td>
									 Alex Nilson
								</td>
								<td>
									 <a href="#" class="btn purple"><i class="fa fa-edit"></i> Edit </a>
									 <a href="#" class="btn red"><i class="fa fa-times"></i> Delete </a>
								</td>
								
							</tr>
							<tr>
								<td>
									 <span> <input type="checkbox" name="select" value="" /></span>
								</td>
								<td>
									 Alex Nilson
								</td>
								<td>
									 <a href="#" class="btn purple"><i class="fa fa-edit"></i> Edit </a>
									 <a href="#" class="btn red"><i class="fa fa-times"></i> Delete </a>
								</td>
								
							</tr>
							<tr>
								<td>
									 <span> <input type="checkbox" name="select" value="" /></span>
								</td>
								<td>
									 Alex Nilson
								</td>
								<td>
									 <a href="#" class="btn purple"><i class="fa fa-edit"></i> Edit </a>
									 <a href="#" class="btn red"><i class="fa fa-times"></i> Delete </a>
								</td>
								
							</tr>
							<tr>
								<td>
									 <span> <input type="checkbox" name="select" value="" /></span>
								</td>
								<td>
									 Alex Nilson
								</td>
								<td>
									 <a href="#" class="btn purple"><i class="fa fa-edit"></i> Edit </a>
									 <a href="#" class="btn red"><i class="fa fa-times"></i> Delete </a>
								</td>
								
							</tr>
							</tbody>
							</table>
						</div>
					</div>
		
		</div>
	
	</div>
<!--------------------- END CONTENT------------------------------------------>	
		
		</div>
	</div>
	
	</div>
	<!-- END CONTENT -->
	<!-- BEGIN QUICK SIDEBAR -->
	

<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div style="width:100%;">
	<%@include file="includes/footer.jsp" %>
</div>
<!-- END FOOTER -->


<script
				src="<c:url value="/resources/global/plugins/jquery.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/jquery-migrate.min.js"/>"
				type="text/javascript"></script>
			<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
			<script
				src="<c:url value="/resources/global/plugins/jquery-ui/jquery-ui.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/bootstrap/js/bootstrap.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/jquery.blockui.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/jquery.cokie.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/uniform/jquery.uniform.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"/>"
				type="text/javascript"></script>
			<!-- END CORE PLUGINS -->
			<!-- BEGIN PAGE LEVEL SCRIPTS -->
			<script src="<c:url value="/resources/global/scripts/metronic.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/admin/layout/scripts/layout.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/admin/layout/scripts/quick-sidebar.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/admin/layout/scripts/demo.js"/>"
				type="text/javascript"></script>
			<script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script>
			<script src="<c:url value="/resources/global/plugins/gmaps/gmaps.min.js"/>" type="text/javascript"></script>
			<script src="<c:url value="/resources/admin/pages/scripts/contact-us.js"/>"></script>
			<!-- END PAGE LEVEL SCRIPTS -->
			<script>
				jQuery(document).ready(function() {
					Metronic.init(); // init metronic core componets
					Layout.init(); // init layout
					QuickSidebar.init(); // init quick sidebar
					Demo.init(); // init demo features 
					ContactUs.init();
				});
			</script>
</body>
</html>