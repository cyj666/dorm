<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="../system/base.jsp"%>
<script type="text/javascript" src="http://www.w3cschool.cc/try/jeasyui/datagrid-detailview.js"></script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>宿舍</title>
</head>
<!-- url="getAllRoom"
singleSelect="true" fitColumns="true" -->
<body>
	<table id="dg" class="" title="宿舍管理" style="width: 100%; height: 100%"
		title="DataGrid - SubGrid">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'roomId',width:10">系统ID</th>
				<th data-options="field:'factoryName',width:10">厂区名</th>
				<th data-options="field:'building',width:10">楼栋号</th>
				<th data-options="field:'unit',width:10">单元号</th>
				<th data-options="field:'floor',width:10">楼层</th>
				<th data-options="field:'roomNo',width:10">房间号</th>
				<th data-options="field:'roomStatus',width:15" formatter="manageStatus">房间状态</th>
				<th data-options="field:'roomAdmin',width:10">宿管</th>
				<th data-options="field:'type',width:10">类型</th>
				<th data-options="field:'size',width:10">房间规格</th>
				<th data-options="field:'employees',width:10" formatter="manageEmployee">已住人数</th>
				<th data-options="field:'remark',width:90">备注</th>
			</tr>
		</thead>
	</table>
	
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton add" iconCls="icon-add" onclick="create()" plain="true">入住登记</a> 
		<!--<a href="#" class="easyui-linkbutton edit" iconCls="icon-edit" onclick="edit()" plain="true">调换宿舍</a> -->
		<a href="#" class="easyui-linkbutton remove" iconCls="icon-remove" onclick="remove1()" plain="true">搬离宿舍</a>
		<!--<<a href="#" class="easyui-linkbutton remove" iconCls="icon-cancel" onclick="del()" plain="true">删除记录</a>-->
		<div>
			分厂: <input class="easyui-combobox" id="factory" style="width:100px">
			楼栋: <input class="easyui-combobox" id="building" style="width:100px">
			单元: <input class="easyui-combobox" id="unit" style="width:100px">
			楼层: <input class="easyui-combobox" id="floor" style="width:100px">
			房间: <input class="easyui-combobox" id="room" style="width:100px">
			<a href="#" class="easyui-linkbutton" onclick="doSearch()" iconCls="icon-search">查找</a>
			<a href="#" class="easyui-linkbutton" onclick="doReset()" iconCls="icon-redo">重置</a>
		</div>
	</div>
	<div id="dlg" class="easyui-dialog" title="数据参数" data-options="modal:true" style="width: 50%; height: 70%;top:0px" closed="true" buttons="#dlg-buttons">
		<form method="get" id="fm">
			<table cellpadding="9">
				<tr>
					<td><input type="hidden" name="roomId" /></td>
				</tr>
				<tr>
	    			<td>厂区:</td>
	    			<td><input class="easyui-textbox" type="text" name="factoryName" 
	    			maxlength="30" required="true" readonly="readonly" disabled="disabled"></input></td>
	    		</tr>
	    		<tr>
	    			<td>楼栋编号:</td>
	    			<td><input class="easyui-textbox" type="text" name="building"
	    			 maxlength="30" required="true" readonly="readonly" disabled="disabled"></input></td>
	    		</tr>
	    		<tr>
	    			<td>单元号:</td>
	    			<td><input class="easyui-textbox" type="text" name="unit" 
	    			maxlength="30" required="true" readonly="readonly" disabled="disabled"></input></td>
	    		</tr>
	    		<tr>
	    			<td>楼层:</td>
	    			<td><input class="easyui-textbox" type="text" name="floor" 
	    			maxlength="30" required="true" readonly="readonly" disabled="disabled"></input></td>
	    		</tr>
	    		<tr>
	    			<td>房间号:</td>
	    			<td><input class="easyui-textbox" type="text" name="roomNo" 
	    			maxlength="30" required="true" readonly="readonly" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>总床位数:</td>
	    			<td><input class="easyui-textbox" id="size" type="text" name="size" 
	    			maxlength="2" validtype="number" required="true" readonly="readonly" disabled="disabled"></input></td>
	    		</tr>
	    		<tr>
	    			<td>类型:</td>
	    			<td><input class="easyui-textbox" type="text" name="type"
	    			 maxlength="30" required="true" readonly="readonly" disabled="disabled"></input></td>
	    		</tr>
	    		<tr>
	    			<td>宿管:</td>
	    			<td><input class="easyui-textbox" required="true"  maxlength="10" 
	    			type="text" name="roomAdmin" readonly="readonly" disabled="disabled"></input></td>
	    		</tr>
	    		<tr>
	    			<td>已住人数:</td>
	    			<td><input class="easyui-textbox" type="text" name="employees"
	    			maxlength="30" required="true" readonly="readonly" disabled="disabled"></input></td>
	    		</tr>
	    		<tr>
					<td><input class="easyui-textbox" type="hidden" name="employeeId" id="employeeId2"/></td>
				</tr>
	    		<tr>
	    			<td>目标员工</td>
	    			<td><input class="easyui-textbox" readonly="readonly" id="employeeNo2" type="text" name="employeeNo" 
	    			maxlength="10" validtype="employeeNo"  required="true" missingMessage="工号必须填写" ></input>
	    			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="openWin('dlgEmployee','员工')" >选择</a>
	    			<a href="#" class="easyui-linkbutton" iconCls="icon-redo" onclick="clearText('classid','classname');" >清空</a>
	    			</td>	    			
	    		</tr>	
	    		<tr>
	    			<td>入住时间</td>
	    			<td><input class="easyui-datebox" data-options="formatter:myformatter,parser:myparser" id="employeeWorkplace" maxlength="15" type="text" name="dateIn" ></input></td>
	    		</tr>
	    	</table>
		</form>
	</div>
	
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="save()" iconCls="icon-ok">确定</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlg').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>
	
	
	<!-- 员工界面 -->
	<div id="dlgEmployee" class="easyui-dialog" title="数据" style="width: 70%; height: 100%; top: 0px;" data-options="modal:true" closed="true" buttons="#dlgEmployee-buttons">
		<table id="dgEmployee" class="easyui-datagrid"  cellpadding="0" cellspacing="0" style="width:100%">
			<thead>
				<tr>
					<th data-options="field:'employeeId',width:30">系统ID</th>
					<th data-options="field:'ck',checkbox:true"></th>
					<th data-options="field:'employeeName',width:80">员工姓名</th>
					<th data-options="field:'employeeNo',width:80">工号</th>
					<th data-options="field:'employeeSex',width:80">性别</th>
					<th data-options="field:'employeeJob',width:80">职位</th>
					<th data-options="field:'phoneNo',width:80">手机号码</th>
					<th data-options="field:'employeeStatus',width:80" formatter="manageStatus1">状态</th>
					<th data-options="field:'employeeWorkplace',width:80">工作地点</th>
					<th data-options="field:'employeeFamily',width:80">家属信息</th>
					<th data-options="field:'employeeRemark',width:80">备注</th>
					<th data-options="field:'room',width:80" formatter="managerRoom">住宿情况</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="employee-toolbar">
		<div>
			员工姓名: <input class="easyui-textbox" id="paramEmployee">
			<br/>
			<a href="#" class="easyui-linkbutton" onclick="doSearchEmployee()" iconCls="icon-search">查找</a>
			<a href="#" class="easyui-linkbutton" onclick="doResetEmployee()" iconCls="icon-redo">重置</a>
		</div>
	</div>
	<div id="dlgEmployee-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="afterSelect('dgEmployee','dlgEmployee','employeeid','employeeNo')" iconCls="icon-ok">确定</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlgEmployee').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>
	<script type="text/javascript">
	function openWin(dgrid,dtittle){
		$('#'+dgrid).dialog('open').dialog('setTitle',dtittle);
		loadEmployeeGrid();
	}
	
	function doSearchEmployee(){
		var queryCondition = {'employeeName':$('#paramEmployee').val()};
		//alert($('#paramEmployee').val());
		loadEmployeeGrid(queryCondition);
	}
	function doResetEmployee(){
		$("#paramEmployee").textbox('setValue','');
		loadEmployeeGrid(null);
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
	            url:'getEmployee2',//url调用Action方法  
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
	
	
	
	
	
	$(function() {  
		loadDataGrid();
    });
	function loadDataGrid(query){
		$('#dg').datagrid({
			queryParams:query,
			url:"getRooms",
			pageSize : 15, //默认选择的分页是每页15行数据  
	        pageList : [ 5, 10, 15, 20 ],//可以选择的分页集合  
	        singleSelect:true, 
			nowrap : false,//设置为true，当数据长度超出列宽时将会自动截取  
			striped : true,//设置为true将交替显示行背景。  
	        fitColumns:true,
	        checkOnSelect : true,
			selectOnCheck : true,
			fit : true,
			remoteSort : false,
			pagination : true,
			/*rownumbers : true*/
			view: detailview,
			toolbar:"#toolbar", 
			detailFormatter:function(index,row){
				return '<div style="padding:2px;position:relative;"><table class="ddv"></table></div>';
			},
			onExpandRow: function(index,row){  //index:行数，row:此行对象object
				var ddv = $(this).datagrid('getRowDetail',index).find('table.ddv');
				var queryCondition = {
						'factory' : row.factoryName,
						'building' :  row.building,
						'unit' :  row.unit,
						'floor' :  row.floor,
						'room' :  row.roomNo
					};  //查询条件数据格式
					//alert(queryCondition);
				ddv.datagrid({
					url:'getEmployeeByRoom',
					queryParams:queryCondition,
					method:'get',
					checkOnSelect : true,
					selectOnCheck : true,
					fitColumns:true,
					singleSelect:true,
					rownumbers:true,
					loadMsg:'',
					height:'auto',
					width:'70%',
					columns:[[
						{field:'employeeId',title:'系统ID',width:10},
						{field:'ck',checkbox:true,width:10},
						{field:'employeeName',title:'姓名',width:20,align:'center'},
						{field:'employeeNo',title:'工号',width:30,align:'center'},
						{field:'employeeSex',title:'性别',width:10,align:'center'},
						{field:'employeeJob',title:'职位',width:30,align:'center'},
						{field:'employeeWorkplace',title:'工作地点',width:30,align:'center'},
						{field:'employeeRemark',title:'备注',width:50,align:'center'}
					]],
					onResize:function(){
						$('#dg').datagrid('fixDetailRowHeight',index);
					},
					onLoadSuccess:function(){
						setTimeout(function(){
							$('#dg').datagrid('fixDetailRowHeight',index);
						},0);
					}
				});
				$('#dg').datagrid('fixDetailRowHeight',index);
			}
		});
	};
	
	function manageEmployee(value, row, index) {
		if (value != null) {
			var arr =  value.length;				
			return arr+"人";
		} else {
			return "0";
		}
	}
	
	$(function() {
		$("#factory").combobox({
			editable:false, //不可编辑状态    
            cache: false,    
            panelHeight: '150',//自动高度适合  
			url:"getFactory",
			method:"get",
			valueField:'id',  //返回数据中的id字段
			textField:'text', //返回数据中的text字段
			multiple:false,   //是否能选择多个
			panelHeight:'auto',
			onSelect:function(record){
				//record 表示选中字段的对象
				 $("#building").combobox("setValue",''); //清空
	             $("#unit").combobox("setValue",''); //清空  
	             $("#floor").combobox("setValue",''); //清空  
	             $("#room").combobox("setValue",''); //清空 
	             
	             var factory=record.text; /*$('#factory').combobox('getText');*//*.combobox('getValue'); */ //这些是选之前的字段，record是选之后的字段
	             loadDataGrid({
						'factoryName' : factory				
					});	         
	              /*触发下个选项框*/
	             $("#building").combobox({
	     			editable:false, //不可编辑状态    
	                cache: false,    
	                panelHeight: '150',//自动高度适合  
	            	url:"getBuilding?factory="+factory,
	     			method:"get",
	     			valueField:'id',  //返回数据中的id字段
	     			textField:'text', //返回数据中的text字段
	     			multiple:false,   //是否能选择多个
	     			panelHeight:'auto',
	     			onSelect:function(record){
	     				//alert(factory);
	     				var building = record.text;
	     				$("#unit").combobox("setValue",''); //清空  
	     				$("#floor").combobox("setValue",''); //清空  
	     				$("#room").combobox("setValue",''); //清空 
	     				 loadDataGrid({
	 						'factoryName' : factory,
	 						'building': building
	 					});
	     	     		//$('[comboname=city]').combobox('clear');
	     				$("#unit").combobox({
	     					editable:false, //不可编辑状态    
	     		            cache: false,    
	     		            panelHeight: '150',//自动高度适合  
	     					url:"getUnit?factory="+factory+"&&building="+building,
	    	     			method:"get",
	    	     			valueField:'id',  //返回数据中的id字段
	    	     			textField:'text', //返回数据中的text字段
	    	     			multiple:false,   //是否能选择多个
	    	     			panelHeight:'auto',
	    	     			onSelect:function(record){
	    	     				var unit = record.text;
	    	     				$("#floor").combobox("setValue",''); //清空  
	    	     				$("#room").combobox("setValue",''); //清空 
	    	     				loadDataGrid({
	    	 						'factoryName' : factory,
	    	 						'building': building,
	    	 						'unit':unit
	    	 					});
	    	     				$("#floor").combobox({
	    	     					editable:false, //不可编辑状态    
	    	     		            cache: false,    
	    	     		            panelHeight: '150',//自动高度适合  
	    	     					url:"getFloor?factory="+factory+"&&building="+building+"&&unit="+unit,
	    	    	     			method:"get",
	    	    	     			valueField:'id',  //返回数据中的id字段
	    	    	     			textField:'text', //返回数据中的text字段
	    	    	     			multiple:false,   //是否能选择多个
	    	    	     			panelHeight:'auto',
	    	    	     			onSelect:function(record){
	    	    	     				var floor = record.text;
	    	    	     				$("#room").combobox("setValue",''); //清空 
	    	    	     				loadDataGrid({
	    	    	 						'factoryName' : factory,
	    	    	 						'building': building,
	    	    	 						'unit':unit,
	    	    	 						'floor':floor
	    	    	 					});
	    	    	     				$("#room").combobox({
	    	    	     					editable:false, //不可编辑状态    
	    	    	     		            cache: false,    
	    	    	     		            panelHeight: '150',//自动高度适合  
	    	    	     					url:"getRoom?factory="+factory+"&&building="+building+"&&unit="+unit+"&&floor="+floor,
	    	    	    	     			method:"get",
	    	    	    	     			valueField:'id',  //返回数据中的id字段
	    	    	    	     			textField:'text', //返回数据中的text字段
	    	    	    	     			multiple:false,   //是否能选择多个
	    	    	    	     			panelHeight:'auto',
	    	    	    	     			onSelect:function(record){
	    	    	    	     				loadDataGrid({
	    	    	    	 						'factoryName' : factory,
	    	    	    	 						'building': building,
	    	    	    	 						'unit':unit,
	    	    	    	 						'floor':floor,
	    	    	    	 						'roomNo':record.text
	    	    	    	 					});
	    	    	    	     			}
	    	    	     				})
	    	    	     			}
	    	     				})
	    	     			}
	     				})
	     			}
	             }); 
	                
	                
	                
			}
			
		})
		
		/*禁止编辑*/
		$("#factory").combobox({editable:false,  cache: false});
		$("#building").combobox({editable:false,  cache: false});
		$("#unit").combobox({editable:false,  cache: false});
		$("#floor").combobox({editable:false,  cache: false});
		$("#room").combobox({editable:false,  cache: false});
		
	})
	
	function doSearch(){
		var queryCondition = {
					'factoryName' : $('#factory').combobox('getText'),
					'building':  $('#building').combobox('getText'),
					'unit': $('#unit').combobox('getText'),
					'floor': $('#floor').combobox('getText'),
					'roomNo': $('#room').combobox('getText')
					};
		loadDataGrid(queryCondition);
	}
	
	function doReset(){
		 $("#factory").combobox({"setValue":'',cache: false}); //清空
		 $("#building").combobox("setValue",''); //清空
         $("#unit").combobox("setValue",''); //清空  
         $("#floor").combobox("setValue",''); //清空  
         $("#room").combobox("setValue",''); //清空 
		loadDataGrid({
			'factoryName' : $('#factory').combobox('getText'),
			'building':  $('#building').combobox('getText'),
			'unit': $('#unit').combobox('getText'),
			'floor': $('#floor').combobox('getText'),
			'roomNo': $('#room').combobox('getText')
			});
	}
	
	function create(){
		/*$('#dlg').dialog('open').dialog('setTitle','入住登记');
		$('#fm').form('clear');*/
		var row = $('#dg').datagrid('getSelections');
		if (row.length == 1){
			if(row[0].employees.length<row[0].size){
				$('#dlg').dialog('open').dialog('setTitle','入住登记');
				$('#fm').form('clear');
				//alert(row[0].employees.length);
				row[0].employees = row[0].employees.length; //属性修改
				$('#fm').form('load',row[0]);
				url = 'updateRoom';
			}else{
				$.messager.alert('提示信息',row[0].roomNo+'寝室已经住满!','warning');
			}
			
		}else{
			$.messager.show({
				title: '提示信息',
				msg: '请选择<span style="color:red">对应房间</span>再进行入住登记！'
			});
		}
		url = 'addDetails';
	}
	function managerRoom(value, row, index) {
		if (value != null) {
			var arr = "当前居住在：" + value.roomNo;
			return arr;
		} else {
			return "无";
		}
	}
	function afterSelect(targetDg,targetDlg,valueId,valueName){
		var row = $("#"+targetDg).datagrid('getSelections');
		if (row.length >= 1){
			var ids;
			var names;
			for(var i=0;i<row.length;i++){
				if(ids == null){
					ids = row[i].employeeId;
				}else{
					ids = ids+","+row[i].employeeId;
				}
				if(names == null){
					names = row[i].employeeNo;
				}else{
					names = names+","+row[i].employeeNo;
				}
			}
			//$("#"+valueId).val(ids);
			$("#"+valueName+"2").textbox('setValue',names);
			$("#employeeId2").textbox('setValue',ids);
			$("#"+targetDlg).dialog('close');	
		}else{
			$.messager.show({
				title: '提示信息',
				msg: '您未选择任何数据！'
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
	function manageStatus(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (value != null) {
			if(value=="1"){
				var arr = '<span style="color:green;">可用</span>';
			}else if(value=="2"){
				var arr = '<span style="color:red;">封禁</span>';
			}else if(value=="3"){
				var arr = '<span style="color:gray;">其他(异常)</span>';
			}
			if(row.size==row.employees.length){
				return arr+'<span style="color:red;">(已住满)</span>';
			}else{
				return arr+'<span style="color:green;">(未住满)</span>';
			}
			
		} else {
			return "";
		}
	}
	function manageStatus1(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
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
	function remove1(){	
		try {
		var row = $('#dg').datagrid('getSelections');
		var row1 = $('table.ddv').datagrid('getSelections');
		//alert(row1[0].employeeName);
		if (row.length == 1&&row1.length ==1){
			$('#dlg').dialog('open').dialog('setTitle','搬离宿舍');
			$('#fm').form('clear');
			row[0].employees = row[0].employees.length; //属性修改
			$('#fm').form('load',row[0]);	
			$('#fm').form('load',row1[0]);
			url = 'leaveRoom';
		}else{
			$.messager.show({
				title: '提示信息',
				msg: '请选择房间+员工再进行编辑！'
			});
		}
		}catch (e) {
			$.messager.show({
				title: '提示信息',
				msg: '请确保当前页面只有一个房间！'
			});
		}
}
	</script>
</body>
</html>