<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/antteam.common.js"></script>
<title>用户列表</title>
</head>
<body>
	<div id="tb" style="padding:8px;height:auto">
	  <button type="button" class="btn btn-success" onclick="add('dlg')">添加</button>
	  <button type="button" class="btn btn-warning" onclick="edit('baseGird','dlg')">编辑</button>
	  <button type="button" class="btn btn-danger">锁定</button>
	</div>   
	<table id="baseGird" cellspacing="0" cellpadding="0"> 
    <thead> 
        <tr> 
        	<th field="userName" width="150">用户名</th> 
        	<th field="accountName" width="150">账号</th>
        	<th field="locked" width="150">账号状态</th>
        	<th field="createTime" width="150">创建时间</th>
        </tr> 
    </thead> 
</table>


	<div id="dlg"></div>
</body>
</html>