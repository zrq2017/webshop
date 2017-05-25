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

  </head>
  
  <body>
	<div class="header">
		<div class="headerA">
			<a href="${pageContext.request.contextPath}/user_merchant.action"">返回</a>
		</div>
	</div>
	<s:if test="editProduct!=null">
		<div class="content">
		<form action="${pageContext.request.contextPath}/product_save.action" method="post">
			<input type="text" name="pname" placeholder="请输入商品名称" value="<s:property value="editProduct.pname"/>">
			<input type="text" name="price" placeholder="请输入商品价格" value="<s:property value="editProduct.price"/>">
			<input type="text" name="production" placeholder="请输入商品的描述" value="<s:property value="editProduct.production"/>">
			<img src="${pageContext.request.contextPath}/images/<s:property value="editProduct.images"/>">
			<input type="file" name="image">
			<input type="hidden" name="user_id" value="<s:property value="#session.currUser.uid"/>"/>
			<input type="hidden" name="pid" value="<s:property value="editProduct.pid"/>"/>
			<button class="save" type="submit">保存</button>
		</form>
	</div>
	</s:if>
	<s:else>
		<div class="content">
		<form action="${pageContext.request.contextPath}/product_save.action" method="post">
			<input type="text" name="pname" placeholder="请输入商品名称">
			<input type="text" name="price" placeholder="请输入商品价格">
			<input type="text" name="production" placeholder="请输入商品的描述">
			<input type="file" name="image">
			<input type="hidden" name="user_id" value="<s:property value="#session.currUser.uid"/>"/>
			<button class="save" type="submit">保存</button>
		</form>
	</div>
	</s:else>
</body>
</html>
