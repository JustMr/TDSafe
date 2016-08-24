<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/style-clear.css">
	<link rel="stylesheet" type="text/css" href="css/style-safe01.css">
  </head>
  
  <body>
    <div id="safefoot">
    	<div id="foot_font">
    		<div id="foot_ul1" class="foot_ul">
    			<h1>了解我们</h1>
    			<ul>
    				<li><a href="http://www.stdu.edu.cn/">石家庄铁道大学</a></li>
    				<li><a href="http://sist.stdu.edu.cn/">信息科学与技术学院</a></li>
    				<li><a href="http://sist.stdu.edu.cn/wl/index.php">网络工程系</a></li>
    			</ul>
    		</div>
    		<div id="foot_ul2" class="foot_ul">
    			<h1>交流沟通</h1>
    			<ul>
    				<li>QQ群： 480537341</li>
    				<li>博客：<a href="">TDSafe论坛</a></li>
    			</ul>
    		</div>
    		<div id="foot_ul3" class="foot_ul">
    			<h1>扫码关注微信：</h1>
    			<img alt="TDSafe论坛" src="">
    		</div>
		</div>
		<div style="clear:both;"></div>
    	<div id="foot_main">
    		<p>copyright&copy;TDsafe. 保留所有权利.</p>
    	</div>
    </div>
  </body>
</html>
