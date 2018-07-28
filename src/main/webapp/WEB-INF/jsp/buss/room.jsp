<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="../system/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>宿舍</title>
</head>
<body>
	<table id="dg" class="" title="列表" style="width: 700px; height: 300px">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'roomId',width:10">系统ID</th>
				<th data-options="field:'factoryName',width:10">厂区名</th>
				<th data-options="field:'building',width:10">楼栋号</th>
				<th data-options="field:'unit',width:10">单元号</th>
				<th data-options="field:'floor',width:10">楼层</th>
				<th data-options="field:'roomNo',width:10">房间号</th>
				<th data-options="field:'roomStatus',width:10" formatter="manageStatus">房间状态</th>
				<th data-options="field:'roomAdmin',width:10">宿管</th>
				<th data-options="field:'type',width:10">类型</th>
				<th data-options="field:'size',width:10">房间规格</th>
				<th data-options="field:'employees',width:10" formatter="manageEmployee">已住人数</th>
				<th data-options="field:'remark',width:90">房间日志</th>
			</tr>
		</thead>
	</table>
	
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton add" iconCls="icon-add" onclick="create()" plain="true">新增</a> 
		<a href="#" class="easyui-linkbutton edit" iconCls="icon-edit" onclick="edit()" plain="true">修改</a> 
		<a href="#" class="easyui-linkbutton remove" iconCls="icon-remove"
		 onclick="del()" plain="true">删除</a>
		 <a href="#" class="easyui-linkbutton put" iconCls="icon-undo" onclick="put()"
			plain="true">导入</a> <a href="#" class="easyui-linkbutton export"
			iconCls="icon-redo" onclick="print()" plain="true">导出</a>	
		<div>
			房间号: <input class="easyui-textbox" id="paramRoomNo">
			宿管: <input class="easyui-textbox" id="paramRoomAdmin">
			总床位数: <input class="easyui-textbox" id="paramSize">
			分厂名: <input class="easyui-textbox" id="paramFactoryName">
			<a href="#" class="easyui-linkbutton" onclick="doSearch()" iconCls="icon-search">查找</a>
			<a href="#" class="easyui-linkbutton" onclick="doReset()" iconCls="icon-redo">重置</a>
		</div>
	</div>
	<div id="exceldlg" class="easyui-dialog" title="导入excel文件" 
	data-options="modal:true" style="width: 300px; height: 200px;"
		closed="true">
		<form id="uploadExcel"  method="post" enctype="multipart/form-data">  
   			选择文件：　<input id = "excel" name = "excel" class="easyui-filebox" style="width:200px" data-options="prompt:'请选择文件...'">  
		</form> 
		<div style="text-align: center; padding: 5px 0;">
			<a id = "booten" href="javascript:void(0)" class="easyui-linkbutton"
				onclick="uploadExcel()" style="width: 80px" id="tt">导入</a>
		</div>
		</div>
	<div id="dlg" class="easyui-dialog" title="数据参数" data-options="modal:true" style="width: 400px; height: 550px;" closed="true" buttons="#dlg-buttons">
		<form method="post" id="fm">
			<table cellpadding="9">
				<tr>
					<td><input type="hidden" name="roomId" /></td>
				</tr>
				<tr>
	    			<td>厂区:</td>
	    			<td><input class="easyui-textbox" type="text" name="factoryName" maxlength="30" required="true" missingMessage="必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>楼栋编号:</td>
	    			<td><input class="easyui-textbox" type="text" name="building" maxlength="30" required="true" missingMessage="必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>单元号:</td>
	    			<td><input class="easyui-textbox" type="text" name="unit" maxlength="30" required="true" missingMessage="必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>楼层:</td>
	    			<td><input class="easyui-textbox" type="text" name="floor" maxlength="30" required="true" missingMessage="必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>房间号:</td>
	    			<td><input class="easyui-textbox" type="text" name="roomNo" maxlength="30" required="true" missingMessage="必须填写"></input></td>
	    		</tr>
	    		<tr>
					<td>状态:</td>
					<td><select class="easyui-combobox" id="roomStatus2"
						name="roomStatus" style="width: 80px;">
							<option value="1">可用</option>
							<option value="2">封禁</option>
							<option value="3">其他</option>
					</select></td>
				</tr>
	    		<tr>
	    			<td>宿管:</td>
	    			<td><input class="easyui-textbox" required="true"  maxlength="10" type="text" name="roomAdmin" missingMessage="宿管必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>总床位数:</td>
	    			<td><input class="easyui-textbox" id="size" type="text" name="size" maxlength="2" validtype="number" required="true" missingMessage="床位数必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>类型:</td>
	    			<td><input class="easyui-textbox" type="text" name="type" maxlength="30" required="true" missingMessage="必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>备注:</td>
	    			<td><textarea id="remark"  name="remark" style="width:180px; height:100px" maxlength="200" ></textarea></td>
	    		</tr>
	    	</table>
		</form>
	</div>
	
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="save()" iconCls="icon-ok">保存</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlg').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>
	<script type="text/javascript">
	$(function() {  
		loadDataGrid();
    });  	
	function loadDataGrid(queryConditon){
		 $('#dg').datagrid({  
	            title : '宿舍信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 15,
	            pageList : [ 5, 10, 15, 20 ], 
	            nowrap : false,
	            striped : true,
	            collapsible : true,  
	            toolbar:"#toolbar", 
	            url:'getAllRoom',
	            loadMsg : '数据装载中......',  
	            singleSelect:true,
	            fitColumns:true,  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,
	            remoteSort : false,  
	            pagination : true,  
	            rownumbers : true,
	            queryParams:queryConditon
	        });   
	}
	function  loadDataGridByQ(queryConditon){
		 $('#dg').datagrid({  
	            title : '宿舍信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 15,
	            pageList : [ 5, 10, 15, 20 ],
	            nowrap : false,//false列的内容超出长度自动换行
	            striped : true,
	            collapsible : true,  
	            toolbar:"#toolbar", 
	            url:'getRooms',
	            method:"get",
	            loadMsg : '数据装载中......',  
	            singleSelect:true,
	            fitColumns:true,  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,
	            remoteSort : false,  
	            pagination : true,  
	            rownumbers : true,
	            queryParams:queryConditon
	        });   
	}
		var url;
		function create(){
			$('#dlg').dialog('open').dialog('setTitle','新建');
			$('#fm').form('clear');
			url = 'addRoom';
		}
		function edit(){
			var row = $('#dg').datagrid('getSelections');
			if (row.length == 1){
				$('#dlg').dialog('open').dialog('setTitle','编辑');
				$('#fm').form('clear');
				$('#fm').form('load',row[0]);
				$('#roomStatus2')
				.combobox('setValue', row[0].roomStatus);
				url = 'updateRoom';
			}else{
				$.messager.show({
					title: '提示信息',
					msg: '请选择一行数据再进行编辑！'
				});
			}
		}
		
		function save(){
			$('#fm').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					var result = eval('('+result+')');
					if (result.success){
						$('#dlg').dialog('close');		
						$('#dg').datagrid('reload');	
						$.messager.show({
							title: '提示信息',
							msg: result.msg
						});
					} else {
						$.messager.show({
							title: '提示信息',
							msg: result.msg
						});
					}
				}
			});
		}
		
		function doSearch(){
			var queryCondition = {'roomNo':$('#paramRoomNo').val(),'roomAdmin': $('#paramRoomAdmin').val(),'size': $('#paramSize').val(),'factoryName':$('#paramFactoryName').val()};
			loadDataGridByQ(queryCondition);
		}
		function doReset(){
			$('#paramRoomNo').textbox('setValue','');
			$('#paramRoomAdmin').textbox('setValue','');
			$('#paramSize').textbox('setValue','');
			$('#paramFactoryName').textbox('setValue','');
			loadDataGrid(null);
		}
		function del(){
			var rows = $('#dg').datagrid('getSelections');
			var ids = [];
			if (rows.length > 0){
				$.messager.confirm('提示信息','确定删除?',function(r){
					if (r){
						for ( var i = 0; i < rows.length; i++) {
							ids.push(rows[i].roomId);
						}
						$.ajax({
							url : 'deleteRoom',
							type : 'get',
							data : {
								ids : ids.join(',')
							},
							cache : false,
							success : function(result) {
								if (result.success){
									$('#dg').datagrid('reload');
									$.messager.show({	
										title: '提示信息',
										msg: result.msg
									});
								} else {
									$.messager.show({	
										title: '提示信息',
										msg: result.msg
									});
								}
							}
						});
					}
				});
			}else{
				$.messager.show({	
					title: '提示信息',
					msg: '请至少选择一条数据后再进行删除'
				});
			}
		}
		function manageEmployee(value, row, index) {
			if (value != null) {
				var arr =  value.length;				
				return arr+"人";
			} else {
				return "0";
			}
		}
		function manageStatus(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
			if (value != null) {
				if(value=="1"){
					var arr = '<span style="color:green;">可用</span>';
				}else if(value=="2"){
					var arr = '<span style="color:gray;">封禁</span>';
				}else if(value=="3"){
					var arr = '<span style="color:red;">其他(异常)</span>';
				}
				
				return arr;
			} else {
				return "无";
			}
		}
	</script>
	<script type="text/javascript">
	function put(){
		$('#exceldlg').dialog('open').dialog('setTitle', '新建');
	}
	function uploadExcel() {
		$("#uploadExcel").form('submit');
	}
	/* 配置导入框 */
	$("#uploadExcel").form({
		type : 'post',
		url : '${pageContext.request.contextPath}/putExcel2',
		dataType : "json",
		onSubmit: function() {
			var fileName= $('#excel').filebox('getValue'); 
			  //对文件格式进行校验  
             var d1=/\.[^\.]+$/.exec(fileName);
			if (fileName == "") {  
			      $.messager.alert('Excel用户导入', '请选择将要上传的文件!'); 
			      return false;  
			 }else if(d1!=".xls"&&d1!=".xlsx"){
				 $.messager.alert('提示','请选择xls或是xlsx格式文件！','info');  
				 return false; 
			 }
			 $("#booten").linkbutton('disable');
            return true;  
        }, 
		success : function(result) {
			var result = eval('(' + result + ')');
			if (result.success) {
				$.messager.alert('提示!', '导入成功','info',
						function() {
							$("#booten").linkbutton('enable');
							$('#importExcel').dialog('close');
							$('#user').datagrid('reload');
					    });
			} else {
				$.messager.confirm('提示',"导入失败!");
				$("#booten").linkbutton('enable');
			}
		}
	});
	function print() {
		window.location.href="${pageContext.request.contextPath}/printExcel2";
	}
	</script>
</body>
</html>