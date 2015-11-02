<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/antteam.common.js"></script>
<title>用户列表</title>
</head>
<body onload="">
	<div id="tb" style="padding:5px;height:auto">    
	    <div style="margin-bottom:5px">    
	        <a href="javascript:void(0)" onclick="add('dlg')" class="easyui-linkbutton" iconCls="icon-add" plain="true" title="添加"></a>    
	        <a href="javascript:void(0)" onclick="edit('baseGird','dlg')" class="easyui-linkbutton" iconCls="icon-edit" plain="true" title="编辑"></a>    
	        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" title="删除"></a>    
	    </div>    
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


	<div id="dlg" style="display: none;">
	</div>
</body>
</html>