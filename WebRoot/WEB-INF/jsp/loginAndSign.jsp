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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/loginAndSign.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  </head>
  
  <body>
	<div class="header navbar navbar-default">
		<!-- 返回到首页 -->
		<div class="headerA col-md-offset-10"><a href="${pageContext.request.contextPath}/index.action" class="navbar-brand">首页</a></div>
	</div>
	<div class="content col-md-6 col-md-offset-3">
		<div class="content-left col-md-8">
			<img class="left-img" src="">
		</div>
		<div class="content-right col-md-4">
			<div class="right-con">
				<ul class="con-select nav nav-tabs">
					<li class="active"><a class="select-login">登录</a></li>
					<li><a class="select-sign">注册</a></li>
				</ul>
				<div id="login" class="login-gb">
					<form action="${pageContext.request.contextPath}/user_login.action" method="post">
						<span><s:actionerror/></span>
						<div class="form-group">
							<label for="username">账号</label>
							<input id="username" type="text" name="username" placeholder="账号" class="form-control">
						</div>
						<div class="form-group">
							<label for="login_password">密码</label>
							<input id="login_password" type="password" name="password" placeholder="密码" class="form-control">
							<p class="error hidden">账号或密码错误</p>
						</div>
						<input type="button" name="" value="登录" class="btn btn-success col-md-offset-8">
					</form>
				</div>
				<div id="sign" class="sign-gn">
					<form action="${pageContext.request.contextPath}/user_regist.action" method="post">
						<div class="form-group">
							<label for="username"></label>
							<input id="username" type="text" name="username" placeholder="请输入账号" class="form-control">
							<p class="error hidden">该账号名已被注册</p>
						</div>
						<div class="form-group">
							<label for="sign_password"></label>
							<input id="sign_password" type="password" name="password" placeholder="请输入密码" class="form-control">
						</div>
						<div class="form-group">
							<label for="repassword"></label>
							<input id="repassword" type="password" name="repassword" placeholder="请重复输入该密码" class="form-control">
							<p class="error hidden">与第一次输入的密码不同</p>
						</div>
						<input type="button" name="" value="注册" class="btn btn-success col-md-offset-8">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/loginAndSign.js"></script>
</html>
