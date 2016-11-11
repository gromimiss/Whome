<%@ page contentType="text/html; charset=gbk"
   pageEncoding="gbk"%>
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
		<title>服务承诺-微家政</title>
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
	height: 505px;

}
.rc_box1{
	border-width: 1px;
	line-height: 1.5;
	width: 700px;
	margin-top: 135px;
	margin-left: 325px;
	margin-right: 30px;
	margin-bottom: 30px;
	height: 505px;
}

.rc_box3{margin:1px -2px;padding:0 6px;}
.ov1,.ov2{position:absolute;left:10%;overflow:hidden;width:0;height:0;border-left:15px dotted transparent;border-right:15px dotted transparent;
border-bottom:15px solid transparent;z-index:1200;}

.ov1{top:731px;left:525px;}
.ov2{top:730px;left:525px;border-bottom-color:#D6D6D6;}


      
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
                                <!-- <li><a class="gn-icon gn-icon-home" href="first.jsp">首页</a></li> -->
                               <li><a href="jsp/first.jsp" class="gn-icon gn-icon-home">首页</a> </li>
                                <!--<li><a href="#buy" class="gn-icon gn-icon-profile">家政服务订购</a></li>  -->
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
            
              <img src="img/550cf9e363c99.jpg" width="1366" height="589"></div>
              <div id="list">
              <ul>
              <li><a href="jsp/help.jsp" target="_top"><img src="img/5.jpg" width="100" height="100"></a><p>帮助中心</p></li>
              <li><a href="jsp/admit.jsp" target="_self"><img src="img/3.jpg" width="100" height="100"></a><p>服务承诺</p></li>
              <li><a href="jsp/contact.jsp" target="_self"><img src="img/4.jpg" width="100" height="100"></a><p>联系我们</p></li>
              <li><a href="jsp/safe.jsp"><img src="img/2.jpg" width="100" height="100"></a><p>安全保障</p></li>
              <li><a href="jsp/advice.jsp"><img src="img/1.jpg" width="100" height="100"></a><p>投诉建议</p></li>
              
              </ul>
              </div>
              <div class="rc_box1">
    <div class="rc_box3">
    <p class="p2" >准时到达</p>
    
    <p class="p">若阿姨未按照约定时间上门，以在线支付金额的10%赔付。</p>
   <p class="p"> 如：用户张先生在云家政预订了钟点工刘阿姨，并在线支付了4小时试工工资100元。服务当天阿姨迟到，也没有及时跟张先生联系。张先生将得到100*10%=10元赔付。</p>
    <p class="p2">100天内换人</p>
    <p class="p">如：张先生在微家政上找到一个住家保姆刘阿姨，试用时觉得满意，与家政公司签订了合同，并且通过微家政网托管了中介费。但是一周之后刘阿姨生病不能做了，家政公司应免费再为张先生找另外的阿姨，不再收任何费用。</p>
   
<p class="p">在支付中介费后90日内，家政公司负责免费换人三次。</p>
<p class="p2">实名认证</p>
<p class="p">阿姨都有身份登记，实名认证，带有健康证，经过严格培训。</p>

    
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