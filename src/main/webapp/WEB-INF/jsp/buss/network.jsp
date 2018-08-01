<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="../system/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>网络</title>
</head>
<body>
	<table id="dg" class="" title="列表" style="width: 700px; height: 300px">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'id',width:10">系统ID</th>
				<th data-options="field:'ip',width:10">IP</th>
				<th data-options="field:'ip',width:10">网段</th>
				<th data-options="field:'employee',width:10" formatter="manageEmployee">姓名</th>
				<th data-options="field:'employee',width:10" formatter="manageEmployeeNo">工号</th>
				<th data-options="field:'employee',width:10" formatter="manageEmployeeNo">部门</th>
				<th data-options="field:'mac',width:10">MAC地址</th>
				<th data-options="field:'start',width:10">到期时间</th>
				<th data-options="field:'end',width:10" >预缴时间</th>
				<th data-options="field:'ip',width:10">费用</th>	
				<th data-options="field:'ip',width:10">财务</th>		
				<th data-options="field:'ip',width:10">备注</th>		
			</tr>
		</thead>
	</table>
		
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton add" iconCls="icon-add" onclick="create()" plain="true">网络登记</a> 
		<a href="#" class="easyui-linkbutton edit" iconCls="icon-edit" onclick="remove1()" plain="true">修改记录</a> 
		<a href="#" class="easyui-linkbutton remove" iconCls="icon-cancel" onclick="del()" plain="true">删除记录</a>
		<a href="#" class="easyui-linkbutton put" iconCls="icon-undo" onclick="put()"
			plain="true">导入</a> <a href="#" class="easyui-linkbutton export"
			iconCls="icon-redo" onclick="print()" plain="true">导出</a>
		<div>
			员工姓名: <input class="easyui-textbox" id="employeeName">
			MAC: <input class="easyui-textbox" id="mac">
			IP: <input class="easyui-textbox" id="ip">
			开始日期:<input class="easyui-datebox" id="start" data-options="formatter:myformatter,parser:myparser">
			<!--  是否查看所有<input type="checkbox" id="ck1" name="ck1" value="1"  />-->
			<a href="#" class="easyui-linkbutton" onclick="detailsSearch()" iconCls="icon-search">查找记录</a>
			<a href="#" class="easyui-linkbutton" onclick="detailsReset()" iconCls="icon-cancel">清空</a>
		</div>
	</div>
	
	
	<div id="dlg" class="easyui-dialog" title="数据参数" data-options="modal:true" style="width: 430px; height: 430px;padding:10px; top:100px; left:500px;" closed="true" buttons="#dlg-buttons">
		<form method="get" id="fm">
			<table cellpadding="5">
				<tr>					
					<td><input type="hidden" id="id" name="id" /></td>
				</tr>
	    		<tr>
	    			<td>员工姓名</td><!-- 到时候可切换成工号 -->
	    			<td><input class="easyui-textbox" readonly="readonly" id="employeeNo2" type="text" name="employeeName" validtype="employeeNo"  required="true" missingMessage="工号必须填写" ></input>
	    			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="openWin('dlgEmployee','员工')" >选择</a>
	    			<a href="#" class="easyui-linkbutton" iconCls="icon-redo" onclick="clearText('classid','classname');" >清空</a>
	    			</td>	    			
	    		</tr>	   
	    		<tr>
	    			<td>MAC地址</td>
	    			<td><input class="easyui-textbox"  id="mac" maxlength="15" type="text" name="mac" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>IP地址</td>
	    			<td><input class="easyui-textbox" id="ip" type="text" name="ip" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>开始日期</td>
	    			<td><input class="easyui-datebox" data-options="formatter:myformatter,parser:myparser" id="start" maxlength="15" type="text" name="start" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>到期时间</td>
	    			<td><input class="easyui-datebox" data-options="formatter:myformatter,parser:myparser" id="end" maxlength="15" type="text" name="end" ></input></td>
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
	
	<script type="text/javascript">
	$(function() {  
		loadDataGrid();
    });
	function openWin(dgrid,dtittle){
		$('#'+dgrid).dialog('open').dialog('setTitle',dtittle);
		loadEmployeeGrid();
	}
	/*function openRoomWin(dgrid,dtittle) {
		$('#'+dgrid).dialog('open').dialog('setTitle',dtittle);
		loadRoomGrid();
	}*/
	function detailsSearch(){
		var queryCondition = {'employeeName':$('#employeeName').val(),'mac': $('#mac').val(),'ip': $('#ip').val(),'start': $('#start').val(),'end': $('#end').val()};
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
            pageSize : 15,//默认选择的分页是每页5行数据  
            pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
            striped : true,//设置为true将交替显示行背景。  
            collapsible : true,//显示可折叠按钮  
            toolbar:"#toolbar",//在添加 增添、删除、修改操作的按钮要用到这个  
            url:'getNet',//url调用Action方法  
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
	function loadEmployeeGrid(queryConditon){
		 $('#dgEmployee').datagrid({  
	            title : '员工信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 15,//默认选择的分页是每页5行数据  
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
	/*function loadRoomGrid(){
		 $('#dgRoom').datagrid({  
	            title : '员工信息',  
	            iconCls : 'icon-ok',  
	            pageSize : 15,//默认选择的分页是每页5行数据  
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
	}*/
	/*function loadEmployeeGridByQ(queryConditon){
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
		 
	}*/
	/*function loadRoomGridByQ(queryConditon){
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
		 
	}*/
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
					names = row[i].employeeName;
				}else{
					names = names+","+row[i].employeeName;
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
	            url:'getAllNet',//url调用Action方法  
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
			$('#dlg').dialog('open').dialog('setTitle','网络登记');
			$('#fm').form('clear');
			url = 'addNet';
		}
		function remove1(){	
				var row = $('#dg').datagrid('getSelections');
				if (row.length == 1){
					$('#dlg').dialog('open').dialog('setTitle','修改网络记录');
					$('#fm').form('clear');
					$('#fm').form('load',row[0]);
					url = 'updateNet';
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
							url : 'deleteNet',
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
	function manageRoom(value, row, index) {
			if (value != null) {
				var arr =  value.roomNo;
				return arr;
			} else {
				return "无";
			}
		}
	function manageEmployee(value, row, index) {
			if (value != null) {
				var arr =  value.employeeName;
				return arr;
			} else {
				return "无";
			}
		}
	function manageEmployeeNo(value, row, index) {
		if (value != null) {
			var arr = value.employeeNo;
			return arr;
		} else {
			return "无";
		}
	}
	function manageContinued(value, row, index) {
		if (value != null) {
			var arr =  value+"个月"
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
		url : '${pageContext.request.contextPath}/putExcel4',
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
		window.location.href="${pageContext.request.contextPath}/printExcel4";
	}
	</script>
	
</body>
</html>