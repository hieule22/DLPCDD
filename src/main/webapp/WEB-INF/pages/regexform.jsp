<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.2
Version: 3.6.2
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>Cardholder Data Discovery</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="<c:url value="/resources/admin/pages/css/googleapis.css"/>" rel="stylesheet" type="text/css"/>
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
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
<link href="<c:url value="/resources/global/css/components.css"/>"
	id="style_components" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/global/css/plugins.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/admin/layout/css/layout.css"/>"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/admin/layout/css/themes/darkblue.css"/>"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="<c:url value="/resources/admin/layout/css/custom.css"/>"
	rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="<c:url value="/resources/admin/layout/img/favicon.ico"/>">
</head>

<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<!-- Start Set up Spring Url -->
<spring:url value="/" var="mainUrl" />
<spring:url value="/profile" var="profileUrl" />
<spring:url value="/regex" var="regexUrl" />
<spring:url value="/scan" var="scanUrl" />
<spring:url value="/falsepositive" var="falsepositiveUrl" />
<spring:url value="/log" var="logUrl" />
<spring:url value="/addregex" var="addRegexUrl" />
<spring:url value="/aboutusUrl" var="aboutusUrl" />
<!-- End Set up Spring Url -->
<body
	class="page-header-fixed page-quick-sidebar-over-content page-style-square">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar">
		<!-- BEGIN HEADER INNER -->
			<%@include file="includes/header.jsp" %>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">
				<%@include file="includes/menubar.jsp" %>
			</div>
		</div>
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<div class="modal fade" id="portlet-config" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true"></button>
								<h4 class="modal-title">Modal title</h4>
							</div>
							<div class="modal-body">Widget settings form goes here</div>
							<div class="modal-footer">
								<button type="button" class="btn blue">Save changes</button>
								<button type="button" class="btn default" data-dismiss="modal">Close</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN STYLE CUSTOMIZER -->
				<!-- END STYLE CUSTOMIZER -->
				<!-- END PAGE HEADER-->
				<!-- BEGIN DASHBOARD STATS -->

				<!-- END DASHBOARD STATS -->
				<div class="row">
					<div class="col-md-12">
						<div class="tab-pane active" id="tab_0">
							<div class="portlet box green">
								<div class="portlet-title">
									<div class="caption">Regular Expression</div>
								</div>
								<div class="portlet-body form">
									<!-- BEGIN FORM-->
									
									<form:form id="validatedForm" class="form-horizontal" method="post" role="form"
										action="${addRegexUrl}" commandName="regexForm"
										novalidate="novalidate">										
										<div class="form-body">
											<c:if test="${not empty error}">
												<div class="alert alert-danger display-hide" style="display: block;">
													<button class="close" data-close="alert"></button>
													${error}
												</div>
											</c:if>
											<form:hidden path="id" />
											<div class="form-group">
												<label class="col-md-3 control-label">Name <span
													class="required" aria-required="true"> * </span></label>
												<div class="col-md-4">
													<spring:bind path="name">
														<c:choose>
															<c:when test="${empty regexForm.id}">
																<form:input path="name" data-required="1"
																	class="form-control" placeholder="Enter text" />
																<form:errors path="name" class="help-block-error" />
															</c:when>
															<c:otherwise>
																<form:input path="name" class="form-control"
																	disabled="true" />
   																<form:hidden path="name" />
															</c:otherwise>
														</c:choose>
													</spring:bind>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label">Regular
													Expression <span class="required" aria-required="true">
														* </span>
												</label>
												<div class="col-md-8">
													<spring:bind path="regex">
														<form:input path="regex" data-required="1" class="form-control"
															placeholder="Regular Expression"/>
														<form:errors path="regex" class="help-block-error" />
													</spring:bind>
												</div>
											</div>
										</div>
										
										<div class="form-actions">
											<div class="row">
												<div class="col-md-offset-3 col-md-9">
													<button type="submit" class="btn blue">Save</button>
													<a type="button" class="btn default" href="${regexUrl}">Cancel</a>
												</div>
											</div>
										</div>
									</form:form>
									<!-- END FORM-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- END DASHBOARD STATS -->
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->
		<a href="javascript:;" class="page-quick-sidebar-toggler"><i
			class="icon-close"></i></a>
		<div class="page-quick-sidebar-wrapper">
			<div class="page-quick-sidebar">
				<div class="nav-justified">
					<ul class="nav nav-tabs nav-justified">
						<li class="active"><a href="#quick_sidebar_tab_1"
							data-toggle="tab"> Users <span class="badge badge-danger">2</span>
						</a></li>
						<li><a href="#quick_sidebar_tab_2" data-toggle="tab">
								Alerts <span class="badge badge-success">7</span>
						</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> More<i class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu pull-right" role="menu">
								<li><a href="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-bell"></i> Alerts
								</a></li>
								<li><a href="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-info"></i> Notifications
								</a></li>
								<li><a href="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-speech"></i> Activities
								</a></li>
								<li class="divider"></li>
								<li><a href="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-settings"></i> Settings
								</a></li>
							</ul></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active page-quick-sidebar-chat"
							id="quick_sidebar_tab_1">
							<div class="page-quick-sidebar-chat-users" data-rail-color="#ddd"
								data-wrapper-class="page-quick-sidebar-list">
								<h3 class="list-heading">Staff</h3>
								<ul class="media-list list-items">
									<li class="media">
										<div class="media-status">
											<span class="badge badge-success">8</span>
										</div> <img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar3.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Bob Nilson</h4>
											<div class="media-heading-sub">Project Manager</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar1.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Nick Larson</h4>
											<div class="media-heading-sub">Art Director</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-danger">3</span>
										</div> <img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar4.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Deon Hubert</h4>
											<div class="media-heading-sub">CTO</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar2.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Ella Wong</h4>
											<div class="media-heading-sub">CEO</div>
										</div></li>
								</ul>
								<h3 class="list-heading">Customers</h3>
								<ul class="media-list list-items">
									<li class="media">
										<div class="media-status">
											<span class="badge badge-warning">2</span>
										</div> <img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar6.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Lara Kunis</h4>
											<div class="media-heading-sub">CEO, Loop Inc</div>
											<div class="media-heading-small">Last seen 03:10 AM</div>
										</div>
									</li>
									<li class="media">
										<div class="media-status">
											<span class="label label-sm label-success">new</span>
										</div> <img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar7.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Ernie Kyllonen</h4>
											<div class="media-heading-sub">
												Project Manager,<br> SmartBizz PTL
											</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar8.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Lisa Stone</h4>
											<div class="media-heading-sub">CTO, Keort Inc</div>
											<div class="media-heading-small">Last seen 13:10 PM</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-success">7</span>
										</div> <img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar9.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Deon Portalatin</h4>
											<div class="media-heading-sub">CFO, H&D LTD</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar10.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Irina Savikova</h4>
											<div class="media-heading-sub">CEO, Tizda Motors Inc</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-danger">4</span>
										</div> <img class="media-object"
										src="<c:url value="/resources/admin/layout/img/avatar11.jpg"/>"
										alt="...">
										<div class="media-body">
											<h4 class="media-heading">Maria Gomez</h4>
											<div class="media-heading-sub">Manager, Infomatic Inc</div>
											<div class="media-heading-small">Last seen 03:10 AM</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="page-quick-sidebar-item">
								<div class="page-quick-sidebar-chat-user">
									<div class="page-quick-sidebar-nav">
										<a href="javascript:;" class="page-quick-sidebar-back-to-list"><i
											class="icon-arrow-left"></i>Back</a>
									</div>
									<div class="page-quick-sidebar-chat-user-messages">
										<div class="post out">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar3.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Bob
													Nilson</a> <span class="datetime">20:15</span> <span
													class="body"> When could you send me the report ? </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar2.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Ella
													Wong</a> <span class="datetime">20:15</span> <span class="body">
													Its almost done. I will be sending it shortly </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar3.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Bob
													Nilson</a> <span class="datetime">20:15</span> <span
													class="body"> Alright. Thanks! :) </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar2.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Ella
													Wong</a> <span class="datetime">20:16</span> <span class="body">
													You are most welcome. Sorry for the delay. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar3.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Bob
													Nilson</a> <span class="datetime">20:17</span> <span
													class="body"> No probs. Just take your time :) </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar2.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Ella
													Wong</a> <span class="datetime">20:40</span> <span class="body">
													Alright. I just emailed it to you. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar3.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Bob
													Nilson</a> <span class="datetime">20:17</span> <span
													class="body"> Great! Thanks. Will check it right
													away. </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar2.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Ella
													Wong</a> <span class="datetime">20:40</span> <span class="body">
													Please let me know if you have any comment. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="<c:url value="/resources/admin/layout/img/avatar3.jpg"/>" />
											<div class="message">
												<span class="arrow"></span> <a href="#" class="name">Bob
													Nilson</a> <span class="datetime">20:17</span> <span
													class="body"> Sure. I will check and buzz you if
													anything needs to be corrected. </span>
											</div>
										</div>
									</div>
									<div class="page-quick-sidebar-chat-user-form">
										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="Type a message here...">
											<div class="input-group-btn">
												<button type="button" class="btn blue">
													<i class="icon-paper-clip"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane page-quick-sidebar-alerts"
							id="quick_sidebar_tab_2">
							<div class="page-quick-sidebar-alerts-list">
								<h3 class="list-heading">General</h3>
								<ul class="feeds list-items">
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-check"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														You have 4 pending tasks. <span
															class="label label-sm label-warning "> Take action
															<i class="fa fa-share"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">Just now</div>
										</div>
									</li>
									<li><a href="#">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-success">
															<i class="fa fa-bar-chart-o"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">Finance Report for year 2013 has
															been released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-danger">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														New order received with <span
															class="label label-sm label-success"> Reference
															Number: DR23923 </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">30 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-bell-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														Web server hardware needs to be upgraded. <span
															class="label label-sm label-warning"> Overdue </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">2 hours</div>
										</div>
									</li>
									<li><a href="#">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-default">
															<i class="fa fa-briefcase"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">IPO Report for year 2013 has been
															released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
								</ul>
								<h3 class="list-heading">System</h3>
								<ul class="feeds list-items">
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-check"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														You have 4 pending tasks. <span
															class="label label-sm label-warning "> Take action
															<i class="fa fa-share"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">Just now</div>
										</div>
									</li>
									<li><a href="#">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-danger">
															<i class="fa fa-bar-chart-o"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">Finance Report for year 2013 has
															been released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-default">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														New order received with <span
															class="label label-sm label-success"> Reference
															Number: DR23923 </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">30 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-warning">
														<i class="fa fa-bell-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														Web server hardware needs to be upgraded. <span
															class="label label-sm label-default "> Overdue </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">2 hours</div>
										</div>
									</li>
									<li><a href="#">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-info">
															<i class="fa fa-briefcase"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">IPO Report for year 2013 has been
															released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="tab-pane page-quick-sidebar-settings"
							id="quick_sidebar_tab_3">
							<div class="page-quick-sidebar-settings-list">
								<h3 class="list-heading">General Settings</h3>
								<ul class="list-items borderless">
									<li>Enable Notifications <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="success" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
									<li>Allow Tracking <input type="checkbox"
										class="make-switch" data-size="small" data-on-color="info"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Log Errors <input type="checkbox" class="make-switch"
										checked data-size="small" data-on-color="danger"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Auto Sumbit Issues <input type="checkbox"
										class="make-switch" data-size="small" data-on-color="warning"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Enable SMS Alerts <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="success" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
								</ul>
								<h3 class="list-heading">System Settings</h3>
								<ul class="list-items borderless">
									<li>Security Level <select
										class="form-control input-inline input-sm input-small">
											<option value="1">Normal</option>
											<option value="2" selected>Medium</option>
											<option value="e">High</option>
									</select>
									</li>
									<li>Failed Email Attempts <input
										class="form-control input-inline input-sm input-small"
										value="5" />
									</li>
									<li>Secondary SMTP Port <input
										class="form-control input-inline input-sm input-small"
										value="3560" />
									</li>
									<li>Notify On System Error <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="danger" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
									<li>Notify On SMTP Error <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="warning" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
								</ul>
								<div class="inner-content">
									<button class="btn btn-success">
										<i class="icon-settings"></i> Save Changes
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div style="width:100%;">
		<%@include file="includes/footer.jsp" %>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="<c:url value="/resources/global/plugins/jquery.min.js"/>"
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
	<script
		src="<c:url value="/resources/global/plugins/jquery-validation/js/jquery.validate.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resources/global/scripts/metronic.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resources/admin/layout/scripts/layout.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resources/admin/layout/scripts/quick-sidebar.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resources/admin/layout/scripts/demo.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resources/admin/pages/scripts/form-validation.js"/>"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			Metronic.init(); // init metronic core componets
			Layout.init(); // init layout
			QuickSidebar.init(); // init quick sidebar
			Demo.init(); // init demo features 
			FormValidation.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>