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
    
    <title>商城首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  </head>

<body>
	<div class="header navbar navbar-default">
		<s:if test="#session.currUser == null">
		<div class="noLogged">
			<div class="noLogged-a">
				<a href="${pageContext.request.contextPath}/index_login.action" class="navbar-brand">登录</a>
				<a href="${pageContext.request.contextPath}/index_regist.action"  class="navbar-brand">我要开店</a>
			</div>
		</div>
		</s:if>
		<s:else>
		<div class="logged col-md-offset-10">
			<a href="" class="navbar-brand">首页</a>
			<span class="navbar-brand"><s:property value="#session.currUser.username"/></span>
			<a href=""  class="navbar-brand">[注销]</a>
			<a href="${pageContext.request.contextPath}/product_showCart.action"  class="navbar-brand">购物车</a>
		</div>
		</s:else>
		<!-- 商家登录 -->
		<div class="logged col-md-offset-10">
			<a class="navbar-brand" href="">首页</a>
			<a class="navbar-brand">商家名</a>
		</div>
		<!-- 管理员登录 -->
		<div class="logged col-md-offset-10">
			<a class="navbar-brand" href="">首页</a>
			<a class="navbar-brand">管理员名</a>
		</div>
	</div>
	<div class="content col-md-10 col-md-offset-1">
		<div class="goodsList col-md-12 row">
		<s:iterator var="p" value="#session.plist">
			<div class="goods col-md-2">
				<div class="goodsImage">
					<img src="${pageContext.request.contextPath}/images/<s:property value="#p.image"/>">
				</div>
				<div class="goodsInfo">
					<div class="goodsName"><a href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid"/>"><s:property value="#p.pname"/></a></div>
					<div class="goodsPrice"><span><s:property value="#p.price"/>元</span></div>
				</div>
				<form action="" method="">
				<input type="hidden" name="pid" value="<s:property value="currProduct.pid"/>">
				<div class="goodsOperate">
					<input type="submit" name="" class="addToCar btn btn-warning" value="加入购物车" onclick="buyNow()">
					<input type="submit" class="buy btn btn-danger" value="购买" onclick="saveCart()">
				</div>
				</form>
			</div>
			</s:iterator>
		</div>
	</div>
</body>
</html>
