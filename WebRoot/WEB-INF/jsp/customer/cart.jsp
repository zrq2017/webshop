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

  </head>
  
 <body>
	<div class="header">
		<div class="headerA"><a href="${pageContext.request.contextPath}/index.action">首页</a></div>
	</div>

	<div class="content">
		<s:if test="#session.car != null">
		<div class="shoppingList">
			<div class="title">
				<div class="title-info">
					<span>商品信息</span>
				</div>
				<div class="title-price">
					<span>单价</span>
				</div>
				<div class="title-count">
					<span>数量</span>
				</div>
				<div class="title-total">
					<span>总价</span>
				</div>
				<div class="title-operate">
					<span>操作</span>
				</div>
			</div>
			<s:iterator var="c" value="#session.car"></s:iterator>
			<form action="" method="">
				<div class="goods">
					<div class="goods-image">
						<img src="${pageContext.request.contextPath}/images/<s:property value="#c.product.image"/>">
					</div>
					<div class="goods-name">
						<span><s:property value="#c.product.pname"/></span>
					</div>
					<div class="goods-price">
						<span><s:property value="#c.product.price"/>元</span>
					</div>
					<div class="goods-count">
						<button class="sub">-</button>
						<span><s:property value="#c.number"/></span>
						<button class="add">+</button>
					</div>
					<div class="goods-totalprice">
						<span><s:property value="#c.totalPrice"/>元</span>
					</div>
					<div class="goods-operate">
						<submit href="">购买</submit>
						<submit href="">删除</submit>
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
