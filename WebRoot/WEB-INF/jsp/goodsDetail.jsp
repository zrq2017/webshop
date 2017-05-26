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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/goodsDetail.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
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
	<div class="header navbar navbar-default">
		<div class="headerA col-md-offset-10">
			<a href="${pageContext.request.contextPath}/index.action" class="navbar-brand">首页</a>
			<a href="" class="navbar-brand"><s:property value="#session.currUser.username"/></a>
		</div>
	</div>
	<div class="row">
		<div class="content col-md-6 col-md-offset-1">
			<div class="goods-image col-md-6">
				<img src="${pageContext.request.contextPath}/images/<s:property value="currProduct.image"/>" id="goodsImg"/>
			</div>
			<div class="goods-detail col-md-6">
				<div class="goods-name">
					<span><s:property value="currProduct.pname"/></span>
				</div>
				<div class="goods-price">
					<span>￥<s:property value="currProduct.price"/></span>
				</div>
				<form  id="cartForm" action="" method="post">
				<input type="hidden" name="pid" value="<s:property value="currProduct.pid"/>"/>
					<div class="goods-count">
						<input class="sub btn btn-default" value="<"/>
						<input type="text" name="number" value="1">
						<input class="add btn btn-default" value=">"/>
					</div>
					<div class="goods-operate">
						<input type="submit" name="buy" value="立即购买" onclick="buyNow()" class="col-md-4 btn btn-danger">
						<input type="submit" name="addToTrolley" value="加入购物车" onclick="saveCart()" class="col-md-4 col-md-offset-1 btn btn-warning">
					</div>
				</form>
			</div>
		</div>
		<div class="comments col-md-10 col-md-offset-1">
			<div class="comment-list col-md-10">
			<s:iterator var="pc" value="currProductComment">
				<div class="comment">
					<div class="comment-username">
						<span><s:property value="#pc.user.username"/></span>
					</div>
					<div class="comment-detail bg-warning">
						<span><s:property value="#pc.remark"/></span>
					</div>
				</div>
			</s:iterator>
			</div>
			<div class="add-comment col-md-7">
			<form action="${pageContext.request.contextPath}/user_addComment.action" method="post">
				<input type="hidden" name="pid" value="<s:property value="currProduct.pid"/>">
				<input type="hidden" name="uid" value="<s:property value="#session.currUser.uid"/>">
				<textarea placeholder="请写下你的评价" name="remark"></textarea>
				<div class="comment-button">
					<input type="submit" class="col-md-offset-10 btn btn-info" value="提交评价"/>
				</div>
			</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/goodsDetail.js"></script>
</html>
