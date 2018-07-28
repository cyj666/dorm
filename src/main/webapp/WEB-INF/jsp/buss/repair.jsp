<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="../system/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>维修</title>
</head>
<body>
	<table id="dg" class="" title="列表" style="width: 700px; height: 300px">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'id',width:30">系统ID</th>
				<th data-options="field:'roomNo',width:80">房间</th>
				<th data-options="field:'declarant',width:80">申报人</th>
				<th data-options="field:'reason',width:80">上报理由</th>
				<th data-options="field:'createDate',width:80" formatter="manageTime">上报时间</th>
				<th data-options="field:'result',width:80">处理结果</th>
				<th data-options="field:'resultDate',width:80">处理时间</th>
				<th data-options="field:'repairman',width:80" >修理人员</th>
				<th data-options="field:'remark',width:80" >备注</th>				
			</tr>
		</thead>
	</table>
		
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton add" iconCls="icon-add" onclick="create()" plain="true">新建维修单</a> 
		<a href="#" class="easyui-linkbutton edit" iconCls="icon-edit" onclick="edit()" plain="true">处理维修单</a> 
		<!--<a href="#" class="easyui-linkbutton remove" iconCls="icon-remove" onclick="remove1()" plain="true">修改维修单</a> -->
		<a href="#" class="easyui-linkbutton remove" iconCls="icon-cancel" onclick="del()" plain="true">删除维修单</a>
		<div>
			申报人: <input class="easyui-textbox" id="declarant">
			房间号: <input class="easyui-textbox" id="roomNo">
			上报时间:<input class="easyui-datebox" id="createDate" data-options="formatter:myformatter,parser:myparser">
			处理时间:<input class="easyui-datebox" id="resultDate" data-options="formatter:myformatter,parser:myparser">
			<!--  是否查看所有<input type="checkbox" id="ck1" name="ck1" value="1"  />-->
			<a href="#" class="easyui-linkbutton" onclick="detailsSearch()" iconCls="icon-search">查找记录</a>
			<a href="#" class="easyui-linkbutton" onclick="detailsReset()" iconCls="icon-cancel">清空</a>
		</div>
	</div>
	
	
	<div id="dlg" class="easyui-dialog" title="数据参数" data-options="modal:true" style="width: 500px; height: 430px;padding:10px; top:100px; left:500px;" closed="true" buttons="#dlg-buttons">
		<form method="get" id="fm">
			<table cellpadding="5">
				<tr>					
					<td><input type="hidden" id="id" name="id" /></td>
				</tr>   
	    		<tr>
	    			<td>目标宿舍</td>
	    			<td><input class="easyui-textbox" readonly="readonly" id="roomNo2" editable="true" maxlength="20" type="text" name="roomNo" required="false"  missingMessage="房间号必须填写"></input>
	    			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="openRoomWin('dlgRoom','宿舍')" >选择</a>
	    			<a href="#" class="easyui-linkbutton" iconCls="icon-redo" onclick="clearText('classid','classname');" >清空</a></td>
	    		</tr>
	    		<tr>
	    			<td>申报人</td>
	    			<td><input class="easyui-textbox"  id="declarant" maxlength="15" type="text" name="declarant" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>申报理由</td>
	    			<td><input class="easyui-textbox"  id="reason" maxlength="30" type="text" name="reason" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>备注</td>
	    			<td><input class="easyui-textbox"  id="remark" maxlength="15" type="text" name="remark" ></input></td>
	    		</tr>	    		
	    		<tr>
	    			<td>申报时间</td>
	    			<td><input class="easyui-datebox" data-options="formatter:myformatter,parser:myparser" id="createDate" maxlength="15" type="text" name="createDate" ></input></td>
	    		</tr>
				<tr>
	    			<td></td>
	    			<td><small>---维修人员填写---</small></td>
	    		</tr>
	    		<tr>
	    			<td>处理结果</td>
	    			<td><input class="easyui-textbox"  id="result" maxlength="15" type="text" name="result" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>修理人员</td>
	    			<td><input class="easyui-textbox"  id="repairman" maxlength="15" type="text" name="repairman" ></input></td>
	    		</tr>	
	    		<tr>
	    			<td>处理时间</td>
	    			<td><input class="easyui-datebox" data-options="formatter:myformatter,parser:myparser" id="resultDate" maxlength="15" type="text" name="resultDate" ></input></td>
	    		</tr>
	    	</table>
		</form>
	</div>
	
	
	
	
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="save()" iconCls="icon-ok">保存</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlg').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>	
	
	<!-- 宿舍界面 -->
	<div id="roomtoolbar">
		<div>
			宿舍名称: <input class="easyui-textbox" id="paramDormpop">
			<br/>
			<a href="#" class="easyui-linkbutton" onclick="dormSearch()" iconCls="icon-search">查找</a>
			<a href="#" class="easyui-linkbutton" onclick="dormReset()" iconCls="icon-redo">重置</a>
		</div>
	</div>
	<div id="dlgRoom" class="easyui-dialog" title="数据" style="width: 650px; height: 550px; top: 80px;" data-options="modal:true" closed="true" buttons="#dlgRoom-buttons">
		<table id="dgRoom" class="easyui-datagrid"  cellpadding="0" cellspacing="0" style="width:100%">
			<thead>
				<tr>
					<th data-options="field:'factoryName',width:80">分厂</th>
					<th data-options="field:'building',width:80">楼栋号</th>
					<th data-options="field:'unit',width:80">单元号</th>
					<th data-options="field:'roomNo',width:80">宿舍</th>
					<th data-options="field:'roomAdmin',width:80">宿管</th>
					<th data-options="field:'size',width:80">总床位数</th>
					<th data-options="field:'remark',width:80">备注</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="dlgRoom-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="afterRoomSelect('dgRoom','dlgRoom','dormid','roomNo')" iconCls="icon-ok">确定</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlgRoom').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>
	
	<!-- 员工界面 -->
	<div id="dlgEmployee" class="easyui-dialog" title="数据" style="width: 650px; height: 550px; top: 80px;" data-options="modal:true" closed="true" buttons="#dlgEmployee-buttons">
		<table id="dgEmployee" class="easyui-datagrid"  cellpadding="0" cellspacing="0" style="width:100%">
			<thead>
				<tr>
					<th data-options="field:'employeeName'" style="width: 60;">姓名</th>
					<th data-options="field:'employeeJob'" style="width: 60;">职位</th>
					<th data-options="field:'employeeWorkplace'" style="width: 60;">职位</th>
					<th data-options="field:'employeeNo'" style="width: 40;">工号</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="employee-toolbar">
		<div>
			员工姓名: <input class="easyui-textbox" id="paramEmployee">
			<br/>
			<a href="#" class="easyui-linkbutton" onclick="doSearch()" iconCls="icon-search">查找</a>
			<a href="#" class="easyui-linkbutton" onclick="doReset()" iconCls="icon-redo">重置</a>
		</div>
	</div>
	<div id="dlgEmployee-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="afterSelect('dgEmployee','dlgEmployee','employeeid','employeeNo')" iconCls="icon-ok">确定</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlgClass').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>
	
	
	<script type="text/javascript">
	$(function() {  
		loadDataGrid();
    });
	function openWin(dgrid,dtittle){
		$('#'+dgrid).dialog('open').dialog('setTitle',dtittle);
		loadEmployeeGrid();
	}
	function openRoomWin(dgrid,dtittle) {
		$('#'+dgrid).dialog('open').dialog('setTitle',dtittle);
		loadRoomGrid();
	}
	function detailsSearch(){
		//var is = $("input[type='checkbox']").prop('checked'); 
		var queryCondition = {'declarant':$('#declarant').val(),'roomNo': $('#roomNo').val(),'createDate': $('#createDate').val(),'resultDate': $('#resultDate').val()};
		loadDataGridByQ(queryCondition);
	}
	function detailsReset(){
		$('#roomNo').textbox('setValue','');
		$('#employeeNo').textbox('setValue','');
		$('#dateIn').textbox('setValue','');
		$('#dateOut').textbox('setValue','');
		loadDataGridByQ(null);
	}
	function loadDataGridByQ(queryConditon){
		$('#dg').datagrid({  
            title : '员工信息',  
            iconCls : 'icon-ok',  
            pageSize : 5,//默认选择的分页是每页5行数据  
            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
            striped : true,//设置为true将交替显示行背景。  
            collapsible : true,//显示可折叠按钮  
            toolbar:"#toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
            url:'getRepair',//url调用Action方法  
            method:'get',
            loadMsg : '数据装载中......',  
            singleSelect:false,//为true时只能选择单行  
            fitColumns:true,//允许表格自动缩放，以适应父容器  
            checkOnSelect:true,
            selectOnCheck:true,
            fit:true,
            remoteSort : false,  
            pagination : true,  
            rownumbers : true,
            queryParams:queryConditon
        });   
	}
	function loadEmployeeGrid(queryConditon){
		 $('#dgEmployee').datagrid({  
	            title : '员工信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 5,//默认选择的分页是每页5行数据  
	            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
	            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
	            striped : true,//设置为true将交替显示行背景。  
	            collapsible : true,//显示可折叠按钮  
	            toolbar:"#employee-toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
	            url:'getAllEmployee',//url调用Action方法  
	            method:'get',
	            loadMsg : '数据装载中......',  
	            singleSelect:true,//为true时只能选择单行  
	            fitColumns:true,//允许表格自动缩放，以适应父容器  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,
	            remoteSort : false,  
	            pagination : true,  
	            rownumbers : true,
	            queryParams:queryConditon
	        });   
	}
	function loadRoomGrid(){
		 $('#dgRoom').datagrid({  
	            title : '员工信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 5,//默认选择的分页是每页5行数据  
	            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
	            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
	            striped : true,//设置为true将交替显示行背景。  
	            collapsible : true,//显示可折叠按钮  
	            toolbar:"#roomtoolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
	            url:'getAllRoom',//url调用Action方法  
	            method:'get',
	            loadMsg : '数据装载中......',  
	            singleSelect:true,//为true时只能选择单行  
	            fitColumns:true,//允许表格自动缩放，以适应父容器  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,
	            remoteSort : false,  
	            pagination : true,  
	            rownumbers : true
	        });   
	}
	function loadEmployeeGridByQ(queryConditon){
		 $('#dgRoom').datagrid({  
	            title : '员工信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 5,//默认选择的分页是每页5行数据  
	            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
	            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
	            striped : true,//设置为true将交替显示行背景。  
	            collapsible : true,//显示可折叠按钮  
	            toolbar:"#employee-toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
	            url:'getEmployee',//url调用Action方法  
	            method:'get',
	            loadMsg : '数据装载中......',  
	            singleSelect:true,//为true时只能选择单行  
	            fitColumns:true,//允许表格自动缩放，以适应父容器  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,
	            remoteSort : false,  
	            pagination : true,  
	            rownumbers : true,
	            queryParams:queryConditon
	        });   
		 
	}
	function loadRoomGridByQ(queryConditon){
		 $('#dgEmployee').datagrid({  
	            title : '宿舍信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 5,//默认选择的分页是每页5行数据  
	            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
	            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
	            striped : true,//设置为true将交替显示行背景。  
	            collapsible : true,//显示可折叠按钮  
	            toolbar:"#roomtoolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
	            url:'getRooms',//url调用Action方法  
	            method:'get',
	            loadMsg : '数据装载中......',  
	            singleSelect:true,//为true时只能选择单行  
	            fitColumns:true,//允许表格自动缩放，以适应父容器  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,
	            remoteSort : false,  
	            pagination : true,  
	            rownumbers : true,
	            queryParams:queryConditon
	        });   
		 
	}
	function afterSelect(targetDg,targetDlg,valueId,valueName){
		var row = $("#"+targetDg).datagrid('getSelections');
		if (row.length >= 1){
			var ids;
			var names;
			for(var i=0;i<row.length;i++){
				/*if(ids == null){
					ids = row[i].employeeNo;
				}else{
					ids = ids+","+row[i].employeeNo;
				}*/
				if(names == null){
					names = row[i].employeeNo;
				}else{
					names = names+","+row[i].employeeNo;
				}
			}
			//$("#"+valueId).val(ids);
			$("#"+valueName+"2").textbox('setValue',names);
			$("#"+targetDlg).dialog('close');	
		}else{
			$.messager.show({
				title: '提示信息',
				msg: '您未选择任何数据！'
			});
		}
	}
	function afterRoomSelect(targetDg,targetDlg,valueId,valueName){
		var row = $("#"+targetDg).datagrid('getSelections');
		if (row.length >= 1){
			var ids;
			var names;
			for(var i=0;i<row.length;i++){
				/*if(ids == null){
					ids = row[i].employeeNo;
				}else{
					ids = ids+","+row[i].employeeNo;
				}*/
				if(names == null){
					names = row[i].roomNo;
				}else{
					names = names+","+row[i].roomNo;
				}
			}
			//$("#"+valueId).val(ids);
			$("#"+valueName+"2").textbox('setValue',names);
			$("#"+targetDlg).dialog('close');	
		}else{
			$.messager.show({
				title: '提示信息',
				msg: '您未选择任何数据！'
			});
		}
	}
	function doSearch(){
		var queryCondition = {'employeeName':$('#paramEmployee').val()};
		//alert(queryCondition.employeeName);
		loadEmployeeGridByQ(queryCondition);
	}
	function doReset(){
		$('#paramEmployee').textbox('setValue','');
		loadEmployeeGrid(null);
	}
	
	//------------------------------
	function loadDataGrid(){
		 $('#dg').datagrid({  
	            title : '员工信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 5,//默认选择的分页是每页5行数据  
	            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
	            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
	            striped : true,//设置为true将交替显示行背景。  
	            collapsible : true,//显示可折叠按钮  
	            toolbar:"#toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
	            url:'getAllRepair',//url调用Action方法  
	            method:'get',
	            loadMsg : '数据装载中......',  
	            singleSelect:false,//为true时只能选择单行  
	            fitColumns:true,//允许表格自动缩放，以适应父容器  
	            checkOnSelect:true,
	            selectOnCheck:true,
	            fit:true,
	            remoteSort : false,  
	            pagination : true,  
	            rownumbers : true
	            //queryParams:queryConditon
	        });   
	}
		var url;
		function create(){
			$('#dlg').dialog('open').dialog('setTitle','新建维修单');
			$('#fm').form('clear');
			url = 'addRepair';
		}
		function edit(){			
				var row = $('#dg').datagrid('getSelections');
				if (row.length == 1){
					$('#dlg').dialog('open').dialog('setTitle','编辑');
					$('#fm').form('clear');
					$('#fm').form('load',row[0]);
					url = 'updateRepair';
				}else{
					$.messager.show({
						title: '提示信息',
						msg: '请选择一行数据再进行编辑！'
					});
				}						
		}
		function remove1(){			
			$('#dlg').dialog('open').dialog('setTitle','删除记录');
			$('#fm').form('clear');
			url = 'leaveRoom';
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
		function del(){
			var rows = $('#dg').datagrid('getSelections');
			var ids = [];
			if (rows.length > 0){
				$.messager.confirm('提示信息','确定删除?',function(r){
					if (r){
						for ( var i = 0; i < rows.length; i++) {
							ids.push(rows[i].id);
						}						
						$.ajax({
							url : 'deleteRepair',
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
		
		function myformatter(date){
			var y = date.getFullYear();
			var m = date.getMonth()+1;
			var d = date.getDate();
			return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
		}
		function myparser(s){
			if (!s) return new Date();
			var ss = (s.split('-'));
			var y = parseInt(ss[0],10);
			var m = parseInt(ss[1],10);
			var d = parseInt(ss[2],10);
			if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
				return new Date(y,m-1,d);
			} else {
				return new Date();
			}
		}
	function manageTime(value, row, index) {
		if (value != null) {
			var arr =  value;
			return arr;
		} else {
			return "无";
		}
	}
	</script>
	
</body>
</html>