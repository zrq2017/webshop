<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shoppingTrolley.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  </head>
  
 <body>
	<div class="header navbar navbar-default">
		<div class="headerA"><a href="${pageContext.request.contextPath}/index.action" class="navbar-brand">首页</a></div>
		<a href="" class="navbar-brand">用户名</a>
	</div>

	<div class="content col-md-6 col-md-offset-2">
		<s:if test="#session.car != null">
		<div class="shoppingList">
			<div class="title">
				<div class="title-info title_table col-md-4">
					<span>商品信息</span>
				</div>
				<div class="title-price title_table col-md-2">
					<span>单价</span>
				</div>
				<div class="title-count title_table col-md-2">
					<span>数量</span>
				</div>
				<div class="title-total title_table col-md-2">
					<span>总价</span>
				</div>
				<div class="title-operate title_table col-md-2">
					<span>操作</span>
				</div>
			</div>
			<s:iterator var="c" value="#session.car"></s:iterator>
			<form action="" method="">
				<div class="goods">
					<div class="goods-image goods_table col-md-2">
						<img src="${pageContext.request.contextPath}/images/<s:property value="#c.product.image"/>">
					</div>
					<div class="goods-name goods_table col-md-2">
						<span><s:property value="#c.product.pname"/></span>
					</div>
					<div class="goods-price goods_table col-md-2">
						<span><s:property value="#c.product.price"/>元</span>
					</div>
					<div class="goods-count goods_table col-md-2">
						<button class="sub btn btn-default">-</button>
						<span></span>
						<input id="count" type="text" name="number" value="<s:property value="#c.number"/>">
						<button class="add btn btn-default">+</button>
					</div>
					<div class="goods-totalprice goods_table col-md-2">
						<span><s:property value="#c.totalPrice"/>元</span>
					</div>
					<div class="goods-operate goods_table col-md-2">
						<input type="submit" name="" class="btn btn-danger" value="购买">
						<a href="">删除</a>
					</div>
				</div>
			</form>
		</div>
		</s:if>
		<s:else>
			<div>购物车为空</div>
		</s:else>
	</div>
</body>
</html>
