<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>商家注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<div class="header">
		<div class="headerA">
			<a href="${pageContext.request.contextPath}/index.action">首页</a>
		</div>
	</div>
	<div class="content">
		<form action="${pageContext.request.contextPath}/user_merchantRegist.action" method="post">
			<div class="login">
				<span class="accountWarning"><s:actionerror/></span>
				<input type="text" name="username" placeholder="请输入账号">
				<input type="password" name="password" placeholder="请输入密码">
				<span class="passwordWarning">与第一次输入的密码不符</span>
				<input type="password" name="repassword" placeholder="请再次输入密码">
			</div>
			<div class="login-button">
				<input type="submit" name="" value="注册">
			</div>
		</form>
	</div>
</body>
</html>
