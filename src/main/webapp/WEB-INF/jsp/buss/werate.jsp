<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="../system/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>水电</title>
</head>
<body>
	<table id="dg" class="" title="列表" style="width: 700px; height: 300px">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'id',width:30">系统ID</th>
				<th data-options="field:'roomNo',width:30">房间号</th>
				<th data-options="field:'date',width:30">时间</th>
				<th data-options="field:'rate',width:30">水电费</th>
				<th data-options="field:'isPay',width:30">是否缴纳</th>			
			</tr>
		</thead>
	</table>
	
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton add" iconCls="icon-add" onclick="create()" plain="true">新增</a> 
		<a href="#" class="easyui-linkbutton edit" iconCls="icon-add" onclick="create()" plain="true">导入</a>
		<a href="#" class="easyui-linkbutton edit" iconCls="icon-edit" onclick="edit()" plain="true">修改</a> 
		<a href="#" class="easyui-linkbutton remove" iconCls="icon-remove"
		 onclick="del()" plain="true">删除</a>
		<div>
			房间号: <input class="easyui-textbox" id="paramRoomNo">
			时间: <input class="easyui-datebox" id="attYearMonth" editable="false">			
			<a href="#" class="easyui-linkbutton" onclick="doSearch()" iconCls="icon-search">查找</a>
			<a href="#" class="easyui-linkbutton" onclick="doReset()" iconCls="icon-redo">重置</a>
		</div>
	</div>
	<div id="dlg" class="easyui-dialog" title="数据参数" data-options="modal:true" style="width: 400px; height: 400px;" closed="true" buttons="#dlg-buttons">
		<form method="post" id="fm">
			<table cellpadding="9">
				<tr>
					<td><input type="hidden" name="roomId" /></td>
				</tr>
				<tr>
	    			<td>房间号:</td>
	    			<td><input class="easyui-textbox" type="text" name="roomNo" maxlength="30" required="true" missingMessage="必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>时间:</td>
	    			<td><input class="easyui-datebox" editable="false" name="date" id="date"></td>
	    		</tr>
	    		<tr>
	    			<td>水电费:</td>
	    			<td><input class="easyui-textbox" type="rate" id="rate" name="rate" maxlength="30" required="true" missingMessage="必须填写"></input></td>
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
	            pageSize : 5,
	            pageList : [ 5, 10, 15, 20 ],
	            nowrap : true,
	            striped : true,
	            collapsible : true,  
	            toolbar:"#toolbar", 
	            url:'getAllRates',
	            loadMsg : '数据装载中......',  
	            singleSelect:false,
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
	            pageSize : 5,
	            pageList : [ 5, 10, 15, 20 ],
	            nowrap : true,
	            striped : true,
	            collapsible : true,  
	            toolbar:"#toolbar", 
	            url:'getRates',
	            method:"get",
	            loadMsg : '数据装载中......',  
	            singleSelect:false,
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
			url = 'addRates';
		}
		function edit(){
			var row = $('#dg').datagrid('getSelections');
			if (row.length == 1){
				$('#dlg').dialog('open').dialog('setTitle','编辑');
				$('#fm').form('clear');
				$('#fm').form('load',row[0]);
				url = 'updateRates';
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
			var queryCondition = {'roomNo':$('#paramRoomNo').val(),'date':$('#attYearMonth').val()};
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
							ids.push(rows[i].id);
						}
						$.ajax({
							url : 'deleteRates',
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
		
		//用于日期只显示到月
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
	
</body>
</html>