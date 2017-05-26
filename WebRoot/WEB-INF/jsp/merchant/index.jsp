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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sellerPage.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  </head>
  
  <body>
	<div class="header nav navbar-default">
		<div class="col-md-offset-1">
			<span class="navbar-brand">商家管理商品页</span>
		</div>
		<div class="headerA col-md-offset-10">
			<a href="${pageContext.request.contextPath}/index.action" class="navbar-brand">首页</a>
			<span class="navbar-brand">商家姓名</span>
			<a href="" class="navbar-brand">[注销]</a>
		</div>
	</div>
	<div class="content col-md-10 col-md-offset-1">
		<div class="add-goods">
			<a href="${pageContext.request.contextPath}/product_add.action" class="btn btn-danger">添加商品</a>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="col-md-2">商品图片</th>
					<th class="col-md-2">商品名称</th>
					<th class="col-md-2">商品价格</th>
					<th class="col-md-2">商品描述</th>
					<th class="col-md-2">操作</th>
				</tr>
			</thead>
			<s:iterator var="p" value="#session.mplist">
			<tr>
				<td class="col-md-2">
					<img src="${pageContext.request.contextPath}/images/<s:property value="#p.image"/>">
				</td>
				<td class="col-md-2"><s:property value="#p.pname"/></td>
				<td class="col-md-2">￥<s:property value="#p.price"/></td>
				<td class="col-md-2"><s:property value="#p.production"/></td>
				<td class="col-md-2">
					<a href="${pageContext.request.contextPath}/product_edit.action?pid=<s:property value="#p.pid"/>">编辑</a>
				<a href="${pageContext.request.contextPath}/product_delete.action?pid=<s:property value="#p.pid"/>">删除</a>
				</td>
			</tr>
			</s:iterator>
		</table>
		<!-- <div class="title">
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
		</s:iterator> -->
	</div>

</body>
</html>
