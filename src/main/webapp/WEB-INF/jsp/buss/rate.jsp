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
	<table id="dg" class="" title="费用管理" style="width: 100%; height: 100%"
		title="DataGrid - SubGrid">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'roomId',width:4">ID</th>
				<th data-options="field:'id',width:4" formatter=manageID>费用ID</th>
				<th data-options="field:'factoryName',width:5">厂区名</th>
				<th data-options="field:'building',width:4">楼栋号</th>
				<th data-options="field:'unit',width:4">单元号</th>
				<th data-options="field:'floor',width:4">楼层</th>
				<th data-options="field:'roomNo',width:4">房间号</th>
				<th data-options="field:'rate',width:4" formatter=manageYear>年份</th>
				<th data-options="field:'rate1',width:4" formatter=manageJan>1月</th>
				<th data-options="field:'rate2',width:4" formatter=manageFeb>2月</th>
				<th data-options="field:'rate3',width:4" formatter=manageMar>3月</th>
				<th data-options="field:'rate4',width:4" formatter=manageApr>4月</th>
				<th data-options="field:'rate5',width:4" formatter=manageMay>5月</th>
				<th data-options="field:'rate6',width:4" formatter=manageJun>6月</th>
				<th data-options="field:'rate7',width:4" formatter=manageJul>7月</th>
				<th data-options="field:'rate8',width:4" formatter=manageAug>8月</th>
				<th data-options="field:'rate9',width:4" formatter=manageSep>9月</th>
				<th data-options="field:'rate10',width:4" formatter=manageOct>10月</th>
				<th data-options="field:'rate11',width:4" formatter=manageNov>11月</th>
				<th data-options="field:'rate12',width:4" formatter=manageDec>12月</th>
			</tr>
		</thead>
	</table>
	
	<div id="toolbar">
		<!--<a href="#" class="easyui-linkbutton add" iconCls="icon-add" onclick="create()" plain="true">添加记录</a> -->
		<a href="#" class="easyui-linkbutton edit" iconCls="icon-edit" onclick="edit()" plain="true">修改记录</a>
		<a href="#" class="easyui-linkbutton remove" iconCls="icon-remove" onclick="remove1()" plain="true">删除记录</a>
		<!--<<a href="#" class="easyui-linkbutton remove" iconCls="icon-cancel" onclick="del()" plain="true">删除记录</a>-->
		<!--<a href="#" class="easyui-linkbutton put" iconCls="icon-undo" onclick="import()"plain="true">导入</a> -->
		<!--<a href="#" class="easyui-linkbutton export" iconCls="icon-redo" onclick="export()" plain="true">导出</a>		-->
		<div>
			分厂: <input class="easyui-combobox" id="factory" style="width:100px">
			楼栋: <input class="easyui-combobox" id="building" style="width:100px">
			单元: <input class="easyui-combobox" id="unit" style="width:100px">
			楼层: <input class="easyui-combobox" id="floor" style="width:100px">
			房间: <input class="easyui-combobox" id="room" style="width:100px">
			年份: <input class="easyui-combobox" id="year" style="width:100px">
			<!-- 时间: <input class="easyui-datebox" id="attYearMonth" style="width:100px">-->
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
					<td><input type="hidden" name="id" /></td>
				</tr>
	    		<tr>
	    			<td>房间号:</td>
	    			<td><input class="easyui-textbox" type="text" name="roomNo" 
	    			maxlength="30" required="true" readonly="readonly" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>年份:</td>
	    			<td><select class="easyui-combobox" type="text" name="year" 
	    			maxlength="30" required="true" style="width: 80px;">
	    				<option value="2018">2018</option>
	    				<option value="2019">2019</option>
	    				<option value="2020">2020</option>
	    				<option value="2021">2021</option>
	    				<option value="2022">2022</option>
	    			</select></td>
	    		</tr>  
	    		<tr>
	    			<td>1月:</td>
	    			<td><input class="easyui-textbox" type="text" name="jan" 
	    			maxlength="30" ></input></td>
	    		</tr> 
	    		<tr>
	    			<td>2月:</td>
	    			<td><input class="easyui-textbox" type="text" name="feb" 
	    			maxlength="30"></input></td>
	    		</tr>
	    		<tr>
	    			<td>3月:</td>
	    			<td><input class="easyui-textbox" type="text" name="mar" 
	    			maxlength="30"></input></td>
	    		</tr>
	    		<tr>
	    			<td>4月:</td>
	    			<td><input class="easyui-textbox" type="text" name="apr" 
	    			maxlength="30"></input></td>
	    		</tr>
	    		<tr>
	    			<td>5月:</td>
	    			<td><input class="easyui-textbox" type="text" name="may" 
	    			maxlength="30" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>6月:</td>
	    			<td><input class="easyui-textbox" type="text" name="jun" 
	    			maxlength="30"></input></td>
	    		</tr>
	    		<tr>
	    			<td>7月:</td>
	    			<td><input class="easyui-textbox" type="text" name="jul" 
	    			maxlength="30" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>8月:</td>
	    			<td><input class="easyui-textbox" type="text" name="aug" 
	    			maxlength="30"></input></td>
	    		</tr>
	    		<tr>
	    			<td>9月:</td>
	    			<td><input class="easyui-textbox" type="text" name="sep" 
	    			maxlength="30"></input></td>
	    		</tr>
	    		<tr>
	    			<td>10月:</td>
	    			<td><input class="easyui-textbox" type="text" name="oct" 
	    			maxlength="30"></input></td>
	    		</tr>
	    		<tr>
	    			<td>11月:</td>
	    			<td><input class="easyui-textbox" type="text" name="nov" 
	    			maxlength="30" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>12月:</td>
	    			<td><input class="easyui-textbox" type="text" name="dec" 
	    			maxlength="30"></input></td>
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
					<th data-options="field:'employeeStatus',width:80" formatter="manageStatus">状态</th>
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
			nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
			striped : true,//设置为true将交替显示行背景。  
	        fitColumns:true,
	        checkOnSelect : true,
			selectOnCheck : true,
			fit : true,
			remoteSort : false,
			pagination : true,
			/*rownumbers : true*/
			/*view: detailview,*/
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
	             $("#year").combobox("setValue",''); //清空 
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
	     				$("#year").combobox("setValue",''); //清空 
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
	    	     				$("#year").combobox("setValue",''); //清空 
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
	    	    	    	     				$("#year").combobox({
	    	    	    	     					editable:false, //不可编辑状态    
	    	    	    	     		            cache: false,    
	    	    	    	     		            panelHeight: '150',//自动高度适合
	    	    	    	     					url:"getYear",
	    	    	    	    	     			method:"get",
	    	    	    	    	     			valueField:'id',  //返回数据中的id字段
	    	    	    	    	     			textField:'text', //返回数据中的text字段
	    	    	    	    	     			multiple:false,   //是否能选择多个
	    	    	    	    	     			panelHeight:'auto',
	    	    	    	     				})
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
		//$("#attYearMonth").datebox({editable:false,  cache: false});
		$("#year").combobox({editable:false,  cache: false});
	})
	
	function doSearch(){
		var queryCondition = {
					'factoryName' : $('#factory').combobox('getText'),
					'building':  $('#building').combobox('getText'),
					'unit': $('#unit').combobox('getText'),
					'floor': $('#floor').combobox('getText'),
					'roomNo': $('#room').combobox('getText'),
					'year': $('#year').combobox('getText')
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
			'roomNo': $('#room').combobox('getText'),
			'year': $('#year').combobox('getText')
			});
	}
	function create(){
		var row = $('#dg').datagrid('getSelections');
		if (row.length == 1){
		$('#dlg').dialog('open').dialog('setTitle','添加');
		$('#fm').form('clear');
		$('#fm').form('load',row[0]);
		url = 'addRate';
		}else{
			$.messager.show({
				title: '提示信息',
				msg: '请选择<span style="color:red">对应房间</span>再进行添加！'
			});
		}
	}
	function edit(){
		var row = $('#dg').datagrid('getSelections');
		if (row.length == 1){
				$('#dlg').dialog('open').dialog('setTitle','修改');
				$('#fm').form('clear');
				$('#fm').form('load',row[0]);
				//alert(row[0].rate.year)
				$('#fm').form('load',{
					'id':row[0].rate.id,
					'year':row[0].rate.year,
					'jan':row[0].rate.jan,
					'feb':row[0].rate.feb,
					'mar':row[0].rate.mar,
					'apr':row[0].rate.apr,
					'may':row[0].rate.may,
					'jun':row[0].rate.jun,
					'jul':row[0].rate.jul,
					'aug':row[0].rate.aug,
					'sep':row[0].rate.sep,
					'oct':row[0].rate.oct,
					'nov':row[0].rate.nov,
					'dec':row[0].rate.dec,
					});
				url = 'updateRate';		
		}else{
			$.messager.show({
				title: '提示信息',
				msg: '请选择<span style="color:red">对应房间</span>再进行修改！'
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
		var rows = $('#dg').datagrid('getSelections');
		var ids = [];
		if (rows.length > 0){
			$.messager.confirm('提示信息','确定删除?',function(r){
				if (r){
					for ( var i = 0; i < rows.length; i++) {
						ids.push(rows[i].roomId);
					}
					$.ajax({
						url : 'deleteRate',
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
	</script>
	<script>
	$(function() {

			   $('#attYearMonth').datebox({
			       //显示日趋选择对象后再触发弹出月份层的事件，初始化时没有生成月份层
			       onShowPanel: function () {
			          //触发click事件弹出月份层
			          span.trigger('click'); 
			          if (!tds)
			            //延时触发获取月份对象，因为上面的事件触发和对象生成有时间间隔
			            setTimeout(function() { 
			                tds = p.find('div.calendar-menu-month-inner td');
			                tds.click(function(e) {
			                   //禁止冒泡执行easyui给月份绑定的事件
			                   e.stopPropagation(); 
			                   //得到年份
			                   var year = /\d{4}/.exec(span.html())[0] ,
			                   //月份
			                   //之前是这样的month = parseInt($(this).attr('abbr'), 10) + 1; 
			                   month = parseInt($(this).attr('abbr'), 10);  

			         //隐藏日期对象                     
			         $('#attYearMonth').datebox('hidePanel') 
			           //设置日期的值
			           .datebox('setValue', year + '-' + month); 
			                        });
			                    }, 0);
			            },
			            //配置parser，返回选择的日期
			            parser: function (s) {
			                if (!s) return new Date();
			                var arr = s.split('-');
			                return new Date(parseInt(arr[0], 10), parseInt(arr[1], 10) - 1, 1);
			            },
			            //配置formatter，只返回年月 之前是这样的d.getFullYear() + '-' +(d.getMonth()); 
			            formatter: function (d) { 
			                var currentMonth = (d.getMonth()+1);
			                var currentMonthStr = currentMonth < 10 ? ('0' + currentMonth) : (currentMonth + '');
			                return d.getFullYear() + '-' + currentMonthStr; 
			            }
			        });

			        //日期选择对象
			        var p = $('#attYearMonth').datebox('panel'), 
			        //日期选择对象中月份
			        tds = false, 
			        //显示月份层的触发控件
			        span = p.find('span.calendar-text'); 
			        var curr_time = new Date();

			        //设置前当月
			        $("#attYearMonth").datebox("setValue", myformatter(curr_time));
			});
		//格式化日期
		function myformatter(date) {
		    //获取年份
		    var y = date.getFullYear();
		    //获取月份
		    var m = date.getMonth() + 1;
		    return y + '-' + m;
		}
	</script>
	<script type="text/javascript">
	/*因为easyui datagrid获取formatter时是通过当前列明然后遍历columns数组对比里面的json的field配置值，
	对比成功就返回第一个出现的formatter，所以不会得到第三列的formatter，内容也就和第一列的一样了。*/
	function manageYear(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (value != null) {
			var arr = value.year;
			return arr;
		} else {
			return "";
		}
	}
	function manageID(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.id;
			return arr;
		} else {
			return "";
		}
	}
	function manageJan(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.jan;
			return arr;
		} else {
			return "";
		}
	}
	function manageFeb(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.feb;
			return arr;
		} else {
			return "";
		}
	}
	function manageMar(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.mar;
			return arr;
		} else {
			return "";
		}
	}
	function manageApr(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.apr;
			return arr;
		} else {
			return "";
		}
	}
	function manageMay(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.may;
			return arr;
		} else {
			return "";
		}
	}
	function manageJun(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.jun;
			return arr;
		} else {
			return "";
		}
	}
	function manageJul(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.jul;
			return arr;
		} else {
			return "";
		}
	}
	function manageAug(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.aug;
			return arr;
		} else {
			return "";
		}
	}
	function manageSep(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.sep;
			return arr;
		} else {
			return "";
		}
	}
	function manageOct(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.oct;
			return arr;
		} else {
			return "";
		}
	}
	function manageNov(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.nov;
			return arr;
		} else {
			return "";
		}
	}
	function manageDec(value, row, index) {  //value:后台传的值;row:整行的对象;index:下标，0123.。。
		if (row.rate != null) {
			var arr = row.rate.dec;
			return arr;
		} else {
			return "";
		}
	}
	</script>
</body>
</html>