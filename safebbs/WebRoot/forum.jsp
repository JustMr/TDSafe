<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>论坛版块</title>
    
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
    	<!-- 版块分类主要内容 -->
    	<div id="topicmain">
	    	<div id="hmoe_left">
	    		<!-- 版块分类 -->
	    		<div id="bbssort">
	    			<div id="bbssort_zero" class="bbssort_tit">
	    				<h2>TDSafe</h2>
	    				<span>
	    					<a href="###">我的帖子</a>
	    					<label> |</label>
	    					<a href="###"> 最新回复</a>
	    				</span>
	    			</div>
	    			<div id="bbssort_one" class="bbs_sort">
	    				<div  class="bbssort_tit">
	    					<h2>入门课程</h2>
	    					<span>
	    						分区版主:
	    						<a href="###">王复员</a>
	    					</span>
	    				</div>
	    				<ul>
	    					<li><a href="###">菜鸟营</a></li>
	    					<li><a href="###">见习区</a></li>
	    					<li><a href="###">大师组</a></li>
	    				</ul>
	    				<div class="clear"></div>
	    			</div>
	    			<div id="bbssort_sec" class="bbs_sort">
	    				<div  class="bbssort_tit">
	    					<h2>专业课程</h2>
	    					<span>
	    						分区版主:
	    						<a href="###">王复员</a>
	    					</span>
	    				</div>
	    				<ul>
	    					<li><a href="###">程序设计</a></li>
	    					<li><a href="###">操作系统</a></li>
	    					<li><a href="###">网络协议</a></li>
	    				</ul>
	    				<div class="clear"></div>
	    			</div>
	    			<div id="bbssort_thi" class="bbs_sort">
	    				<div  class="bbssort_tit">
	    					<h2>渗透课程</h2>
	    					<span>
	    						分区版主:
	    						<a href="###">王复员</a>
	    					</span>
	    				</div>
	    				<ul>
	    					<li><a href="###">信息收集</a></li>
	    					<li><a href="###">漏洞评估</a></li>
	    					<li><a href="###">攻击工具</a></li>
	    					<li><a href="###">密码破解</a></li>
	    					<li><a href="###">内网渗透</a></li>
	    					<li><a href="###">WEB渗透</a></li>
	    					<li><a href="###">其他</a></li>
	    				</ul>
	    				<div class="clear"></div>
	    			</div>
	    			<div id="bbssort_for" class="bbs_sort">
	    				<div  class="bbssort_tit">
	    					<h2>安全课程</h2>
	    					<span>
	    						分区版主:
	    						<a href="###">王复员</a>
	    					</span>
	    				</div>
	    				<ul>
	    					<li><a href="###">企业安全</a></li>
	    					<li><a href="###">网站安全</a></li>
	    					<li><a href="###">系统安全</a></li>
	    					<li><a href="###">软件安全</a></li>
	    					<li><a href="###">移动安全</a></li>
	    					<li><a href="###">智能安全</a></li>
	    				</ul>
	    				<div class="clear"></div>
	    			</div>
	    			<div id="bbssort_fif" class="bbs_sort">
	    				<div  class="bbssort_tit">
	    					<h2>CTF学习</h2>
	    					<span>
	    						分区版主:
	    						<a href="###">王复员</a>
	    					</span>
	    				</div>
	    				<ul>
	    					<li><a href="###">WEB</a></li>
	    					<li><a href="###">密码学</a></li>
	    					<li><a href="###">安全杂项</a></li>
	    					<li><a href="###">逆向工程</a></li>
	    					<li><a href="###">隐写</a></li>
	    					<li><a href="###">编程</a></li>
	    					<li><a href="###">溢出</a></li>
	    				</ul>
	    				<div class="clear"></div>
	    			</div>
	    			<div id="bbssort_six" class="bbs_sort">
	    				<div  class="bbssort_tit">
	    					<h2>学生天地</h2>
	    					<span>
	    						分区版主:
	    						<a href="###">王复员</a>
	    					</span>
	    				</div>
	    				<ul>
	    					<li><a href="###">趣味课堂</a></li>
	    				</ul>
	    				<div class="clear"></div>
	    			</div>
	    			<div id="bbssort_sen" class="bbs_sort">
	    				<div  class="bbssort_tit">
	    					<h2>未来安全</h2>
	    					<span>
	    						分区版主:
	    						<a>王复员</a>
	    					</span>
	    				</div>
	    				<ul>
	    					<li><a href="###">未来安全</a></li>
	    				</ul>
	    				<div class="clear"></div>
	    			</div>
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
    </div>
  </body>
</html>
