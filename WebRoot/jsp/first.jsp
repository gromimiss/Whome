<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="tag.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页-微家政</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="CSS/normalize.css" />
		<link rel="stylesheet" type="text/css" href="CSS/demo.css" />
		<link rel="stylesheet" type="text/css" href="CSS/component.css" />
		<link href="CSS/main.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript">
		//退出系统方法
	function logout() {
		confirm('您确定要退出吗?',null,
				function(){
					location.href = '${baseurl}logout.action';
				}
		);
	}
		
		</script>
  </head>

   	<style type="text/css">
		body {
	background-color: #FFFFFF;
}

   #servicetuijian #servicecompany {
	width: 1150px;
	height: 460px;
	margin-top: 50px;
	margin-right: auto;
	margin-bottom: 50px;
	margin-left: auto;
	position: relative;
	overflow:hidden;
}
 #servicetuijian #servicecompany ul {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 1150px;
}
 #servicetuijian #servicecompany ul li{
	float: left;
	text-align: center;
	border: 18px solid #FFF;
	height: 500px;
	width: 293px;
	list-style-type: none;	
	}
        </style>
		<script src="js/modernizr.custom.js"></script>
        <script type="text/javascript" src="http://img.jb51.net/jslib/jquery/jquery-1.2.6.js"></script> 
        <script type="text/javascript" src="http://img.jb51.net/jslib/jquery/tween.js"></script>
        <script src="js/city.js"></script>
        <script src="js/slide.js"></script>
        
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
									<form action="${baseurl }searchProvider.action" method="post">
									<input placeholder="商家搜索" type="text" name="companyName"class="gn-search">
									<a class="gn-icon gn-icon-search"><span>Search</span></a>
									<input type="submit" value="GO>" style="border-style:none;background:none;"/>
	
									</form>

								</li>
                                <li><a class="gn-icon gn-icon-home" href="jsp/first.jsp">首页</a></li>
                               <!--  <li><a class="gn-icon gn-icon-profile" href="#buy">家政服务订购</a></li>-->
                               <li><a class="gn-icon gn-icon-profile" href="javascript:void(0)" onclick="document.getElementById('1').scrollIntoView();">家政服务订购</a></li>   
                                <li><a class="gn-icon gn-icon-fire" href="javascript:void(0)" onclick="document.getElementById('2').scrollIntoView();">热门推荐</a></li>
								 <li> <a class="gn-icon gn-icon-download">下载中心</a></li>
								        <li><a class="gn-icon gn-icon-service" href="jsp/life.jsp">生活小贴士</a></li>
										<li><a class="gn-icon gn-icon-phone" href="jsp/contact.jsp">联系我们</a></li>
                                        <li><a class="gn-icon gn-icon-help" href="jsp/help.jsp">帮助中心</a></li>
									
								
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<li><a href="jsp/contact.jsp">Whome</a></li>
               

<c:if test="${activeUser!=null}">
 <li> <a  href="#"> 欢迎您：${activeUser.username} </a></li>
 <li><a href="${baseurl}logout.action"><span>退出</span></a></li>
</c:if> 
<c:if test="${activeUser==null}">
  <li> <a  href="jsp/login.jsp"><span> 登录 </span></a></li> 
  <li><a  href="jsp/register.jsp"><span>注册 </span></a></li>
</c:if> 
   
				
				<img src="img/845b1b599c897d735a6fe5793d6dc796.png" width="63" height="58" style=" position:relative; top:50%;left:25%;" >
              <li><a class="codrops-icon codrops-icon-prev" href="jsp/first.jsp"><span>返回首页</span></a></li>
			</ul>
			<header>

                <div id="pic" class="pic" >
                   
               pic-player</div>
               
                    <script> 
            var p = $('#pic'); 
            var pics1 = [{url:'img/sy1.jpg',time:3000},{url:'img/sy2.jpg',time:3000},{url:'img/sy3.jpg',time:3000}]; 
            initPicPlayer(pics1,p.css('width').split('px')[0],p.css('height').split('px')[0]); 
            // 
            // 
            function initPicPlayer(pics,w,h) 
            { 
                //选中的图片 
                var selectedItem; 
                //选中的按钮 
                var selectedBtn; 
                //自动播放的id 
                var playID; 
                //选中图片的索引 
                var selectedIndex; 
                //容器 
                var p = $('#pic'); 
                p.text(''); 
                p.append('<div id="piccontent"></div>'); 
                var c = $('#piccontent'); 
                for(var i=0;i<pics.length;i++) 
                { 
                    //添加图片到容器中 
                    c.append('<a href="'+pics[i].link+'" target="_blank"><img id="picitem'+i+'" style="display: none;z-index:'+i+'" src="'+pics[i].url+'" /></a>'); 
                } 
                //按钮容器，绝对定位在右下角 
                p.append('<div id="picbtnHolder" style="position:absolute;top:'+(h-40)+'px;width:'+(w-40)+'px;height:20px;z-index:10000;"></div>'); 
                // 
                var btnHolder = $('#picbtnHolder'); 
                btnHolder.append('<div id="picbtns" style="float:right; padding-right:30px;"></div>'); 
                var btns = $('#picbtns'); 
                // 
                for(var i=0;i<pics.length;i++) 
                { 
                    //增加图片对应的按钮 
                    btns.append('<span id="picbtn'+i+'" style="cursor:pointer; text-align:center; line-height:30px; width:30px; height:30px; border:solid 1px #ccc;background-color:#eee; font-weight:bold; display:inline-block;"> '+(i+1)+' </span> '); 
                    $('#picbtn'+i).data('index',i); 
                    $('#picbtn'+i).click( 
                        function(event) 
                        { 
                            if(selectedItem.attr('src') == $('#picitem'+$(this).data('index')).attr('src')) 
                            { 
                                return; 
                            } 
                            setSelectedItem($(this).data('index')); 
                        } 
                    ); 
                } 
                btns.append(' '); 
                /// 
                setSelectedItem(0); 
                //显示指定的图片index 
                function setSelectedItem(index) 
                { 
                    selectedIndex = index; 
                    clearInterval(playID); 
                    //alert(index); 
                    if(selectedItem)selectedItem.fadeOut('fast'); 
                    selectedItem = $('#picitem'+index); 
                    selectedItem.fadeIn('slow'); 
                    // 
					
                    if(selectedBtn) 
                    { 
                        selectedBtn.css('backgroundColor','#eee'); 
                        selectedBtn.css('color','#000'); 
                    } 
                    selectedBtn = $('#picbtn'+index); 
                    selectedBtn.css('backgroundColor','#567681'); 
                    selectedBtn.css('color','#fff'); 
                    //自动播放 
                    playID = setInterval(function() 
                    { 
                        var index = selectedIndex+1; 
                        if(index > pics.length-1)index=0; 
                        setSelectedItem(index); 
                    },pics[index].time); 
                } 
            } 
         //退出系统方法
	function logout() {
		_confirm('您确定要退出吗?',null,
				function(){
					location.href = '${baseurl}logout.action';
				}
		)
	}
             

        </script> 
			</header> 
            
       
        
        
        <div class="kaohe" style="margin-top: 30px;">
        <div class="t">为什么选择我们？</div>
        <div class="wrapper">
            <div style="float: left; width: 30px">
                &nbsp;</div>
            <ul class="kaohe_list">
             
              <li>
                    <img src="img/index_intro1.jpg" width="100" height="100" />
                    <p class="kaohe_tit">
                        实名认证</p>
                    <p class="p2">
                        服务人员上岗前不仅要经过面试，均需通过实名认证，身份证检验，证明无犯罪记录认证，并且定期体检持健康证。</p>
                </li>
                <li>
                    <img src="img/index_intro3.jpg" width="100" height="100" />
                    <p class="kaohe_tit">
                        服务质量保证</p>
                    <p class="p2">
                        我们对服务人员经过严格筛选，有专业的服务管理，填写您需要的服务，点击即可上门服务，方便、快捷，争取为您带来最好的服务体验。</p>
                </li>
                <a id="1"></a>
              <li class="last">
                    <img src="img/index_intro4.jpg" width="100" height="100"  />
                    <p class="kaohe_tit">
                        满意度考核</p>
                    <p class="p2">
                        定期考核供应商的服务水平，对于评分较低的供应商我们将给予3次警告若依旧不见供应商有任何改进，我们
                        将取消其资格。</p>
                </li>
                
          </ul>
        </div>
        
    </div>
        <div class="search" id="search">
          
        <form action="" method="post">
          
          <a id="2"></a>
          
        <input type="hidden" name="classid" id="classid" value="3" >
        <input type="hidden" name="ph"  value="1" >

        我要找 <select name="servicetype" size="1">
         <option value="老人陪护">老人陪护</option>
  <option value="小孩托管">小孩托管</option>
  <option value="厨嫂">厨嫂</option>
  <option value="月嫂">月嫂</option>
  <option value="钢琴搬运">钢琴搬运</option>
  <option value="家庭搬家">家庭搬家</option>
  <option value="育婴师">育婴师</option>
  <option value="管家">管家</option>
  <option value="公司搬家">公司搬家</option>
  <option value="长途搬家">长途搬家</option>
  <option value="保安">保安</option>
  <option value="催乳师">催乳师</option>
  <option value="家庭开荒">家庭开荒</option>
        </select>
         <select name="timetype" size="1">
         <option value="day">日班</option>
  <option value="小孩托管">临时</option>
  <option value="厨嫂">24小时</option>
  <option value="月嫂">住家</option>
  <option value="钢琴搬运">钟点</option>
  <option value="家庭搬家">不限</option>

        </select>
        
        &nbsp;年龄
        <input type="hidden"  id="nl" name="nl" value="30__49">
	 <select  id="nl1" onChange="nl.value=nl1.value+'__'+nl2.value"><option value="18">18</option>
		<option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option>
		<option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option>
		<option value="30" selected="selected">30</option><option value="31">31</option><option value="32">32</option><option value="33">33</option>
		<option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option>
		<option value="38">38</option><option value="39">39</option><option value="40">40</option><option value="41">41</option>
		<option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option>
		<option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49">49</option>
		<option value="50">50</option><option value="51">51</option><option value="52">52</option><option value="53">53</option>
		<option value="54">54</option><option value="55">55</option><option value="56">56</option><option value="57">57</option>
		<option value="58">58</option><option value="59">59</option><option value="60">60</option><option value="61">61</option>
		<option value="62">62</option><option value="63">63</option><option value="64">64</option><option value="65">65</option></select> 至 <select  id="nl2" onChange="nl.value=nl1.value+'__'+nl2.value"><option value="18">18</option>
		<option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option>
		<option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option>
		<option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option><option value="32">32</option><option value="33">33</option>
		<option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option>
		<option value="38">38</option><option value="39">39</option><option value="40">40</option><option value="41">41</option>
		<option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option>
		<option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49" selected="selected">49</option>
		<option value="50">50</option><option value="51">51</option><option value="52">52</option><option value="53">53</option>
		<option value="54">54</option><option value="55">55</option><option value="56">56</option><option value="57">57</option>
		<option value="58">58</option><option value="59">59</option><option value="60">60</option><option value="61">61</option>
		<option value="62">62</option><option value="63">63</option><option value="64">64</option><option value="65">65</option> </select> 
		岁
        &nbsp;<select name='area' id='area' onChange="getCity()">
    <option value="">选择省份</option>
    <option value='北京' >北京</option><option value='天津' >天津</option><option value='上海' >上海</option><option value='重庆' >重庆</option><option value='河北' >河北</option><option value='河南' >河南</option><option value='黑龙江' >黑龙江</option><option value='吉林' >吉林</option><option value='辽宁' >辽宁</option><option value='山东' >山东</option><option value='内蒙古' >内蒙古</option><option value='江苏' >江苏</option><option value='安徽' >安徽</option><option value='山西' >山西</option><option value='陕西' >陕西</option><option value='甘肃' >甘肃</option><option value='浙江' >浙江</option><option value='江西' >江西</option><option value='湖北' >湖北</option><option value='湖南' >湖南</option><option value='贵州' >贵州</option><option value='四川' >四川</option><option value='云南' >云南</option><option value='新疆' >新疆</option><option value='宁夏' >宁夏</option><option value='青海' >青海</option><option value='西藏' >西藏</option><option value='广西' >广西</option><option value='广东' >广东</option><option value='福建' >福建</option><option value='海南' >海南</option><option value='台湾' >台湾</option><option value='香港' >香港</option><option value='澳门' >澳门</option></select>
<select name='street' id="street">
    <option  value="">选择城市</option>
    </select>
    &nbsp;&nbsp;&nbsp;<input name="submit" type="submit" class="button" value="提交"/>


        </form>
        
        
        </div>
    
    <div id="servicetuijian" class="tuijian">
        <div id="title">
        
   <img src="img/tuijian.jpg" width="1344" height="50"> </div>
      <div id="servicecompany">
      
      <ul > 
      <c:forEach items="${providerlist }" var="provider" varStatus="vs" >
   

      <li> 
     
      <a href="${baseurl}servicershow.action?id=${provider.id}"><img src="/path/${provider.pic }" width="293" height="220"></a>
     
                   
              <p class="kaohe_tit">
                      ${provider.companyName }
                      </p>
                      
         <c:choose>  
    <c:when test="${provider.starNumber=='5'}"> 
    <p>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
         
        </p>
        </c:when>  
    <c:when test="${provider.starNumber=='4'}">  
    <p>
         <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        </p>
    </c:when>  
    <c:when test="${provider.starNumber=='3'}">  
                <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
    </c:when>  
    <c:when test="${provider.starNumber=='2'}">  
         <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
    </c:when>  
    <c:when test="${provider.starNumber=='1'}">  
         <img src="img/star3.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
    </c:when> 
    <c:when test="${provider.starNumber=='0'}">  
         <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
        <img src="img/star4.png" width="23" height="26"/>
    </c:when> 
</c:choose>  
           <p style="letter-spacing:3px;font-size:20px;">${provider.starNumber}.0分</p>         
                       
                        
                         <p>  ${provider.companyType }公司</p>
                         </li>
                    
                    
                        
                      
                       </c:forEach> 
                     
                       
     
      
     
   
      </ul>
      </div>
      </div>
      

      
      <footer class="bottom">
        <div class="footer-main">
            <p class="footer-nav"><a href="jsp/first.jsp" target="_blank" class="a1">微家政首页</a>|<a href="jsp/admit.jsp" target="_blank" class="a1">服务承诺</a>|<a href="jsp/safe.jsp" target="_blank" class="a1">安全保障</a>|<a href="jsp/advice.jsp" target="_blank" class="a1">投诉建议</a>|<a href="jsp/contact.jsp" target="_blank" class="a1">关于我们</a></p>
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
