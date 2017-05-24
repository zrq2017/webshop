<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/loginAndSign.css">

  </head>
  
  <body>
	<div class="header">
		<!-- 返回到首页 -->
		<div class="headerA"><a href="${pageContext.request.contextPath}/index.action"">首页</a></div>
	</div>
	<div class="content">
		<div class="content-left">
			<img class="left-img" src="">
		</div>
		<div class="content-right">
			<div class="right-con">
				<div class="con-select">
					<a class="select-login">登录</a>
					<a class="select-sign">注册</a>
				</div>
				<div id="login" class="login-gb">
					<form action="${pageContext.request.contextPath}/user_login.action" method="post">
						<span><s:actionerror/></span>
						<input type="text" name="username" placeholder="账号">
						<input type="password" name="password" placeholder="密码">
						<input type="submit" name="login" value="登录">
					</form>
				</div>
				<div id="sign" class="sign-gn">
					<form action="${pageContext.request.contextPath}/user_regist.action" method="post">
						<span>该账号名已被注册</span>
						<input type="text" name="username" placeholder="请输入账号">
						<input type="password" name="password" placeholder="请输入密码">
						<span>与第一次输入的密码不同</span>
						<input type="password" name="repassword" placeholder="请重复输入该密码">
						<input type="submit" name="regist" value="注册">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/loginAndSign.js"></script>
</html>
