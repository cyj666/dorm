<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="../system/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>员工</title>
</head>
<style type="text/css">
ul {
	list-style: none; /* 去掉ul前面的符号 */
	margin: 0px; /* 与外界元素的距离为0 */
	padding: 0px; /* 与内部元素的距离为0 */
	width: auto; /* 宽度根据元素内容调整 */
}
/* 所有class为menu的div中的ul中的li样式 */
ul li {
	float: left; /* 向左漂移，将竖排变为横排 */
}

li {
	margin:5px;
	border: 1px solid gray;
}
span {
	width:40px;
	height: 10px;
	//padding: 5px;
	//margin:5px;
	//border: 1px solid gray;
	display: inline-block;
}
</style>
<body>

	<ul class="">
		<li><a href="#" class="item"> <img onclick="create(title)"
				height="200" width="200" alt="宿舍"
				src="http://192.168.1.192/png/factory.png" title="华一 ">
		</a>
			<p>华一</p></li>
		<li><a href="#" class="item"> <img onclick="create(title)"
				height="200" width="200" alt="宿舍"
				src="http://192.168.1.192/png/factory.png" title="二分厂">
		</a>
			<p>二分厂</p></li>
		<li><a href="#" class="item"> <img onclick="create(title)"
				height="200" width="200" alt="宿舍"
				src="http://192.168.1.192/png/factory.png" title="华二">
		</a>
			<p>华二</p></li>
		<li><a href="#" class="item"> <img onclick="create(title)"
				height="200" width="200" alt="宿舍"
				src="http://192.168.1.192/png/factory.png" title="华三">
		</a>
			<p>华三</p></li>
		<li><a href="#" class="item"> <img onclick="create(title)"
				height="200" width="200" alt="宿舍"
				src="http://192.168.1.192/png/factory.png" title="五州">
		</a>
			<p>五州</p></li>
	</ul>

	<div id="dlg" class="easyui-dialog" title="数据参数"
		data-options="modal:true" style="width: 95%; height: 95%;"
		closed="true" buttons="#dlg-buttons">
			<ul class="">
				<li><a href="#" class="item"> <img onclick="create2(title)"
						height="50" width="50" alt="宿舍"
						src="http://192.168.1.192/png/dorm.png" title="1号楼">
				</a>
					<p>1号楼</p></li>
					<li><a href="#" class="item"> <img onclick="create2(title)"
						height="50" width="50" alt="宿舍"
						src="http://192.168.1.192/png/dorm.png" title="2号楼">
				</a>
					<p>2号楼</p></li>
					<li><a href="#" class="item"> <img onclick="create2(title)"
						height="50" width="50" alt="宿舍"
						src="http://192.168.1.192/png/dorm.png" title="3号楼">
				</a>
					<p>3号楼</p></li>
			</ul>					
	</div>
	
	<div id="dlg2" class="easyui-dialog" title="数据参数"
		data-options="modal:true" style="width: 70%; height: 70%;"
		closed="true" buttons="#dlg-buttons">
		<div class="easyui-accordion" style="width:100%;height:100%;">
		<div title="3层" data-options="iconCls:'icon-ok'" style="padding:0px;">
			<ul class="">
				<li><span><a href="#" class="item" onclick="create3()">301</a></span></li>
				<li><span>302</span></li>
				<li><span>303</span></li>							
			</ul>
		</div>
		<div title="2层" data-options="iconCls:'icon-help'" style="padding:0px;">
			<ul class="">
				<li><span>201</span></li>
				<li><span>202</span></li>
				<li><span>203</span></li>							
			</ul>
		</div>	
		<div title="1层" data-options="iconCls:'icon-help'" style="padding:0px;">
			<ul class="">
				<li><span>101</span></li>
				<li><span>102</span></li>
				<li><span>103</span></li>							
			</ul>
		</div>				
	</div>
	</div>
	
	<div id="dlg3" class="easyui-dialog" title="数据参数"
		data-options="modal:true" style="width: 30%; height: 30%;"
		closed="true" buttons="#dlg-buttons">
				房间号：301<br>
				已住人数：2  <a>详细</a><br>
				类型：4人间  <br>
				备注：无
				  <br>
				入住  搬离<br>
	</div>
	
</body>
<script type="text/javascript">
	function create(msg) {
		$('#dlg').dialog('open').dialog('setTitle', msg);
		$('#fm').form('clear');
		url = 'addEmployee';

	}
	function create2(msg) {
		$('#dlg2').dialog('open').dialog('setTitle', msg);
		$('#fm').form('clear');
		url = 'addEmployee';

	}
	function create3() {
		$('#dlg3').dialog('open').dialog('setTitle',"XX");
		$('#fm').form('clear');
		url = 'addEmployee';

	}
</script>
</html>