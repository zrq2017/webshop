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

  </head>
<body>
	<div class="header">
		<span>管理员用户名</span>
	</div>

	<div class="content">
		<div class="select">
			<a class="select-seller">商家管理</a>
			<a class="select-vip">会员管理</a>
		</div>

		<div class="sellerManage">
		<s:if test="#session.nmlist!=null">
			<div class="unseller-list">
			<h1>未审核商家列表</h1>
			<s:iterator var="m" value="#session.nmlist">
				<div class="unseller">
					<div class="unseller-name"><span><s:property value="#m.username"/></span></div>
					<div class="unseller-type"><span>商家类别</span></div>
					<div class="unseller-button">
						<a class="unseller-pass" href="${pageContext.request.contextPath}/admin_pass.action?uid=<s:property value="#m.uid"/>">通过审核</a>
						<a class="unseller-reject" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#m.uid"/>">拒绝申请</a>
					</div>
				</div>
			</s:iterator>
			</div>
			</s:if>
			<s:if test="#session.mlist!=null">
			<div class="seller-list">
			<h1>已审核商家列表</h1>
			<s:iterator var="m" value="#session.mlist">
				<div class="seller">
					<div class="seller-name"><span><s:property value="#m.username"/></span></div>
					<div class="seller-type"><span>商家类别</span></div>
					<div class="seller-button">
						<a class="seller-delete" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#m.uid"/>">删除该商家</a>
					</div>
				</div>
			</s:iterator>
			</div>
			</s:if>
		</div>

		<div class="vipManage">
			<div class="vip-list">
				<h1>会员列表</h1>
				<s:iterator var="c" value="#session.clist">
					<div class="vip">
						<div class="vip-name"><span><s:property value="#c.username"/></span></div>
						<div class="vip-account"><s:property value="#c.password"/></div>
						<div class="vip-button">
							<a class="vip-delete" href="${pageContext.request.contextPath}/admin_refuse.action?uid=<s:property value="#c.uid"/>">删除该会员</a>
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
</body>
</html>
