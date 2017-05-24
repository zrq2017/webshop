<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"%>
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
			<a href="">添加商品</a>
		</div>
		<div class="title">
			<div class="title-info">
				<span>商品信息</span>
			</div>
			<div class="title-operate">
				<span>操作</span>
			</div>
		</div>
		<div class="goods-list">
			<div class="goods-imgae">
				<img src="">
			</div>
			<div class="goods-name">
				<span>商品名称</span>
			</div>
			<div class="goods-price">
				<span>￥100</span>
			</div>
			<div class="goods-introduction">
				<span>商品描述商品描述商品描述商品描述商品描述商品描述商品描述商品描述商品描述商品描述</span>
			</div>
			<div class="goods-operate">
				<a href="">编辑</a>
				<a href="">删除</a>
			</div>
		</div>
	</div>

</body>
</html>
