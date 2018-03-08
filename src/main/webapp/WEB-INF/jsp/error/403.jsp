<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>403</title>
</head>
<body>
<H2>警告！！当前未登录！请先登陆。将在3秒之后跳转</H2>
</body>
<script type="text/javascript">
	    //判断如果当前页面不为主框架，则将主框架进行跳转
	  	var tagert_URL = "<%=request.getContextPath()%>/login";
	    if(self==top){
	    	setInterval(function(){
	    		window.location.href = tagert_URL;
	    	}, 3000);
	    	//window.location.href = tagert_URL;
	    }else{
			setInterval(function(){
				top.location.href = tagert_URL;
	    	}, 3000);
	    	//top.location.href = tagert_URL;
	    }
</script>
</html>