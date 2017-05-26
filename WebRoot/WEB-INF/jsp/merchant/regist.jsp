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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sellerSign.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  </head>
  
  <body>
	<div class="header navbar navbar-default">
		<div class="col-md-offset-1">
			<span class="navbar-brand">商家注册页面</span>
		</div>
		<div class="headerA col-md-offset-10">
			<a href="${pageContext.request.contextPath}/index.action">首页</a>
		</div>
	</div>
	<div class="content col-md-2 col-md-offset-1">
		<form action="${pageContext.request.contextPath}/user_merchantRegist.action" method="post">
			<div class="login">
				<div class="form-group">
					<label for="username">账号</label>
					<input id="username" type="text" name="username" placeholder="请输入账号" class="form-control">
					<p class="hidden"><s:actionerror/></p>
				</div>
				<div class="form-group">
					<label for="password">密码</label>
					<input id="password" type="password" name="username" placeholder="请输入密码" class="form-control">
				</div>
				<div class="form-group">
					<label for="repassword">重复输入密码</label>
					<input id="repassword" type="password" name="password" placeholder="请再次输入密码" class="form-control">
					<p class="hidden">与第一次输入的密码不符</p>
				</div>
			</div>
			<input type="submit" name="" value="注册" class="btn btn-success col-md-offset-8">
		</form>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sellerSign.js"></script>
</html>
