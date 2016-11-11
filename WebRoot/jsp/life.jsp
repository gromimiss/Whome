<%@ page contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-cn" class="no-js">
	<head>
	
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<base href="<%=basePath%>">
		<title>生活小贴士-微家政</title>
		<link rel="shortcut icon" href="../favicon.ico">
     
		<link rel="stylesheet" type="text/css" href="CSS/normalize.css" />
		<link rel="stylesheet" type="text/css" href="CSS/demo.css" />
		<link rel="stylesheet" type="text/css" href="CSS/component.css" />
		<style>
        		body {
	background-color: #FFF;
	
}
      
        </style>
		<link href="CSS/lifestyle.css" rel="stylesheet" type="text/css">
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
                                <li><a class="gn-icon gn-icon-profile" href="javascript:void(0)" onclick="document.getElementById('1').scrollIntoView();">家政服务订购</a></li>  
                               <!-- <li><a class="gn-icon gn-icon-profile" href="jsp/first.jsp?name=#buy">家政服务订购</a></li> --> 
                                <li><a class="gn-icon gn-icon-fire" href="jsp/first.jsp?name=#tuijian">热门推荐</a></li>
								 <li> <a class="gn-icon gn-icon-download">下载中心</a></li>
								        <li><a class="gn-icon gn-icon-service" href="jsp/life.jsp">生活小贴士</a></li>
										<li><a class="gn-icon gn-icon-phone" href="jsp/contact.jsp">联系我们</a></li>
                                        <li><a class="gn-icon gn-icon-help" href="jsp/help.jsp">帮助中心</a></li>
									
								
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<li><a href="jsp/contact.jsp">Whome</a></li>
 
				

              <li><a class="codrops-icon codrops-icon-prev" href="jsp/first.jsp"><span>返回首页</span></a></li>
			</ul>
			

              <div class="life" id="life"  >
             
              <div class="lifeimg"></div>
              <div class="essay" id="essay">
               <p class="p" >
                  生活小贴士
               </p>
               
               
              <ul>
              <li ><span class="span">>&nbsp;</span><a href="jsp/life-essay.jsp">如何引导孩子发泄怒气</a></li>
              <li ><span class="span">>&nbsp;</span><a href="#">当孩子把折磨小动物当做乐趣</a></li>
              <li><span class="span">>&nbsp;</span><a href="#">保姆家长需知：孩子实施暴力的主要根源？</a></li>
              <li><span class="span">>&nbsp;</span><a href="#">关注青少年沉溺手机的症状</a></li>
              <li><span class="span">>&nbsp;</span><a href="#">月嫂关于配方奶的误区</a></li>
              <li><span class="span">>&nbsp;</span><a href="#">育儿建议：对孩子的期望值</a></li>
              <li><span class="span">>&nbsp;</span><a href="#">请来保姆做家务，孩子也应学习整理</a></li>
              <li><span class="span">>&nbsp;</span><a href="#">母婴住院状告家政败诉 </a></li>
              <li><span class="span">>&nbsp;</span><a href="#">请保姆之伤</a></li>
              <li><span class="span">>&nbsp;</span><a href="#">家政市场有变化 请保姆</a></li>
              
              </ul>
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