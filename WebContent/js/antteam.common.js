/**datagrid*/
var loadGrid=function (GirdId,url){
	jQuery('#'+GirdId).datagrid({
		url :url,
		pageSize : 10,
		pageList : [10,20,30],
		pagination : true,
		fitColumns : true,
		singleSelect : true,
		toolbar : "#tb",
		striped:true,
		rownumbers:true,
  });
}


var getSingleSelectRow = function(GirdId) {
	var row = $('#'+GirdId).datagrid('getSelected');
	if (row != null) {
		return row.id;
	} else
		return 0;
}


var refreshGrid=function(GirdId){
	$("#"+GirdId).datagrid('reload');  
}


var loadData=function (GirdId,url){
	jQuery.ajax({
		type:"post",
		url:url,
		data:{"page":2,"rows":10},
		success:function(data){
			jQuery('#'+GirdId).datagrid('options').pageNumber = pageNumber;
			jQuery('#'+GirdId).datagrid('options').pageSize = pageSize
			jQuery('#'+GirdId).datagrid('getPager').pagination('refresh', {
                pageNumber: pageNumber,
                pageSize: pageSize
            });
			jQuery('#'+GirdId).datagrid('loadData',data);  
		}
	});
}

/**dialog*/
var showDialog=function(dlgId,url,title,width,height){
	  $('#'+dlgId).dialog({
          title: title,
          resizable: true,
          width: width,
          height: height,
          modal:true,
          cache:false,
          href: url
      });
}

var closeDialog=function(dlgId){
	$('#'+dlgId).dialog('close');
}

/**弹框信息*/
var showMessager=function(msg){
	jQuery.messager.show({
		title:'操作提醒',
		msg:msg,
		timeout:3000,
		showType:'fade'
	});
}

/**增删改*/
var add=function(dlgId,url,title,width,height){
	 $('#'+dlgId).show();
	 showDialog(dlgId,url,title,width,height);
	 $('#'+dlgId).dialog('refresh', url);  
}

var edit=function(GirdId,dlgId,url,title,width,height){
	if(getSingleSelectRow(GirdId)==0){
		showMessager("请先选择一行进行编辑");
	}else{
		$('#'+dlgId).show();
		url=url+"/"+getSingleSelectRow(GirdId);
		showDialog(dlgId,url,title,width,height);
		$('#'+dlgId).dialog('refresh', url);  
	}
}

var submitForm=function(GirdId,dlgId,formId,url){
	var data=jQuery("#"+formId).serializeArray();
	jQuery.ajax({
		type:"post",
		url:url,
		data:data,
		success:function(data){
			closeDialog(dlgId);
			refreshGrid(GirdId);
			if(data){
				showMessager("保存成功！");
			}else{
				showMessager("保存失败！");
			}
		}
	});
}