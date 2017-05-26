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
    
	<title>添加商品页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/addGoods.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  </head>
  
  <body>
	<div class="header  nav navbar-default">
		<div class="col-md-offset-1">
			<span class="navbar-brand">添加商品</span>
		</div>
		<div class="headerA col-md-offset-10">
			<a href="${pageContext.request.contextPath}/user_merchant.action" class="navbar-brand">返回</a>
		</div>
	</div>
	<s:if test="editProduct!=null">
		<div class="content col-md-4 col-md-offset-2">
		<form action="${pageContext.request.contextPath}/product_save.action" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="goods_name">商品名称</label>
				<input class="form-control" type="text" name="pname" placeholder="请输入商品名称" value="<s:property value="editProduct.pname"/>" >
			</div>
			<div class="form-group">
				<label for="goods_price">商品价格</label>
				<div class="goods_price">
					<span>￥</span>
					<input  class="form-control" type="text" name="price" placeholder="请输入商品价格" value="<s:property value="editProduct.price"/>">
				</div>
			</div>
			<div class="form-group">
				<label for="goods_production">商品描述</label>
				<input  class="form-control" type="text" name="production" placeholder="请输入商品的描述" value="<s:property value="editProduct.production"/>">
			</div>
			<div class="form-group">
				<label for="goods_img">商品图片</label>
				<img src="${pageContext.request.contextPath}/images/<s:property value="editProduct.image"/>">
				<input type="file" name="upload">
			</div>
			<input type="hidden" name="user_id" value="<s:property value="#session.currUser.uid"/>"/>
			<input type="hidden" name="pid" value="<s:property value="editProduct.pid"/>"/>
			<input class="save btn btn-success col-md-offset-10" type="submit" value="保存">
		</form>
	</div>
	</s:if>
	<s:else>
		<div class="content col-md-4 col-md-offset-2">
		<form action="${pageContext.request.contextPath}/product_save.action" method="post"  enctype="multipart/form-data">
			<div class="form-group">
				<label for="goods_name">商品名称</label>
				<input id="goods_name" type="text" name="pname" placeholder="请输入商品名称" class="form-control">
			</div>
			<div class="form-group">
				<label for="goods_price">商品价格</label>
				<div class="goods_price">
					<span>￥</span>
					<input type="text" name="price" placeholder="请输入商品价格" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="goods_production">商品描述</label>
				<input type="text" name="production" placeholder="请输入商品的描述" class="form-control">
			</div>
			<div class="form-group">
				<label for="goods_img">商品图片</label>
				<input id="goods_img" type="file" name="upload">
			</div>
			<input type="hidden" name="user_id" value="<s:property value="#session.currUser.uid"/>"/>
			<input class="save btn btn-success col-md-offset-10" type="submit" value="保存">
		</form>
	</div>
	</s:else>
</body>
</html>
