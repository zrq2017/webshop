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
    
	<title>商品详情页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script>
function saveCart(){
	document.getElementById("cartForm").action="${pageContext.request.contextPath}/product_addToCar.action";
	document.getElementById("cartForm").submit();
}

function buyNow(){
	document.getElementById("cartForm").action="${pageContext.request.contextPath}/product_buy.action";
	document.getElementById("cartForm").submit();
}
</script>

  </head>
  
  <body>
	<div class="header">
		<div class="headerA">
			<a href="${pageContext.request.contextPath}/index.action">首页</a>
		</div>
	</div>
	<div class="content">
		<div class="goods-image">
			<img src="${pageContext.request.contextPath}/images/<s:property value="#currProduct.image"/> ">
		</div>
		<div class="goods-detail">
			<div class="goods-name">
				<span><s:property value="currProduct.pname"/></span>
			</div>
			<div class="goods-price">
				<span>￥<s:property value="currProduct.price"/></span>
			</div>
			<form  id="cartForm" action="" method="post">
			<input type="hidden" name="pid" value="<s:property value="currProduct.pid"/>"/>
				<div class="goods-count">
					<button class="sub"><</button>
					<input type="text" name="number" value="1">
					<button class="add">></button>
				</div>
				<div class="goods-operate">
					<input type="submit" name="buy" value="立即购买" onclick="buyNow()">
					<input type="submit" name="addToTrolley" value="加入购物车" onclick="saveCart()">
				</div>
			</form>
		</div>
	</div>
	<div class="comment-list">
		<div class="comment">
			<div class="comment-username">
				<span>评论人姓名</span>
			</div>
			<div class="comment-detail">
				<span>评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容</span>
			</div>
		</div>
	</div>
	<div class="add-comment">
		<textarea placeholder="请写下你的评价"></textarea>
		<div class="comment-button">
			<button>提交评价</button>
		</div>
	</div>
</body>
</html>
