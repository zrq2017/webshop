<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
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

  </head>

<body>
	<div class="header">
		<div class="noLogged">
			<div class="noLogged-a"><a href="${pageContext.request.contextPath}/index_login.action">登录</a></div>
		</div>
		<div class="logged">
			<div class="user"><span>用户名</span></div>
			<div class="shoppingCarA"><a href="">购物车</a></div>
		</div>
	</div>
	<div class="content">
		<div class="goodsList">
			<div class="goods">
				<div class="goodsImage">
					<img src="">
				</div>
				<div class="goodsInfo">
					<div class="goodsName"><a href="">商品名</a></div>
					<div class="goodsPrice"><span>100元</span></div>
				</div>
				<div class="goodsOperate">
					<button class="addToCar">加入购物车</button>
					<button class="buy">购买</button>
				</div>
			</div>
			<div class="goods">
				<div class="goodsImage">
					<img src="">
				</div>
				<div class="goodsInfo">
					<div class="goodsName"><a href="">商品名</a></div>
					<div class="goodsPrice"><span>100元</span></div>
				</div>
				<div class="goodsOperate">
					<button class="addToCar">加入购物车</button>
					<button class="buy">购买</button>
				</div>
			</div>
			<div class="goods">
				<div class="goodsImage">
					<img src="">
				</div>
				<div class="goodsInfo">
					<div class="goodsName"><a href="">商品名</a></div>
					<div class="goodsPrice"><span>100元</span></div>
				</div>
				<div class="goodsOperate">
					<button class="addToCar">加入购物车</button>
					<button class="buy">购买</button>
				</div>
			</div>
			<div class="goods">
				<div class="goodsImage">
					<img src="">
				</div>
				<div class="goodsInfo">
					<div class="goodsName"><a href="">商品名</a></div>
					<div class="goodsPrice"><span>100元</span></div>
				</div>
				<div class="goodsOperate">
					<button class="addToCar">加入购物车</button>
					<button class="buy">购买</button>
				</div>
			</div>
			<div class="goods">
				<div class="goodsImage">
					<img src="">
				</div>
				<div class="goodsInfo">
					<div class="goodsName"><a href="">商品名</a></div>
					<div class="goodsPrice"><span>100元</span></div>
				</div>
				<div class="goodsOperate">
					<button class="addToCar">加入购物车</button>
					<button class="buy">购买</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
