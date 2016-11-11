<%@ page contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <!DOCTYPE html>
<html lang="zh-cn" class="no-js">
	<head>
	 <base href="<%=basePath%>">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>帮助中心-微家政</title>
		<link rel="shortcut icon" href="../favicon.ico">
      
		<link rel="stylesheet" type="text/css" href="CSS/normalize.css" />
		<link rel="stylesheet" type="text/css" href="CSS/demo.css" />
		<link rel="stylesheet" type="text/css" href="CSS/component.css" />
		<style>
        		body {
	background-color: #FFF;
	
}
<style type="text/css">
.rc_box1,.rc_box3{display:inline-block;*display:inline;*zoom:1;position:relative;border-style:solid;border-color:#ddd;	}
.rc_box3{
	border-width: 0 1px;
*left:-2px;				background-color: #D6D6D6;
	width: 700px;
	margin-top: 130px;
	margin-left: 325px;
	height: 500px;

}
.rc_box1{
	border-width: 1px;
	line-height: 1.5;
	width: 700px;
	margin-top: 135px;
	margin-left: 325px;
	margin-right: 30px;
	margin-bottom: 30px;
	height: 500px;
}

.rc_box3{margin:1px -2px;padding:0 6px;}
.ov1,.ov2{position:absolute;left:10%;overflow:hidden;width:0;height:0;border-left:15px dotted transparent;border-right:15px dotted transparent;
border-bottom:15px solid transparent;z-index:1200;}

.ov1{top:731px;left:385px;}
.ov2{top:730px;left:385px;border-bottom-color:#D6D6D6;}


      
        </style>

		<link href="CSS/help.css" rel="stylesheet" type="text/css">
		<script src="js/modernizr.custom.js"></script>
        <script type="text/javascript" src="http://img.jb51.net/jslib/jquery/jquery-1.2.6.js"></script> 
        <script type="text/javascript" src="http://img.jb51.net/jslib/jquery/tween.js"></script>

        
	</head>
	<body>
    <div><span class="gn-icon gn-icon-search"></span></div>
		<div class="container">
			<ul id="gn-menu" class="gn-menu-main">
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller">
							<ul class="gn-menu">
                            
								<li class="gn-search-item">
									<input placeholder="商家搜索" type="search" class="gn-search">
									<a class="gn-icon gn-icon-search"><span>Search</span></a>
								</li>
                                <li><a class="gn-icon gn-icon-home" href="jsp/first.jsp">首页</a></li>
                                 <li><a class="gn-icon gn-icon-profile" href="jsp/first.jsp?name=#buy">家政服务订购</a></li>
                                <li><a class="gn-icon gn-icon-fire" href="first.jsp?name=#tuijian">热门推荐</a></li>
								 <li> <a class="gn-icon gn-icon-download">下载中心</a></li>
								        <li><a class="gn-icon gn-icon-service" href="jsp/life.jsp">生活小贴士</a></li>
										<li><a class="gn-icon gn-icon-phone" href="jsp/contact.jsp">联系我们</a></li>
                                        <li><a class="gn-icon gn-icon-help" href="jsp/help.jsp">帮助中心</a></li>
									
								
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<li><a href="jsp/contact.jsp">Whome</a></li>
    
				

              <li><a class="codrops-icon codrops-icon-prev" href="/jsp/first.jsp"><span>返回首页</span></a></li>
			</ul>
            <div id="conn">
			<div id="img" >
            
              <img src="img/550cf9e363c99.jpg" width="1366" height="589"></div>
              <div id="list">
              <ul>
              <li><a href="jsphelp.jsp" target="_self"><img src="img/5.jpg" width="100" height="100"></a><p>帮助中心</p></li>
              <li><a href="jsp/admit.jsp" target="_self"><img src="img/3.jpg" width="100" height="100"></a><p>服务承诺</p></li>
              <li><a href="jsp/contact.jsp" target="_self"><img src="img/4.jpg" width="100" height="100"></a><p>联系我们</p></li>
              <li><a href="jspsafe.jsp"><img src="img/2.jpg" width="100" height="100"></a><p>安全保障</p></li>
              <li><a href="jsp/advice.jsp"><img src="img/1.jpg" width="100" height="100"></a><p>投诉建议</p></li>
              
              </ul>
              </div>
              <div class="rc_box1">
    <div class="rc_box3">
    <p class="p2" >预约流程</p>
    
    <p class="p">在首页填写服务需求，点击搜索，系统便会为您推荐符合条件的家政公司，由您自行挑选，若您选中一个家政公司，确认预定信息，如：姓名、住址、联系方式、服务内容、服务时间，确认预定后，家政公司会在3小时内（工作时间）回复您的预订。</p>
    <p class="p2">常见问题</p>
    <p class="p">Q：微家政网是做什么的？</p>
<p class="p">A：微家政网是家政服务在线预订平台。我们的目标是让每个家庭都能获得诚信、便捷、有保障的家政服务。
<p class="p">Q：我怎么在微家政上找阿姨？</p>
<p class="p">填写你的具体需求，网站会从海量数据里自动推荐若干最符合条件的阿姨供你挑选；2）选中后，平台会将您的需求自动发送给阿姨所在的公司；3）一般3小时（工作时间内）可收到回复。</p>
<p class="p">Q：我看中的阿姨一定预订到吗？</p>
<p class="p">A：不能保证看中的阿姨一定预约成功。您预约后，我们的合作服务商会及时告知阿姨的服务时间是否可以预订。</p>
    
    </div>

  <div class="ov1"></div>
  <div class="ov2"></div>
   
</div>
			
            
          </div>
       
 
    

	</div><!-- /container -->
        
        
        <div id="next" ></div>
		<script src="js/classie.js"></script>
		<script src="js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
	</body>
</html>