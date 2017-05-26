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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  </head>
<script>
function saveCart(x){
	document.getElementById("cartForm"+x).action="${pageContext.request.contextPath}/product_addToCar.action";
	document.getElementById("cartForm"+x).submit();
}

function buyNow(x){
	document.getElementById("cartForm"+x).action="${pageContext.request.contextPath}/product_buy.action";
	document.getElementById("cartForm"+x).submit();
}
</script>
<body>
	<div class="header navbar navbar-default">
		<s:if test="#session.currUser == null">
		<div class="noLogged">
			<div class="noLogged-a col-md-offset-10">
				<a href="${pageContext.request.contextPath}/index_login.action" class="navbar-brand">登录</a>
				<a href="${pageContext.request.contextPath}/index_regist.action"  class="navbar-brand">我要开店</a>
			</div>
		</div>
		</s:if>
		<s:else>
		<s:if test="#session.currUser.type == 2">
		<div class="logged col-md-offset-9">
			<a href="${pageContext.request.contextPath}/index.action" class="navbar-brand">首页</a>
			<span class="navbar-brand" ><s:property value="#session.currUser.username"/></span>
			<a href="${pageContext.request.contextPath}/index_logout.action"  class="navbar-brand">[注销]</a>
			<a href="${pageContext.request.contextPath}/product_showCart.action"  class="navbar-brand">购物车</a>
		</div>
		</s:if>
		<s:if test="#session.currUser.type == 1">
		<!-- 商家登录 -->
		<div class="logged col-md-offset-9">
			<a class="navbar-brand"  href="${pageContext.request.contextPath}/index.action">首页</a>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/user_merchant.action"><s:property value="#session.currUser.username"/></a>
			<a href="${pageContext.request.contextPath}/index_logout.action"  class="navbar-brand">[注销]</a>
		</div>
		</s:if>
		<s:if test="#session.currUser.type == 0">
		<!-- 管理员登录 -->
		<div class="logged col-md-offset-9">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/index.action">首页</a>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/user_admin.action"><s:property value="#session.currUser.username"/></a>
			<a href="${pageContext.request.contextPath}/index_logout.action"  class="navbar-brand">[注销]</a>
		</div>
		</s:if>
		</s:else>
	</div>
	<div class="content col-md-10 col-md-offset-1">
		<div class="goodsList col-md-12 row">
		<s:iterator var="p" value="#session.plist">
			<div class="goods col-md-3">
				<div class="goodsImage">
					<img src="${pageContext.request.contextPath}/images/<s:property value="#p.image"/>">
				</div>
				<div class="goodsInfo">
					<div class="goodsName"><a href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid"/>"><s:property value="#p.pname"/></a></div>
					<div class="goodsPrice"><span><s:property value="#p.price"/>元</span></div>
				</div>
				<form  id="cartForm<s:property value="#p.pid"/>" action="" method="">
				<input type="hidden" name="pid" value="<s:property value="#p.pid"/>">
				<div class="goodsOperate">
					<input type="submit" name="" class="addToCar btn btn-warning col-md-5" value="加入购物车" onclick="buyNow(<s:property value="#p.pid"/>)">
					<input type="submit" class="buy btn btn-danger col-md-3 col-md-offset-1" value="购买" onclick="saveCart(<s:property value="#p.pid"/>)">
				</div>
				</form>
			</div>
			</s:iterator>
		</div>
	</div>
</body>
</html>
