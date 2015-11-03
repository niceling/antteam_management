jQuery(document).ready(function() {
	$('#baseGird').datagrid({
		url : 'user/queryList',
		pageSize : 20,
		pageList : [10,20,30 ],
		pagination : true,
		fitColumns : true,
		singleSelect : true,
		toolbar : "#tb",
		striped:true
	});
});

var getSelectRow = function(GirdId) {
	var row = $('#'+GirdId).datagrid('getSelected');
	if (row != null) {
		return row.id;
	} else
		return 0;
}


var edit=function(GirdId,dlgId){
	if(getSelectRow(GirdId)==0){
		jQuery.messager.show({
				title:'操作提醒',
				msg:'请先选择一行进行编辑',
				timeout:5000,
				showType:'fade'
			});
	}else{
	    $('#'+dlgId).dialog({
               title: '编辑数据',
               iconCls:'icon-edit' ,
               resizable: true,
               width: 1000,
               height: 540,
               modal:true,
               cache:false,
               href: 'editPage/'+getSelectRow(),
           });	
	    $('#'+dlgId).show();
	}
}


var add=function(dlgId){
    $('#'+dlgId).dialog({
           title: '添加数据',
           iconCls:'icon-add' ,
           resizable: true,
           width: 1000,
           height: 540,
           modal:true,
           cache:false,
           href: 'addPage',
       });	
    $('#'+dlgId).show();
}