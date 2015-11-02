<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
    <form id="number_form" method="post" action="editNumber">
    	<input type="hidden" name="order_id" value="${order_id }" />
    	<p style="margin-left: 10px;">
    	 <label>客户姓名：</label>
    	 <input class="easyui-textbox"  type="text" name="user_name" value="${number.user_name }"></input>
    	 <label style="margin-left: 50px;">总额：</label>
    	 <label id="total">0</label>
    	</p>
   </form>
   <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">添加</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog()">取消</a>
   </div>