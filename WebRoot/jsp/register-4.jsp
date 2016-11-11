<%@ page contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="CSS/register - 3.css" />
<title>注册</title>


</head>


<body>
<div id="content">
<div id="choose" class="choose">
<input class="registercloose" type="button"   value="居民注册" />
<input type="button" class="registercloose2"  value="供应商注册"/>

</div>




<div class="container2" id="container2">
<div class="img" id="img" >
  <img src="img/step-4.jpg"width="740" height="28" /> </div>

<div id="mian2" height="350"class="mian" >


<div class="table" >
<p>完成注册...</p>
<p>点击立即<a href="">登录</a></p>

</div>


</div>
<div id="saying2" class="saying2"><br />加入<span>微家政</span>，<br />&nbsp;&nbsp;体验<span>无微不至</span>的<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生活。
<br />

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有账号？<a href="jsp/login.html">立即登录</a><p>
</div>
</div>

</body>
</html>
