<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- easyui的样式 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/themes/icon.css">
<!-- easyui的JS-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui-lang-zh_CN.js"></script>
<!-- bootstrap的JS-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<!-- 自定义的JS-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/antteam.common.js"></script>
<title>用户列表</title>
<script type="text/javascript">
	jQuery(function(){
		loadGrid('baseGird','user/queryList');
		jQuery('#baseGird').datagrid('getPager').pagination({
			onSelectPage:function(pageNumber, pageSize){
				loadData('baseGird','user/queryList');
			}
		});
	});
	
</script>
</head>
<body>
	<div id="tb" style="padding:8px;height:auto">
	  <button type="button" class="btn btn-success" onclick="add('dlg','user/addPage','添加用户',500,300)">添加</button>
	  <button type="button" class="btn btn-warning" onclick="edit('baseGird','dlg','user/editPage','编辑用户',500,300)">编辑</button>
	  <button type="button" class="btn btn-danger">锁定</button>
	</div>   
	<table id="baseGird" cellspacing="0" cellpadding="0"> 
    <thead> 
        <tr> 
            <th field="id" width="150" hidden="true">id</th> 
        	<th field="userName" width="150">姓名</th> 
        	<th field="accountName" width="150">账号</th>
        	<th field="lockedLabel" width="150">账号状态</th>
        	<th field="createTime" width="150">创建时间</th>
        </tr> 
    </thead> 
    
</table>


	<div id="dlg"></div>
</body>
</html>