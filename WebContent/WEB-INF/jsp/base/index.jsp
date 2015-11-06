<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/matrix-media.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/matrix.js"></script>
<title>用户列表</title>
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->

<!--sidebar-menu-->
<div id="sidebar">
			<ul>
				<li class="submenu">
					<a href="javascript:void(0)"><i class="icon icon-th-list"></i> <span>系统管理</span></a>
					<ul>
						<li><a href="javascript:goPage('系统管理','用户列表','/user/queryListPage')">用户列表</a></li>
						<li><a href="javascript:goPage('系统管理','角色列表','/user/queryListPage')">Validation</a></li>
						<li><a href="javascript:goPage('系统管理','资源列表','/user/queryListPage')">Wizard</a></li>
					</ul>
				</li>
			</ul>
		
		</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
<div id="content-header">
  <div id="breadcrumb">
	  <a href="${pageContext.request.contextPath }/index" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>主页</a> 
	  <a href="javascript:void(0)" class="tip-bottom">主页</a> 
	  <a href="javascript:void(0)" class="current">主页</a> 
  </div>
</div>
<!--End-breadcrumbs-->

  <div id="content-main">
  </div>
</div>
<!--end-main-container-part-->

<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a> </div>
</div>
<!--end-Footer-part-->
</body>
</html>