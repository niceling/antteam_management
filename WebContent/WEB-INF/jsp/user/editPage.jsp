<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <form class="bs-example bs-example-form" role="form" id="editForm">
      <input type="hidden" value="${obj.id }" name="id">
      <div class="input-group">
         <span class="input-group-addon">&emsp;用户名</span>
         <input type="text" class="form-control" id="userName" name="userName" value="${obj.userName }" placeholder="请输入用户名">
      </div>
 	  <div class="input-group">
         <span class="input-group-addon">&emsp;&emsp;账号</span>
         <input type="text" class="form-control" id="accountName" name="accountName" value="${obj.accountName }" placeholder="请输入账户"/>
      </div>
      
      <div class="input-group">
      <span class="input-group-addon">账户状态</span>
      <div class="form-control" id="status">
      	   <label class="checkbox-inline">
	        <input type="radio" name="locked" value="false" <c:if test="${!obj.locked || obj==null }">checked="checked"</c:if>>启用
		   </label>
		   <label class="checkbox-inline">
		      <input type="radio" name="locked" value="true" <c:if test="${obj.locked}">checked="checked"</c:if>> 禁用
		   </label>
      </div>
      </div>
      
        <div class="form-group">
	      <div class="pull-right-bottom">
	          <button type="button" class="btn btn-success" onclick="submitForm('baseGird','dlg','editForm','user/save')">添加</button>
		 	  <button type="button" class="btn btn-default" onclick="closeDialog('dlg')">取消</button>
	      </div>
	   </div>
   </form>
   
