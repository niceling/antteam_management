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
<title>Insert title here</title>
<script type="text/javascript">
	jQuery(document).ready(function(){
			$('#numberGird').datagrid({
					url:'queryList',
				    pageSize:10,
				    pageList:[10],
				    pagination:true,
				    fitColumns:true,
				    singleSelect:true,
				    toolbar:"#tb",
				    title:"数据显示"
			});
	});
	
	function getSelectRow(){
		var row = $('#numberGird').datagrid('getSelected');
		if (row!=null){
			return row.order_id;
		}else return 0;
	}
	
	function edit(){
		if(getSelectRow()==0){
			jQuery.messager.show({
					title:'操作提醒',
					msg:'请先选择一行进行编辑',
					timeout:5000,
					showType:'fade'
				});
		}else{
		    $('#dlg').dialog({
	               title: '编辑数据',
	               iconCls:'icon-edit' ,
	               resizable: true,
	               width: 1000,
	               height: 540,
	               modal:true,
	               cache:false,
	               href: 'editNumberPage/'+getSelectRow(),
	           });	
		    $('#dlg').show();
		}
	}
	
	
	function add(){
		    $('#dlg').dialog({
	               title: '添加数据',
	               iconCls:'icon-add' ,
	               resizable: true,
	               width: 1000,
	               height: 540,
	               modal:true,
	               cache:false,
	               href: 'addNumberPage',
	           });	
		    $('#dlg').show();
	}
	
	function closeDialog(){
		$('#dlg').dialog('close');
	}
	function datalistreload(){
		$("#numberGird").datagrid('reload');  
	}
</script>
</head>
<body>
	<div id="tb" style="padding:5px;height:auto">    
	    <div style="margin-bottom:5px">    
	        <a href="javascript:void(0)" onclick="add()" class="easyui-linkbutton" iconCls="icon-add" plain="true" title="添加"></a>    
	        <a href="javascript:void(0)" onclick="edit()" class="easyui-linkbutton" iconCls="icon-edit" plain="true" title="编辑"></a>    
	        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" title="删除"></a>    
	    </div>    
	    <div>    
	        Language:     
	        <input class="easyui-combobox" style="width:100px" url="data/combobox_data.json" valueField="id" textField="text">    
	        <a href="#" class="easyui-linkbutton" iconCls="icon-search">Search</a>    
	    </div>    
    </div>    
	<table id="numberGird" cellspacing="0" cellpadding="0"> 
    <thead> 
        <tr> 
        	<th field="order_id" width="150" hidden="true">order_id</th> 
            <th field="user_name" width="100">客户姓名</th> 
            <th field="_1" width="40">1</th> 
            <th field="_2" width="40">2</th> 
            <th field="_3" width="40">3</th> 
            <th field="_4" width="40">4</th> 
            <th field="_5" width="40">5</th> 
            <th field="_6" width="40">6</th> 
            <th field="_7" width="40">7</th> 
            <th field="_8" width="40">8</th> 
            <th field="_9" width="40">9</th> 
            <th field="_10" width="40">10</th> 
            <th field="_11" width="40">11</th> 
            <th field="_12" width="40">12</th> 
            <th field="_13" width="40">13</th> 
            <th field="_14" width="40">14</th> 
            <th field="_15" width="40">15</th> 
            <th field="_16" width="40">16</th> 
            <th field="_17" width="40">17</th> 
            <th field="_18" width="40">18</th> 
            <th field="_19" width="40">19</th> 
            <th field="_20" width="40">20</th> 
            <th field="_21" width="40">21</th> 
            <th field="_22" width="40">22</th> 
            <th field="_23" width="40">23</th> 
            <th field="_24" width="40">24</th> 
            <th field="_25" width="40">25</th> 
            <th field="_26" width="40">26</th> 
            <th field="_27" width="40">27</th> 
            <th field="_28" width="40">28</th> 
            <th field="_29" width="40">29</th> 
            <th field="_30" width="40">30</th> 
            <th field="_31" width="40">31</th> 
            <th field="_32" width="40">32</th> 
            <th field="_33" width="40">33</th> 
            <th field="_34" width="40">34</th> 
            <th field="_35" width="40">35</th> 
            <th field="_36" width="40">36</th> 
            <th field="_37" width="40">37</th> 
            <th field="_38" width="40">38</th> 
            <th field="_39" width="40">39</th> 
            <th field="_40" width="40">40</th> 
            <th field="_41" width="40">41</th> 
            <th field="_42" width="40">42</th> 
            <th field="_43" width="40">43</th> 
            <th field="_44" width="40">44</th> 
            <th field="_45" width="40">45</th> 
            <th field="_46" width="40">46</th> 
            <th field="_47" width="40">47</th> 
            <th field="_48" width="40">48</th> 
            <th field="_49" width="40">49</th> 
            <th field="create_time" width="100">创建时间</th> 
        </tr> 
    </thead> 
</table>


	<div id="dlg" style="display: none;">
	</div>
</body>
</html>