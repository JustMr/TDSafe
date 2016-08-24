<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TDsfe-首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/style-safe02.css">
	<link rel="stylesheet" href="css/zzsc.css" type="text/css" media="screen" />
	<script type="text/javascript">
	/*主页下拉菜单设计home.jsp*/
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
    <div class="container">
    	<!-- 头部 -->
    	<div id="hometopbar" class="topbar">
    		<div id="topbarmain">
	    		<span id="topspan01" class="topspan">专注于网络安全漏洞</span>
	    		<span id="topspan02" class="topspan">您好，<a class="topa" href="login.jsp">请登录</a>&nbsp;|&nbsp;
	    			<a class="topa" href="register.jsp">1分钟快速注册</a>
	    		</span>
    		</div>
    	</div>
    	<jsp:include page="bbs/header.jsp"></jsp:include>
    	<!-- 导航栏 -->
    	<div id="barcontain">
	    	<div id="barmain">
	    		<ul>
	    			<li id="bar01"><a href="home.jsp">首页</a></li>
					<li id="bar02"><a href="forum.jsp">论坛版块</a></li>
	    			<li id="bar03"><a href="">悬赏问答</a></li>
	    			<li id="bar04"><a href="">TDSafe排行</a></li>
	    			<li><a href="">学院首页</a></li>
	    			<li id="bar05"><a href="">漏洞提交</a>
	    				<ul>
	    					<li id="bar051" class="secli"><a class="secbar" href="http://www.wooyun.org/bug/submit">乌云</a></li>
	    					<li class="secli"><a class="secbar" href="https://butian.360.cn/vul/faq">补天</a></li>
	    				</ul>
	    			</li>
	    		</ul>
	    		<div style="clear:both;"></div>
	    	</div>
    	</div>
    	<!-- 论坛主要内容 -->
    	<div id="topicmain">
	    	<div id="hmoe_left">
	    		<!-- 滚动栏 -->
	    		<div id="scoll_bar">
	    			<div id="main">
						<div class="content">
							<!--图片轮播-->
							<div class="hot_wrap">
								<div id="target" class="tbui_slideshow_container">
									<ul class="tbui_slideshow_list">
										<li><a href="" target="_blank">
										<img src="images/1.png" width="720" height="316" />
										</a></li>
										<li><a href="" target="_blank">
										<img src="images/2.png" width="720" height="316" />
										</a></li>
										<li><a href="" target="_blank">
										<img src="images/3.png" width="720" height="316" />
										</a></li>
			                            <li><a href="" target="_blank">
										<img src="images/4.png" width="720" height="316" />
										</a></li>
									</ul>
								</div>
								<div class="slide_bg">
								</div>
								<!--导航条的结构-->
								<ul id="controller">
									<li>1</li>
									<li>2</li>
									<li>3</li>
			                        <li>4</li>
								</ul>
								<a href="#" id="prev">上一页</a> <a href="#" id="next">下一页</a>
							</div>
							<div class="left-wrap"></div>
						</div>
						<div class="clear"></div>
					</div>
	    		</div>
	    		<!-- end of #main-wrap -->
				<script type="text/javascript" src="js/jquery-min-1.7.js" charset="utf-8"></script>
				<script type="text/javascript" src="js/all_dfd5691e.js"></script>
				<script type="text/javascript">
				$(function () {
					new SlideShow({
					nav: "#controller",
					effect : "fade",
					target: "#target",
					activeClass: "active",
						next: "#next",
					prev: "#prev",
					auto: true
					});
				});
				</script>
	    		<!-- 热门版块 -->
	    		<div id="section">
	    			<div id="hotname">
	    				<div class="hotname_left"><label>热&nbsp;门</label></div>
	    				<div class="hotname_left"><label>版&nbsp;块</label></div>
	    			</div>
	    			<div id="hotright">
	    				<div id="hottopic1" class="hottopic"><a href="" target="_blank">CTF讨论天地</a></div>
	    				<div id="hottopic2" class="hottopic"><a href="" target="_blank">企业安全</a></div>
	    				<div id="hottopic3" class="hottopic"><a href="" target="_blank">网站安全</a></div>
	    				<div id="hottopic4" class="hottopic"><a href="" target="_blank">客户端安全</a></div>
	    				<div id="hottopic5" class="hottopic"><a href="" target="_blank">通信安全</a></div>
	    				<div id="hottopic6" class="hottopic"><a href="" target="_blank">移动安全</a></div>
	    				<div id="hottopic7" class="hottopic"><a href="" target="_blank">智能硬件安全</a></div>
	    			</div>
	    		</div>
	    		<div style="clear:both;"></div>
	    		<!-- 图文新帖 -->
	    		<div id="topic_new">
	    			<div id="newtitle"><label>图文新帖</label></div>
	    			<div id="newmain"></div>
	    		</div>
	    	</div>
	    	<div id="home_right">
	    		<div id="topic_bnt">
	    			<div id="topic_pub" class="butdiv">
	    				<a id="puba" class="buta" href="javascript:;" onclick="showWindow();">
	    					<i class="homeico" id="homeico_post"></i>
	    					<p>发帖</p>
	    				</a>
	    			</div>
	    			<div id="topic_sign" class="butdiv">
	    				<a id="signa" class="buta" href="javascript:;" onclick="return checksign();">
	    					<i class="homeico" id="homeico_sign"></i>
	    					<p id="signp">签到</p>
	    				</a>
	    			</div>
	    			<div id="topic_answer" class="butdiv">
	    				<a id="answera" class="buta" href="">
	    					<i class="homeico" id="homeico_question"></i>
	    					<p>悬赏问答</p>
	    				</a>
	    			</div>
	    		</div>
	    		<div id="rankingList">
	    			<div id="listtitle"><label>悬赏问答：排行榜</label></div>
	    			<div id="listmain"></div>
	    		</div>
	    	</div>
    	</div>
    	<div style="clear:both;"></div>
    	<!-- 底部 -->
    	<jsp:include page="bbs/footer.jsp" />
    	<!-- 发帖框 -->
    	<div id="pubbs">
    		<div id="pubbs_tit">
    			<label>发表帖子</label>
    			<a id="pubexit" href="javascript:;" onclick="hideWindow();"></a>
    		</div>
    		<form action="" onsubmit="return changesel();">
    			<div id="pubbs_the">
	    			<select id="pubbs_sel">
	    				<option value="-1">选择主题分类</option>
	    				<option value="0">视频分享</option>
	    				<option value="1">书籍分享</option>
	    				<option value="2">海外干货</option>
	    				<option value="3">技术分享</option>
	    				<option value="4">思维导图</option>
	    				<option value="5">其他</option>
	    			</select>
	    			<input type="text" id="pubtheme" name="pubtheme" placeholder="标题">
	    		</div>
	    		<div id="pubbs_con">
	    			<textarea id="pubtextarea" rows="" cols=""></textarea>
	    		</div>
	    		<div id="pubbs_but">
	    			<input type="submit" id="pubut" name="pubut" value="发    表">
	    		</div>
    		</form>
    	</div>
    </div>
    <script type="text/javascript" src="js/js-bbs01.js"></script>
  </body>
</html>
