<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body {
			font-family: Verdana, Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 1.5;
		}
		img {
			border:0;
		}
		#barmain ul {
			margin:0 auto; 
			padding:0;
			list-style: none;
			width:800px;
		}
		#barmain ul li {
			background: #eee;
			height:37px;
			line-height: 37px;
			border-bottom: 1px solid #ccc;
			text-align: center;
			float:left;
			width:154px;
			margin-right:10px;
		}
		#barmain ul li a {
			color:#000;
			text-decoration: none;
			display:block;
			width:154px;
			height:37px;
			background: #F2F2F2;
		}
		#barmain ul li a:HOVER {
			background-color: #000000;
		} 
		#barmain ul li ul {
			display:none;
			width:154px;
		}
		#barmain ul li.listshow ul {
			display:block;
		}
		#barmain ul li ul li {
			float:none;
			width:154px;
			margin:0;
		}
	</style>
	<script type="text/javascript">
	function menuFix() {
		var sfEles =  document.getElementById("barmain").getElementsByTagName("li");
		
		for(var i=0; i<sfEles.length; i++) {
			sfEles[i].onmouseover = function() {
				this.className += (this.className.length>0?" ":"") + "listshow";
			};
			sfEles[i].onmouseout = function() {
				this.className = this.className.replace("listshow" , "");
			};
		}
	}
	window.onload = menuFix;
	</script>
  </head>
  
  <body>
  <div style="widht:100%;">
  	<div id="barmain" style="width:800px;margin:0 auto;">
   		<ul>
   			<li id="bar01"><a href="home.jsp">首页</a></li>
			<li id="bar02"><a href="">官方通告</a></li>
   			<li id="bar03"><a href="">技术交流区</a>
   				<ul>
   					<li><a href="">二级导航列表1</a></li>
   					<li><a href="">二级导航列表2</a></li>
   					<li><a href="">二级导航列表3</a></li>
   					<li><a href="">二级导航列表4</a></li>
   					<li><a href="">二级导航列表5</a></li>
   				</ul>
   			</li>
   			<li id="bar04"><a href="">资源分享区</a></li>
   			<li id="bar05"><a href="">聊天灌水区</a></li>
   			<li id="bar05"><a href="">漏洞提交</a>
   				<ul>
   					<li id="bar051"><a class="secbar" href="http://www.wooyun.org/bug/submit">乌云</a></li>
   					<li><a class="secbar" href="https://butian.360.cn/vul/faq">补天</a></li>
   				</ul>
   			</li>
   		</ul>
   		<div style="clear:both;"></div>
   	</div>
   	<div style="width:1120px;height:50px;background: red;"></div>
   	</div>
</html>
