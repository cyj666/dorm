<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="../system/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>员工</title>
</head>
<body class="easyui-layout">
		<table id="dg" class="" title="列表" style="width: 700px; height: 300px">
			<thead>
				<tr>
					<th data-options="field:'ck',checkbox:true"></th>
					<th data-options="field:'employeeId',width:30">系统ID</th>
					<th data-options="field:'employeeName',width:80">员工姓名</th>
					<th data-options="field:'employeeNo',width:80">工号</th>
					<th data-options="field:'phoneNo',width:80">手机号码</th>
					<th data-options="field:'employeeStatus',width:80" formatter="manageStatus">状态</th>
					<th data-options="field:'employeeSex',width:80">性别</th>
					<th data-options="field:'employeeJob',width:80">职位</th>
					<th data-options="field:'employeeWorkplace',width:80">工作地点</th>
					<th data-options="field:'employeeFamily',width:80">家属信息</th>
					<th data-options="field:'employeeRemark',width:80">备注</th>
					<th data-options="field:'room',width:80" formatter="managerRoom">住宿情况</th>
				</tr>
			</thead>
		</table>

	<div id="toolbar">
		<a href="#" class="easyui-linkbutton add" iconCls="icon-add"
			onclick="create()" plain="true">新增</a> <a href="#"
			class="easyui-linkbutton edit" iconCls="icon-edit" onclick="edit()"
			plain="true">修改</a> 
			<shiro:hasRole name="admin">
			<a href="#" class="easyui-linkbutton remove"
			iconCls="icon-remove" onclick="del()" plain="true">删除</a> 
			</shiro:hasRole>
			<a href="#" class="easyui-linkbutton put" iconCls="icon-undo" onclick="import()"
			plain="true">导入</a> <a href="#" class="easyui-linkbutton export"
			iconCls="icon-redo" onclick="export()" plain="true">导出</a>		
		<div>
			员工姓名: <input class="easyui-textbox" id="employeeName"> 员工工号:
			<input class="easyui-textbox" id="employeeNo"> 职位: <input
				class="easyui-textbox" id="employeeJob"> 工作地点:<input
				class="easyui-textbox" id="employeeWorkplace"> <a href="#"
				class="easyui-linkbutton" onclick="employeeSearch()"
				iconCls="icon-search">查找</a> <a href="#" class="easyui-linkbutton"
				onclick="employeeReset()" iconCls="icon-cancel">清空</a>
		</div>
	</div>


	<div id="dlg" class="easyui-dialog" title="数据参数"
		data-options="modal:true" style="width: 480px; height: 430px;"
		closed="true" buttons="#dlg-buttons">
		<form method="post" id="fm">
			<table cellpadding="8">
				<tr>
					<td><input type="hidden" id="employeeId" name="employeeId" /></td>
				</tr>
				<tr>
					<td>员工姓名:</td>
					<td><input class="easyui-textbox" id="employeeName2"
						type="text" name="employeeName" maxlength="10" required="true"
						missingMessage="姓名必须填写"></input></td>
				</tr>
				<tr>
					<td>工号</td>
					<td><input class="easyui-textbox" id="employeeNo2" type="text"
						name="employeeNo" validtype="employeeNo" required="true"
						missingMessage="工号必须填写"></input></td>
				</tr>
				<tr>
					<td>性别:</td>
					<td><select class="easyui-combobox" id="employeeSex2"
						name="employeeSex" style="width: 50px;">
							<option value="男 ">男</option>
							<option value="女">女</option>

					</select></td>
				</tr>
				<tr>
					<td>状态:</td>
					<td><select class="easyui-combobox" id="employeeStatus2"
						name="employeeStatus" style="width: 80px;">
							<option value="1">在职</option>
							<option value="2">离职</option>
							<option value="3">其他</option>
					</select></td>
				</tr>
				<tr>
					<td>手机号码</td>
					<td><input class="easyui-textbox" id="phoneNo2" type="text"
						name="phoneNo"
						></input></td>
				</tr>
				<tr>
					<td>职位:</td>
					<td><input class="easyui-textbox" id="employeeJob2"
						editable="true" maxlength="20" type="text" name="employeeJob"></input></td>
				</tr>
				<tr>
					<td>工作地点</td>
					<td><input class="easyui-textbox" id="employeeWorkplace2"
						validtype="employeeWorkplace" maxlength="15" type="text"
						name="employeeWorkplace"></input></td>
				</tr>
				<tr>
					<td>家属信息</td>
					<td><input class="easyui-textbox" id="employeeFamily2"
						type="text" name="employeeFamily" validtype="employeeFamily"></input></td>
				</tr>
				<tr>
					<td>备注:</td>
					<td><input class="easyui-textbox" id="employeeRemark2"
						editable="true" style="width: 180px; height: 100px"
						maxlength="200" type="text" name="employeeRemark"></input></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="save()"
			iconCls="icon-ok">保存</a> <a href="#" class="easyui-linkbutton cancel"
			onclick="javascript:$('#dlg').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>
	<script type="text/javascript">
		$(function() {
			/*$.ajaxSetup({
				error:function(xhr,status,error){
					top.location.href="404"+"error="+error;
				},
				dataFilter:function(data,type){			
						if (data!=null&&data.length>0) {
							//alert(data);
							if(data.indexOf("total")!=-1){
								return data;
							}else{
								$.messager.alert('错误！','您没有此权限!','error');
								setInterval(function(){
									window.location.href="401";
								}, 2000);							
								return "";
							}
							
						}
						
						//top.location.href="500";
				
			}
			})*/
			loadDataGrid();
		});
		function employeeSearch() {
			var queryCondition = {
				'employeeName' : $('#employeeName').val(),
				'employeeNo' : $('#employeeNo').val(),
				'employeeJob' : $('#employeeJob').val(),
				'employeeWorkplace' : $('#employeeWorkplace').val()
			};
			loadDataGridByQ(queryCondition);
		}
		function employeeReset() {
			$('#employeeName').textbox('setValue', '');
			$('#employeeNo').textbox('setValue', '');
			$('#employeeJob').textbox('setValue', '');
			$('#employeeWorkplace').textbox('setValue', '');
			loadDataGridByQ(null);
		}
		function loadDataGrid() {
			$('#dg').datagrid({
				title : '员工信息',
				iconCls : 'icon-ok',
				pageSize : 15,//默认选择的分页是每页5行数据  
				pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
				nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
				striped : true,//设置为true将交替显示行背景。  
				collapsible : true,//显示可折叠按钮  
				toolbar : "#toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
				url : 'getAllEmployee',//url调用Action方法  
				method : 'get',
				loadMsg : '数据装载中......',
				singleSelect : false,//为true时只能选择单行  
				fitColumns : true,//允许表格自动缩放，以适应父容器  
				checkOnSelect : true,
				selectOnCheck : true,
				fit : true,
				remoteSort : false,
				pagination : true,
				singleSelect:true,
				rownumbers : true
			//queryParams:queryConditon
			});
		}
		function loadDataGridByQ(queryConditon) {
			$('#dg').datagrid({
				title : '员工信息',
				iconCls : 'icon-ok',
				pageSize : 15,//默认选择的分页是每页5行数据  
				pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
				nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
				striped : true,//设置为true将交替显示行背景。  
				collapsible : true,//显示可折叠按钮  
				toolbar : "#toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
				url : 'getEmployee',//url调用Action方法  
				method : 'get',
				loadMsg : '数据装载中......',
				singleSelect : false,//为true时只能选择单行  
				fitColumns : true,//允许表格自动缩放，以适应父容器  
				checkOnSelect : true,
				selectOnCheck : true,
				fit : true,
				remoteSort : false,
				pagination : true,
				singleSelect:true,
				rownumbers : true,
				queryParams : queryConditon
			});

		}

		/*function doSearch(){
			var queryCondition = {'classname':$('#paramClass').val()};
			loadClassGrid(queryCondition);
		}
		function doReset(){
			$('#paramClass').textbox('setValue','');
			loadClassGrid(null);
		}*/
		/* function changeValue(value, row, index){
		     if (value=="男") {
		         return '♂';
		     }
		     else {
		         return '♀';
		     }
		 }*/

		var url;
		function create() {
			$('#dlg').dialog('open').dialog('setTitle', '新建');
			$('#fm').form('clear');
			url = 'addEmployee';
		}
		function edit() {
			var row = $('#dg').datagrid('getSelections');
			if (row.length == 1) {
				$('#dlg').dialog('open').dialog('setTitle', '编辑');
				$('#fm').form('clear');
				$('#employeeId').val(row[0].employeeId);
				$('#employeeName2').textbox('setValue', row[0].employeeName);
				$('#employeeSex2').combobox('setValue', row[0].employeeSex);
				$('#employeeNo2').textbox('setValue', row[0].employeeNo);
				$('#employeeJob2').textbox('setValue', row[0].employeeJob);
				$('#employeeWorkplace2').textbox('setValue',
						row[0].employeeWorkplace);
				$('#employeeFamily2')
						.textbox('setValue', row[0].employeeFamily);
				$('#employeeRemark2')
						.textbox('setValue', row[0].employeeRemark);
				$('#employeeStatus2')
				.combobox('setValue', row[0].employeeStatus);
				$('#phoneNo2')
				.textbox('setValue', row[0].phoneNo);
				url = 'updateEmployee';
			} else {
				$.messager.show({
					title : '提示信息',
					showType : 'show',
					msg : '请选择一行数据再进行编辑！',
				});
			}
		}
		
		function save() {
			$('#fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.success) {
						$('#dlg').dialog('close');
						$('#dg').datagrid('reload');
						$.messager.show({
							title : '提示信息',
							msg : result.msg
						});
					} else {
						$.messager.show({
							title : '提示信息',
							msg : result.msg
						});
					}
				}
			});
		}
		
		function del() {
			var rows = $('#dg').datagrid('getSelections');
			var ids = [];
			if (rows.length > 0) {
				$.messager.confirm('提示信息', '确定删除?', function(r) {
					if (r) {
						for (var i = 0; i < rows.length; i++) {
							ids.push(rows[i].employeeId);
						}
						$.ajax({
							url : 'deleteEmployee',
							type : 'post',
							data : {
								ids : ids.join(',')
							},
							cache : false,
							success : function(result) {
								if (result.success) {
									$('#dg').datagrid('reload');
									$.messager.show({
										title : '提示信息',
										msg : result.msg
									});
								} else {
									$.messager.show({
										title : '提示信息',
										msg : result.msg
									});
								}
							},
							error : function() {
								$.messager.alert('错误！', '您没有此权限!', 'error');
							}
						});
					}
				});
			} else {
				$.messager.show({
					title : '提示信息',
					msg : '请至少选择一条数据后再进行删除'
				});
			}
		}
		function managerRoom(value, row, index) {
			if (value != null) {
				var arr = "当前居住在：" + value.roomNo;
				return arr;
			} else {
				return "无";
			}
		}
		function manageStatus(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
			if (value != null) {
				if(value=="1"){
					var arr = '<span style="color:green;">在职</span>';
				}else if(value=="2"){
					var arr = '<span style="color:red;">离职</span>';
				}else if(value=="3"){
					var arr = '<span style="color:gray;">其他(异常)</span>';
				}
				
				return arr;
			} else {
				return "无";
			}
		}
	</script>

</body>
</html>