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

  </head>

<body>
	<div class="header">
		<s:if test="#session.currUser == null">
		<div class="noLogged">
			<div class="noLogged-a">
				<a href="${pageContext.request.contextPath}/index_login.action">登录</a>
				<a href="${pageContext.request.contextPath}/index_regist.action">我要开店</a>
			</div>
		</div>
		</s:if>
		<s:else>
		<div class="logged">
			<div class="user"><span><s:property value="#session.currUser.username"/></span></div>
			<div class="shoppingCarA"><a href="${pageContext.request.contextPath}/product_showCart.action">购物车</a></div>
		</div>
		</s:else>
	</div>
	<div class="content">
		<div class="goodsList">
		<s:iterator var="p" value="#session.plist">
			<div class="goods">
				<div class="goodsImage">
					<img src="${pageContext.request.contextPath}/images/<s:property value="#p.image"/>">
				</div>
				<div class="goodsInfo">
					<div class="goodsName"><a href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid"/>"><s:property value="#p.pname"/></a></div>
					<div class="goodsPrice"><span><s:property value="#p.price"/>元</span></div>
				</div>
				<div class="goodsOperate">
					<button class="addToCar">加入购物车</button>
					<button class="buy">购买</button>
				</div>
			</div>
			</s:iterator>
		</div>
	</div>
</body>
</html>
