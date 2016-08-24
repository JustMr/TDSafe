<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TDsafe-登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/style-clear.css">
	<script type="text/javascript" src="js/js-bbs01.js"></script>
  </head>
  <body>
    <div class="container">
  		<!-- 头部 -->
  		<jsp:include page="bbs/header.jsp"></jsp:include>
  		<!-- 登录框 -->
  		<div id="contain_mid">
  			<div id="contain_mid_login">
  				<img alt="TDSafe-网络安全" src="images/TDsafe01.jpg">
  				<div id="loginbox">
  					<div id="loginbox_mid">
  						<h1>登录到TDSafe论坛</h1>
						<div id="reg">
							<a href="register.jsp" >立即注册</a>
						</div>
						<div class="clear"></div>
						<form action="" method="post" onsubmit="return logincheck();">
							<div class="login_row login_row_text">
								<label id="login_lab_user" class="login_lab"></label>
								<input id="loginname" class="itext" type="text" name="username" tabindex="1" autocomplete="off"
								placeholder="邮箱/用户名/已验证手机">
							</div>
							<div class="login_row login_row_text">
								<label id="login_lab_pwd" class="login_lab"></label>
								<input id="signpwd" class="itext" type="password" name="password" tabindex="2" autocomplete="off"
								placeholder="密码">
							</div>
							<div class="login_row">
								<input id="autologin" type="checkbox" name="autologin" tabindex="3">
								<label>自动登录</label>
								<span id="spanfor"><a target="_blank">忘记密码？</a></span>
							</div>
							<div class="login_row">
								<input id="loginbut" type="submit" name="login_sub" value="登       录" tabindex="4">
							</div>
							<div id="meserror">
								<ul id="meserrorul">
								</ul>
							</div>
						</form>
  					</div>
  				</div>
  			</div>
  			<div class="clear"></div>
  		</div>
  		<!-- 尾部 -->
  		<jsp:include page="bbs/footer.jsp"></jsp:include>
  	</div>
  </body>
</html>
