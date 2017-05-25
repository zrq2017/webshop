<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的店铺</title>
    
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
		<div class="add-goods">
			<a href="${pageContext.request.contextPath}/product_add.action">添加商品</a>
		</div>
		<div class="title">
			<div class="title-info">
				<span>商品信息</span>
			</div>
			<div class="title-operate">
				<span>操作</span>
			</div>
		</div>
		<s:iterator var="p" value="#session.mplist">
		<div class="goods-list">
			<div class="goods-imgae">
				<img src="${pageContext.request.contextPath}/images/<s:property value="#p.image"/>">
			</div>
			<div class="goods-name">
				<span><s:property value="#p.pname"/></span>
			</div>
			<div class="goods-price">
				<span>￥<s:property value="#p.price"/></span>
			</div>
			<div class="goods-introduction">
				<span><s:property value="#p.production"/></span>
			</div>
			<div class="goods-operate">
				<a href="${pageContext.request.contextPath}/product_edit.action?pid=<s:property value="#p.pid"/>">编辑</a>
				<a href="${pageContext.request.contextPath}/product_delete.action?pid=<s:property value="#p.pid"/>">删除</a>
			</div>
		</div>
		</s:iterator>
	</div>

</body>
</html>
