<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
    
<html>
<head>
<title>Home</title>
<!-- Custom Theme files -->
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Refresh" content="3;<%=path%>/index.jsp"/> <!-- 设置自动跳转 -->
<!--Google Fonts-->
<link href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>


<body>
<div class="login">
	<h2>BuySmart</h2>
	<div class="login-top">
		<h1>
		<%= request.getAttribute("loginResult")%>
		</h1>
	</div>
		<div class="login-bottom">
		<a href="<%=path%>/index.jsp">
			点击此处返回主页，或3秒之后自动返回...
		</a>
	</div>
</div>	
<div class="copyright">
	<p>Copyright &copy; 2015.Company name All rights reserved.</p>
</div>


</body>
</html>