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
		<title>公司介绍-微家政</title>
		<link rel="shortcut icon" href="../favicon.ico">
        
		<link rel="stylesheet" type="text/css" href="CSS/normalize.css" />
		<link rel="stylesheet" type="text/css" href="CSS/demo.css" />
		<link rel="stylesheet" type="text/css" href="CSS/component.css" />
		<style>
        		body {
	background-color: #FFF;
	
}

        </style>

		

		<link href="CSS/company.css" rel="stylesheet" type="text/css">
		<script src="js/modernizr.custom.js"></script>
        <script type="text/javascript" src="http://img.jb51.net/jslib/jquery/jquery-1.2.6.js"></script> 
        <script type="text/javascript" src="http://img.jb51.net/jslib/jquery/tween.js"></script>
        <script type="text/javascript" src="js/company.js"></script>

        
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
             
         
          <div class="list">
          <div class="list_left" id="left"> 
          <span class="logo"><a href="http://www.jzcn.net/e/space/?userid=24272" target="_blank"><img src="http://www.jzcn.net/d/file/company/2015-03-07/d7ad4c4ea77ab9896861fbb86457ad35.jpg" alt="厦门爱侬家政服务有限公司" width="200" height="160" border="0"/></a></span></div>
          <div id="right" class="right">
            <p class="p1">${providerss.companyName }&nbsp;<img src="http://www.jzcn.net/skin/jzcn/img/gsok.gif" width="22" height="18"></p>
            <p>评分：<strong>${providerss.starNumber }.0分</strong></p>
            <p>保姆资源：<strong>${count }人</strong>　公司规模：<strong class="color">${providerss.companysize }</strong></p>
            <p>联系方式： <strong>${providerss.companyPhone }</strong></p>
            <p>经营地址：${providerss.runaddress } </p>
             <p><span>可提供服务类型：</span></p>
                    <div class="offer-classify clearfix">
                                                               <c:forEach items="${servicenamelist }" var="servicelist">
                    	                    	                    			<span  class="active">${servicelist }&nbsp;</span></c:forEach>
                    	                    	                    			
                    	                    	                    </div>
                    	                    	                  
                                                                    <input type="submit" class="button" value="确认预订">
                
          </div>
        </div>
            
          <div class="main" id="main">      
         <div id="choose" class="choose">
<input id="introduce" class="registercloose" type="button"   value="公司介绍" />
<input id="comment" type="button" class="registercloose2"  value="服务评价"/>

</div>
<div id="introduce_content" class="introduce_content">
　${providerss.introduce }
</div>

<div id="comment_content" class="comment_content">
<div id="comment_list" class="comment_list">
<p class="p3">评分&nbsp;用户名</p>
<p class="p4">评论内容</p>
<p class="p3">发表时间</p>
</div>

<div id="comment_list" class="comment_list">
<p class="p3">评分&nbsp;用户名</p>
<p class="p4">评论内容</p>
<p class="p3">发表时间</p>
</div>

<div id="comment_list" class="comment_list">
<p class="p3">评分&nbsp;用户名</p>
<p class="p4">评论内容</p>
<p class="p3">发表时间</p>
</div>

<div id="comment_list" class="comment_list">
<p class="p3">评分&nbsp;用户名</p>
<p class="p4">评论内容</p>
<p class="p3">发表时间</p>
</div>

<div id="comment_list" class="comment_list">
<p class="p3">评分&nbsp;用户名</p>
<p class="p4">评论内容</p>
<p class="p3">发表时间</p>
</div>

<div id="comment_list" class="comment_list">
<p class="p3">评分&nbsp;用户名</p>
<p class="p4">评论内容</p>
<p class="p3">发表时间</p>
</div>


</div>
</div><!--main end-->

          </div>
           
 
   
</div>
			
            
          </div>
   
        <footer class="bottom2">
        <div class="footer-main">
            <p class="footer-nav"><a href="index.html" target="_blank" class="a2">微家政首页</a>|<a href="admit.html" target="_blank" class="a2">服务承诺</a>|<a href="safe.html" target="_blank" class="a2">安全保障</a>|<a href="advice.html" target="_blank" class="a2">投诉建议</a>|<a href="contact.html" target="_blank" class="a1">关于我们</a></p>
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