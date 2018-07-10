<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>用户</title>
</head>
<body>
	<table id="dg" class="" title="列表" style="width: 700px; height: 300px">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'userId',width:20">ID</th>	
				<th data-options="field:'username',width:50">账号</th>				
				<th data-options="field:'password',width:110">密码</th>
				<th data-options="field:'createTime',width:80">创建时间</th>
				<th data-options="field:'lastTime',width:80">最后登录时间</th>
				<th data-options="field:'lastIp',width:80">最后登录IP</th>
				<th data-options="field:'status',width:80"  formatter="changeValue">状态</th>
				<th data-options="field:'locked',width:40">是否被锁</th>
				<th data-options="field:'roleSet',width:80"  formatter="managerRole">拥有角色</th>
			</tr>
		</thead>
	</table>
	
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton add" iconCls="icon-add" onclick="newUser()" plain="true">新增用户</a> 
		<a href="#" class="easyui-linkbutton edit" iconCls="icon-edit" onclick="editUser()" plain="true">修改用户</a> 
		<a href="#" class="easyui-linkbutton remove" iconCls="icon-remove" onclick="deleteUser()" plain="true">删除用户</a>
		<a href="#" class="easyui-linkbutton reset" iconCls="icon-undo" onclick="resetPwd()" plain="true">重置密码</a>
		 <!-- <div>
			账号: <input class="easyui-textbox" style="width:80px" id="username">		
		<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="userSearch()">搜索</a>
		</div>-->
	</div>
	
	<div id="dlg" class="easyui-dialog" data-options="modal:true" title="数据参数" style="width: 400px; height: 500px;" closed="true" buttons="#dlg-buttons">
		<form method="post" id="fm">
			<table cellpadding="5">
				<tr>
					<td><input type="hidden" name="userId" /></td>
				</tr>
	    		<tr id="tr3">
	    			<td>账号:</td>
	    			<td><input class="easyui-textbox" type="text" name="username" maxlength="10" validtype="checkRemote"  required="true" missingMessage="姓名必须填写"></input></td>
	    		</tr>
	    		<tr id="tr1">
	    			<td>密码:</td>
	    			<td><input class="easyui-textbox" validtype="safepass" type="password" id="password" name="password" maxlength="20" required="true" missingMessage="密码必须填写"></input></td>
	    		</tr>
	    		<tr id="tr2">
	    			<td>重复密码:</td>
	    			<td><input class="easyui-textbox" validtype="passwordEqual(this.val,'password')" type="password" name="password2" required="true" missingMessage="重复密码必须填写"></input></td>
	    		</tr> 		
	    		<tr>
	    			<td>状态:</td>
	    			<td>
						<select name="status" style="width:70px;" class="easyui-combobox" >
							<option selected="selected" value="0">正常</option>
							<option value="1">禁用</option>
							<option value="2">已过期</option>
						</select>
					</td>
	    		</tr>
	    		<tr>
	    			<td>角色:</td>
	    			<td>
	    				<input id="roleid" name="roleId" class="easyui-combobox role" style="width:180px;"></input>
					</td>
	    		</tr>
	    	</table>
		</form>
	</div>
	
	<div id="dlgupdate" class="easyui-dialog" data-options="modal:true" title="数据参数" style="width: 400px; height: 500px;" closed="true" buttons="#dlg-buttonsupdate">
		<form method="post" id="fmupdate">
			<table cellpadding="2">
				<tr>
					<td><input type="hidden" name="userId" /></td>
				</tr>
	    		<tr>
	    			<td>账号:</td>
	    			<td><input class="easyui-textbox" type="text" disabled="disabled" name="username" maxlength="10"  ></input></td>
	    		</tr>   		
	    		<tr>
	    			<td>状态:</td>
	    			<td>
						<select name="status" style="width:70px;" class="easyui-combobox" >
							<option selected="selected" value="0">正常</option>
							<option value="1">禁用</option>
							<option value="2">已过期</option>
						</select>
					</td>
	    		</tr>
	    		<tr>
	    			<td>角色:</td>
	    			<td>
	    				<input id="roleid2" name="roleId" class="easyui-combobox role" style="width:180px;" required='true' missingMessage="必须选个角色"></input>
					</td>
	    		</tr>
	    	</table>
		</form>
	</div>
	
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="saveUser()" iconCls="icon-ok">保存</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlg').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>
	<div id="dlg-buttonsupdate">
		<a href="#" class="easyui-linkbutton  save" onclick="updateUser()" iconCls="icon-ok">保存</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlgupdate').dialog('close')" iconCls="icon-cancel">取消</a>
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
						if(data.indexOf("total")!=-1||!(data.indexOf("meta")!=-1)){							
							return data;
						}else if(data.indexOf("href")!=-1){
							$.messager.alert('错误！','您没有此权限!','error');
							/*setInterval(function(){
								window.location.href="401";
							}, 2000);*/						
							/*return data;						}
						
					}	
		}
		})*/
		loadDataGrid();
		roleTree();
    });  	
	function loadDataGrid(){
		 $('#dg').datagrid({  
	            title : '用户信息',  
	            iconCls : 'icon-ok',  
	            //width : 600,  
	            pageSize : 5,//默认选择的分页是每页5行数据  
	            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
	            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
	            striped : true,//设置为true将交替显示行背景。  
	            collapsible : true,//显示可折叠按钮  
	            toolbar:"#toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
	            url:'getAllUser',//url调用Action方法  
	            method:'get',
	            loadMsg : '数据装载中......',  
	            singleSelect:false,//为true时只能选择单行  
	            fitColumns:true,//允许表格自动缩放，以适应父容器  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,	            
	            //sortName : 'xh',//当数据表格初始化时以哪一列来排序  
	            //sortOrder : 'desc',//定义排序顺序，可以是'asc'或者'desc'（正序或者倒序）。  
	            remoteSort : false,  
	             //frozenColumns : [ [ {  
	             //   field : 'ck',  
	             //   checkbox : true  
	            //} ] ],   
	            pagination : true,  
	            rownumbers : true
	        });   
	}
	
    function changeValue(value, row, index){    	
        if (value == "0") {
            return '<span style="color:green">正常</span>';
        }
        else if (value == "1")  {
            return '<span style="color:red">禁用</span>';
        }
        else if (value == "2")  {
            return '<span style="color:gray">已过期</span>';
        }
    }

	function roleTree(){
		$('.role').combobox({
			url:'getRoles',
			method:'get',
			valueField:'id',
			textField:'text',
			multiple:true,
			editable:false,
			panelHeight:'auto'
			
		});
	}
		
		var url;
		function newUser(){
			$('#dlg').dialog('open').dialog('setTitle','新建');
			roleTree();
			$('#fm').form('clear');
			url = 'saveUser';
		}
		function editUser(){
			var row = $('#dg').datagrid('getSelections');
			if (row.length == 1){
				roleTree();
				$('#dlgupdate').dialog('open').dialog('setTitle','编辑');
				$('#fmupdate').form('clear');
				$('#fmupdate').form('load',row[0]);												
				url = 'updateUser';
			}else{
				$.messager.show({
					title: '提示信息',
					msg: '请选择一行数据再进行编辑！'
				});
			}
		}
		function updateUser(){
			$('#fmupdate').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					var result = eval('('+result+')');
					if (result.success){
						$('#dlgupdate').dialog('close');		
						$('#dg').datagrid('reload');	
						$.messager.show({
							title: '提示信息',
							msg: result.msg
						});
					} else {
						$('#dlgupdate').dialog('close');		
						$('#dg').datagrid('reload');	
						$.messager.alert('错误！',result.msg,'error');
						/*$.messager.show({
							title: '提示信息',
							msg: result.msg
						});*/
					}
				}
			});
		}
		
		function saveUser(){
			$('#fm').form('submit',{
				url: url,
				onSubmit: function(){
					//alert(url);					
					return $(this).form('validate');
				},
				success: function(result){
					//alert(result);
					var result = eval('('+result+')');
					if (result.success){
						$('#dlg').dialog('close');		
						$('#dg').datagrid('reload');	
						$.messager.show({
							title: '提示信息',
							msg: result.msg
						});
					} else {
						$('#dlg').dialog('close');		
						$('#dg').datagrid('reload');
						$('#dlgupdate').dialog('close');		
						$('#dg').datagrid('reload');	
						$.messager.alert('错误！',result.msg,'error');
					}
				}
				
			});
		}
		function deleteUser(){
			var rows = $('#dg').datagrid('getSelections');
			var ids = [];
			if (rows.length > 0){
				$.messager.confirm('提示信息','确定删除?',function(r){
					if (r){
						for ( var i = 0; i < rows.length; i++) {
							ids.push(rows[i].userId);
						}
						
						$.ajax({
							url : 'deleteUser',
							type : 'post',
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
										msg: "操作异常"
									});
								}
							},
							error:function(){
								$.messager.alert('错误！','您没有此权限!','error');
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
	
		function resetPwd(){
			var row = $('#dg').datagrid('getSelections');
			if (row.length == 1){
				$.messager.confirm('提示信息','确定重置?',function(r){
					if (r){
						$.ajax({
							url : 'resetPwd',
							type : 'post',	
							data:"userId="+row[0].userId,
							cache : false,
							success : function(result) {
								$.messager.alert('Info', "重置密码成功！初始密码为"+result, 'info');
							}
						});
					}
				})
			}else{
				$.messager.show({
					title: '提示信息',
					msg: '请选择一行数据再进行编辑！'
				});
			}
		}
		
	function managerRole(value,row,index){
			if(value!=null){	
				var arr ="" ;
				
				for (var i = 0; i < value.length; i++) {
					arr = value[i].roleName+","+arr;	
					
				}
				return arr;
			}
	}
	function userSearch(){
		//alert("ok");

;
		alert(queryCondition.username);
		loadDataGridByQ(queryCondition);
	}
	function loadDataGridByQ(queryConditon){
		$('#dg').datagrid({  
			 	title : '用户信息',  
	            iconCls : 'icon-ok',  
	            //width : 600,  
	            pageSize : 5,//默认选择的分页是每页5行数据  
	            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
	            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
	            striped : true,//设置为true将交替显示行背景。  
	            collapsible : true,//显示可折叠按钮  
	            toolbar:"#toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
	            url:'getUser',//url调用Action方法  
	            method:'get',
	            loadMsg : '数据装载中......',  
	            singleSelect:false,//为true时只能选择单行  
	            fitColumns:true,//允许表格自动缩放，以适应父容器  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,	            
	            //sortName : 'xh',//当数据表格初始化时以哪一列来排序  
	            //sortOrder : 'desc',//定义排序顺序，可以是'asc'或者'desc'（正序或者倒序）。  
	            remoteSort : false,  
	             //frozenColumns : [ [ {  
	             //   field : 'ck',  
	             //   checkbox : true  
	            //} ] ],   
	            pagination : true,  
	            rownumbers : true,
            	queryParams:queryConditon
        });   
	}
	</script>
	
</body>
</html>