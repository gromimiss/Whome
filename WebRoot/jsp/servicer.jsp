<%@ page contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
		<title>供应商列表-微家政</title>
		<link rel="shortcut icon" href="../favicon.ico">
     
		<link rel="stylesheet" type="text/css" href="CSS/normalize.css" />
		<link rel="stylesheet" type="text/css" href="CSS/demo.css" />
		<link rel="stylesheet" type="text/css" href="CSS/component.css" />
		<style>
        		body {
	background-color: #FFF;
	
}

        </style>

		
		<link href="CSS/servicer.css" rel="stylesheet" type="text/css">
		<script src="js/modernizr.custom.js"></script>
        <script type="text/javascript" src="http://img.jb51.net/jslib/jquery/jquery-1.2.6.js"></script> 
        <script type="text/javascript" src="http://img.jb51.net/jslib/jquery/tween.js"></script>

        
	</head>
	<body>
    <div><span class="gn-icon gn-icon-search"></span></div>
		<div class="container" style="position:relative">
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
                                 <li><a class="gn-icon gn-icon-profile" href="first.jsp?name=#buy">家政服务订购</a></li>
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

				
				
              <li><a class="codrops-icon codrops-icon-prev" href="jsp/first.jsp"><span>返回首页</span></a></li>
			</ul>
            <div id="conn">
			<div id="img" >
            
              <img src="img/background2.jpg" width="1366"></div>
              <div class="company" id="company">
              <ul>
             <li><span>类别：</span><a href="/e/action/ListInfo.php?&classid=21&ph=1&hy=&=" >不限</a> <a href="/e/action/ListInfo.php?&classid=21&ph=1&hy=1&=" >保姆公司</a> <a href="/e/action/ListInfo.php?&classid=21&ph=1&hy=2&=" >搬家公司</a> <a href="/e/action/ListInfo.php?&classid=21&ph=1&hy=3&=" >清洁公司</a> </li>
             <li>共找到 ${count2 }家符合要求的公司</li>
          </ul>
          <div class="company_list" id="company_list">
          <div class="list">
          <div class="list_left" id="left"> 
          <span class="logo"><a href="company.html" target="_blank"><img src="http://www.jzcn.net/d/file/company/2015-03-07/d7ad4c4ea77ab9896861fbb86457ad35.jpg" alt="厦门爱侬家政服务有限公司" width="200" height="160" border="0"/></a></span></div>
         
          <div id="right" class="right">
          
            <p><strong class="f14"><a href="company.html" target="_blank">${provider2.companyName }</a> <img src="http://www.jzcn.net/skin/jzcn/img/gsok.gif" width="22" height="18"></strong></p>
            <p>经营行业：</p>
            <p>保姆资源：<strong class="color">3人</strong>　公司规模：<strong class="color">500人以上</strong></p>
            <p>联系方式： <strong>0592-5050279</strong> <strong>13625013462</strong></p>
            <p>经营地址：湖滨南路813号富山女人街B栋701室 </p>
            
          </div>
         
       


          </div>
           
 
   
</div>
			
            
          </div>
   
        <footer class="bottom2">
        <div class="footer-main">
            <p class="footer-nav"><a href="jsp/first.jsp" target="_blank" class="a2">微家政首页</a>|<a href="jsp/admit.jsp" target="_blank" class="a2">服务承诺</a>|<a href="jsp/safe.jsp" target="_blank" class="a2">安全保障</a>|<a href="jsp/advice.jsp" target="_blank" class="a2">投诉建议</a>|<a href="jsp/contact.html" target="_blank" class="a1">关于我们</a></p>
            <div class="footer-copy">

                <p>@微家政版权所有</p>
            </div>
           
        </div>
    </footer><!--footer end-->

	</div><!-- /container -->
        
        
        <div id="next" ></div>
		<script src="js/classie.js"></script>
		<script src="js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
	</body>
</html>