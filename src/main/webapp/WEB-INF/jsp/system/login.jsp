<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>登录界面</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="${ctx }/static/css/login/normalize.css">
  	<link rel="stylesheet" href="${ctx }/static/css/login/style.css" media="screen" type="text/css" />
  	<!--<link rel="stylesheet" href="${ctx }/static/css/bootstrap.css"> -->
  	<link rel="stylesheet" href="${ctx }/static/css/layui.css">
	<script type="text/javascript" src="${ctx }/static/js/system/login.js"></script>
	<script type="text/javascript" src="${ctx }/static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/js/layer.js"></script>
	<script type="text/javascript" src="${ctx }/static/js/layui.js"></script>
	
</head>
<body>
	<section class="login-form-wrap">
		<h1>宿舍管理系统</h1>
		<form class="login-form" action="main" method="post" check="login" >		
			<label>  	
				<input type="text" id="username" name="username" placeholder="用户名" >
			</label>
			<label>
				<input type="password" id="password" name="password" placeholder="密码">
			</label>
			<label>
				<input type="text" id="captcha" name="captcha" placeholder="验证码">
			</label>
			<div>
		     <img style=" float:right;" title="点击更换" id="img_captcha" onclick="javascript:refreshCaptcha();" src="captchaCode">
          	</div>
          	<br/>
             <div id="errormsg" style="color: red">${msg}</div>
			<input id="login" type="button" value="登陆">
		</form>
		<br/>	
	</section>
	<div style="text-align:center;clear:both">
</div>
</body>
<script type="text/javascript">
$(function(){
	var href=location.href;  
	   if(href.indexOf("kickout")>0){  
	      // alert("您的账号在另一台设备上登录，您被挤下线，若不是您本人操作，请立即修改密码！");  
	       layer.alert("您的账号在另一台设备上登录，您被挤下线，若不是您本人操作，请立即修改密码！", {
				icon : 2,
				skin : 'layui-layer-lan',// 样式类名
				closeBtn : 1
				
			});
	   } 
	   if(href.indexOf("forcelogout")>0){  
		      // alert("您的账号在另一台设备上登录，您被挤下线，若不是您本人操作，请立即修改密码！");  
		       layer.alert("您的账号被管理员强制下线！", {
					icon : 2,
					skin : 'layui-layer-lan',// 样式类名
					closeBtn : 1
					
				});
		   } 
	   
});
$(function(){
	
});
</script>
</html>
