<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta HTTP-EQUIV="pragma" CONTENT="no-cache"> 
	<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
	<meta HTTP-EQUIV="expires" CONTENT="0"> 
	<title>home</title>
	
</head>
<body  class="easyui-layout">

<!-- 顶部-->
<div region="north" border="false" title="" style="BACKGROUND: #A8D7E9; height: 50px; padding: 1px; overflow: hidden;">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td align="left" style="vertical-align: text-bottom"><img src="${ctx}/static/image/common/name.png">
		</td>
		<td align="right" nowrap>
		<table border="0" cellpadding="0" cellspacing="0">
			<tr style="height: 25px;" align="right">
				<td style="" colspan="2">
				<div style="background: url(${ctx}/static/image/common/top_bg.jpg) no-repeat right center; float: right;">
				<div style="float: left; line-height: 25px; margin-left: 70px;">				
				<shiro:guest><a href="#" class="easyui-linkbutton add" iconCls="icon-add" onclick="openTab('用户登录','login')" plain="true">登录</a></shiro:guest>
				<shiro:user><span style="color: #FFFFFF"><shiro:principal></shiro:principal></span></shiro:user>&nbsp;&nbsp;&nbsp;&nbsp;</div>
				<div style="float: left; margin-left: 18px;">
				<div style="right: 0px; bottom: 0px;"><a href="javascript:void(0);" class="easyui-menubutton" menu="#layout_north_zxMenu" iconCls="icon-exit" style="color: #FFFFFF">设置</a></div>
				<div id="layout_north_zxMenu" style="width: 100px; display: none;">
					<div class="menu-sep"></div>
					<div onclick="pwd();">修改密码</div>
					<div onclick="exit('logout','确定退出该系统吗 ?');">退出系统</div>					
				</div>	
				</div>
				</div>
				</td>
			</tr>
			<tr style="height: 80px;">
				<td colspan="2">
				<ul class="shortcut">
					<!-- 动态生成并赋值过来 -->
					${msg }
				</ul>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</div>
	
	<div data-options="region:'west',split:true,title:'导航菜单'" style="width:150px;padding:0px;">
	<div class="easyui-accordion" style="width:100%;height:100%;">
		<div title="信息管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:0px;">
		<ul id="subMenus" class="easyui-tree" 
			data-options="onClick: function(node){
						openTab(node.text, node.attributes.href);
						}">
						<li>						
				<span>信息管理</span>
				<ul>
					
					<li data-options="attributes:{'href':'buss?url=employee'}">
						<span>员工管理</span>
					</li>
					<li data-options="attributes:{'href':'buss?url=room'}">
						<span>宿舍管理</span>
					</li>
					<li data-options="attributes:{'href':'buss?url=dorm'}">
						<span>住宿管理</span>
					</li>
					<!--<li data-options="attributes:{'href':'buss?url=history'}">
						<span>住宿历史</span>
					</li>-->
					<li data-options="attributes:{'href':'buss?url=rate'}">
						<span>水电管理</span>
					</li>
					<li data-options="attributes:{'href':'buss?url=network'}">
						<span>网络管理</span>
					</li>
					<li data-options="attributes:{'href':'buss?url=repair'}">
						<span>维修管理</span>
					</li>
					<!--<li data-options="attributes:{'href':'buss?url=details'}">
						<span>访客管理</span>
					</li>	-->				
				</ul>
			</li>
			
		</ul>
		</div>
		<div title="系统管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:0px;">
		<ul id="subMenus" class="easyui-tree" 
			data-options="onClick: function(node){
						openTab(node.text, node.attributes.href);
						}">
						<li>						
				<span>系统管理</span>
				<ul>										
					<li data-options="attributes:{'href':'BaseController.do?url=user'}">用户管理</li>
					<li data-options="attributes:{'href':'BaseController.do?url=role'}">角色管理</li>
					<li data-options="attributes:{'href':'BaseController.do?url=permission'}">权限管理</li>
					<li data-options="attributes:{'href':'getSessionList'}">会话管理</li>								
														
				</ul>
			</li>
			
		</ul>
		</div>
		<div title="其他功能" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:0px;">
		<ul id="subMenus" class="easyui-tree" 
			data-options="onClick: function(node){
						openTab(node.text, node.attributes.href);
						}">
						<li>						
				<span>其他功能</span>
				<ul>										
				<li data-options="attributes:{'href':'index'}" iconCls='icon-pencil'>首页</li>	
				<li iconCls='icon-search' data-options="attributes:{'href':'http://127.0.0.1'}">查看日志</li>	
				<li data-options="attributes:{'href':'getSessionList'}" iconCls='icon-edit'>发布公告</li>
		
				</ul>
			</li>
			
		</ul>
			
		</div>
	</div>
	</div>
	
	 <div data-options="region:'east',split:true,collapsed:true,title:'小工具'" style="width:280px;padding:10px;">
	 	<div class="easyui-calendar" style="width:250px;height:250px;"></div>
	 	
	 </div>
	
	
	<div data-options="region:'center',title:'首页'">
		<div id="main-tabs" class="easyui-tabs" data-options="fit:true,border:false,plain:true">
			<div class="easyui-tab" data-options="iconCls:'icon-ok',closable:true" title="首页" href="index" style="padding: 2px; overflow: hidden;"></div>
		</div>
	</div>
	<a href="${pageContext.request.contextPath}/admin/logout"><i class="icon-key"></i> Log Out</a>
	
	<!-- 底部 -->
	<div region="south" border="false" style="height: 25px; overflow: hidden;">
	<div align="center" style="color: #CC99FF; padding-top: 2px">&copy; 版权所有 <span class="tip"><a href="http://www.hdnylon.com/" title=" XX有限公司"> 华鼎锦纶有限公司</a>  </span></div>
</div>
<div id="mm" class="easyui-menu" style="width:150px;">
		<div id="mm-tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseall">全部关闭</div>
		<div id="mm-tabcloseother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-exit">退出</div>
	</div>
	<div id="dlg" class="easyui-dialog" title="数据参数" data-options="modal:true" style="width: 430px; height: 430px;padding:10px; top:20%; left:37%;" closed="true" buttons="#dlg-buttons">
		<form method="get" id="fm">
			<table cellpadding="4">				
	    		<tr>
	    			<td>原始密码</td>
	    			<td><input class="easyui-textbox" type="password" id="oldpwd" type="text" name="oldpwd"  required="true" missingMessage="必须填写" ></input>
	    			</td>
	    			
	    		</tr>	   
	    		<tr>
	    			<td>更新密码</td>
	    			<td><input class="easyui-textbox" type="password" id="pwd" editable="true" maxlength="20" type="text" name="pwd" required="false"  missingMessage="新密码必须填写"></input></td>
	    		</tr>
	    		<tr>
	    			<td>确认密码</td>
	    			<td><input class="easyui-textbox" type="password" id="repwd" maxlength="15" type="text" name="repwd"  required="true" missingMessage="必须填写"></input></td>
	    		</tr>	    				
	    	</table>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton  save" onclick="save()" iconCls="icon-ok">保存</a> 
		<a href="#" class="easyui-linkbutton cancel" onclick="javascript:$('#dlg').dialog('close')" iconCls="icon-cancel">取消</a>
	</div>
</body>
	<script type="text/javascript">
	

		$(document).ready(function() {
			$('#main-tabs').bind('contextmenu',function(e){
				e.preventDefault();
				$('#mm').menu('show', {
					left: e.pageX,
					top: e.pageY
				});
			});
			tabCloseEven();
		})
		function menuHandler(item){
			$('#main-tabs').prepend('<p>Click Item: '+item.name+'</p>');
		}
		
		
		function openTab(title, url) {
			if("/" != url){
				var mainTabs = $("#main-tabs");
				if (mainTabs.tabs('exists', title)) {
					mainTabs.tabs('select', title);
					var iframeContext = mainTabs.tabs('getTab', title).find("iframe");
					if(iframeContext){
						iframeContext[0].src = url
					} 
				} else {
					mainTabs.tabs('add', {
						title : title,
						content : createFrame(url),
						closable : true
					});
				}
			}

		}

		function createFrame(url) {
			var s = '<iframe name="mainFrame" scrolling="auto" frameborder="no" border="0" marginwidth="0" marginheight="0"  allowtransparency="yes" src="'
					+ url + '" style="width:100%;height:99%;"></iframe>';
			return s;
		}
		
		function exit(url,msg){
			$.messager.confirm('提示信息',msg,function(r){
				if (r){
					$.ajax({
						url : url,
						type : 'get',						
						cache : false,
						success : function(result) {							
							$.messager.alert('提示信息',result,'info');	
							setInterval(function(){
								window.location.href="/login";
							}, 2000);
							}
						
					});
				}
			})
		}

		function tabCloseEven()
		{
			//刷新
			$('#mm-tabupdate').click(function(){
				var currTab = $('#main-tabs').tabs('getSelected');
				var url = $(currTab.panel('options').content).attr('src');
				$('#tabs').tabs('update',{
					tab:currTab,
					options:{
						content:createFrame(url)
					}
				})
			})
			//关闭当前
			$('#mm-tabclose').click(function(){
				var currtab_title = $('#mm').data("currtab");
				$('#main-tabs').tabs('close',currtab_title);
			})
			//全部关闭
			$('#mm-tabcloseall').click(function(){
				$('.tabs-inner span').each(function(i,n){
					var t = $(n).text();
					$('#main-tabs').tabs('close',t);
				});
			});
			//关闭除当前之外的TAB
			$('#mm-tabcloseother').click(function(){
				$('#mm-tabcloseright').click();
				$('#mm-tabcloseleft').click();
			});
			//关闭当前右侧的TAB
			$('#mm-tabcloseright').click(function(){
				var nextall = $('.tabs-selected').nextAll();
				if(nextall.length==0){
					//msgShow('系统提示','后边没有啦~~','error');
					alert('后边没有啦~~');
					return false;
				}
				nextall.each(function(i,n){
					var t=$('a:eq(0) span',$(n)).text();
					$('#main-tabs').tabs('close',t);
				});
				return false;
			});
			//关闭当前左侧的TAB
			$('#mm-tabcloseleft').click(function(){
				var prevall = $('.tabs-selected').prevAll();
				if(prevall.length==0){
					alert('到头了，前边没有啦~~');
					return false;
				}
				prevall.each(function(i,n){
					var t=$('a:eq(0) span',$(n)).text();
					$('#main-tabs').tabs('close',t);
				});
				return false;
			});

			//退出
			$("#mm-exit").click(function(){
				$('#mm').menu('hide');
			})
		}
		
		function pwd(){
			$('#dlg').dialog('open').dialog('setTitle','修改密码');
			$('#fm').form('clear');
			url = 'resetPwd';
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
	</script>
</html>