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
    
    <title>管理员页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/managerPage.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  </head>
<body>
	<div class="header navbar navbar-default">
		<div class="col-md-offset-1">
			<span class="navbar-brand">管理员管理页面</span>
		</div>
		<div class="col-md-offset-10">
			<a href="${pageContext.request.contextPath}/index.action" class="navbar-brand">首页</a>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/user_admin.action"><s:property value="#session.currUser.username"/></a>
			<a href="${pageContext.request.contextPath}/index_logout.action" class="navbar-brand">[注销]</a>
		</div>
	</div>

	<div class="content col-md-10 col-md-offset-1">
		<ul class="select nav nav-tabs">
			<li class="active"><a class="select-seller">商家管理</a></li>
			<li><a class="select-vip">会员管理</a></li>
		</ul>

		<div id="sellerManage" class="seller_gb">
		<s:if test="#session.nmlist!=null">
			<div class="unseller-list">
				<h1>未审核商家列表</h1>
				<table class="unseller table table-hover">
					<thead>
						<tr>
							<th class="col-md-3">商家名称</th>
							<th class="col-md-3">商家类别</th>
							<th class="col-md-3">操作</th>
						</tr>
					</thead>
					<s:iterator var="m" value="#session.nmlist">
					<tr>
						<td class="col-md-3"><s:property value="#m.username"/></td>
						<td class="col-md-3">leibie</td>
						<td class="col-md-3">
							<a class="unseller-pass" href="${pageContext.request.contextPath}/admin_pass.action?uid=<s:property value="#m.uid"/>">通过审核</a>
							<a class="unseller-reject" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#m.uid"/>">拒绝申请</a>
						</td>
					</tr>
					</s:iterator>
				</table>
			<!-- <s:iterator var="m" value="#session.nmlist">

				<div class="unseller">
					<div class="unseller-name"><span><s:property value="#m.username"/></span></div>
					<div class="unseller-type"><span>商家类别</span></div>
					<div class="unseller-button">
						<a class="unseller-pass" href="${pageContext.request.contextPath}/admin_pass.action?uid=<s:property value="#m.uid"/>">通过审核</a>
						<a class="unseller-reject" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#m.uid"/>">拒绝申请</a>
					</div>
				</div>
			</s:iterator> -->
			</div>
		</s:if>
		<s:if test="#session.mlist!=null">
			<div class="seller-list">
			<h1>已审核商家列表</h1>
				<table class="seller table table-hover">
					<thead>
						<tr>
							<th class="col-md-3">商家名称</th>
							<th class="col-md-3">商家类别</th>
							<th class="col-md-3">操作</th>
						</tr>
					</thead>
					<s:iterator var="m" value="#session.mlist">
					<tr>
						<td class="col-md-3"><s:property value="#m.username"/></td>
						<td class="col-md-3">leibie</td>
						<td class="col-md-3">
							<a class="seller-delete" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#m.uid"/>">删除该商家</a>
						</td>
					</tr>
					</s:iterator>
				</table>
				<!-- <div class="seller">
					<div class="seller-name"><span><s:property value="#m.username"/></span></div>
					<div class="seller-type"><span>商家类别</span></div>
					<div class="seller-button">
						<a class="seller-delete" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#m.uid"/>">删除该商家</a>
					</div>
				</div> -->
			</div>
			</s:if>
		</div>

		<div class="vipManage  class="vip_gn"">
			<div class="vip-list">
				<h1>会员列表</h1>
				<table class="unvip table table-hover">
					<thead>
						<tr>
							<th class="col-md-3">会员账号</th>
							<th class="col-md-3">会员密码</th>
							<th class="col-md-3">操作</th>
						</tr>
					</thead>
					<s:iterator var="c" value="#session.clist">
					<tr>
						<td class="col-md-3"><s:property value="#c.username"/></td>
						<td class="col-md-3"><s:property value="#c.password"/></td>
						<td class="col-md-3">
							<a class="vip-delete" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#c.uid"/>">删除该会员</a>
						</td>
					</tr>
					</s:iterator>
				</table>
					<!-- <div class="vip">
						<div class="vip-name"><span><s:property value="#c.username"/></span></div>
						<div class="vip-account"><s:property value="#c.password"/></div>
						<div class="vip-button">
							<a class="vip-delete" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#c.uid"/>">删除该会员</a>
						</div>
					</div> -->
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/managerPage.js"></script>
</html>
