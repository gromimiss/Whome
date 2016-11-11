<%@ page contentType="text/html; charset=gbk"
   pageEncoding="gbk"%>
   <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="CSS/register - 2.css" />
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
  <img src="img/step-2.jpg" width="740" height="28" /> </div>

<div id="mian2" height="350"class="mian" >

<form action="<%=request.getContextPath() %>/registersteptwo.action" method="post" enctype="multipart/form-data"/>
<div class="table" >

<span >上传证明：</span>

<input type="file" autofocus required class="input" name="pictureFile" >   <br />

</div>

<input name="submit" type="submit" class="button" value="下&nbsp;一&nbsp;步"/>

</form>

</div>
<div id="saying2"><br />加入<span>微家政</span>，<br />&nbsp;&nbsp;体验<span>无微不至</span>的<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生活。
<br />

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有账号？<a href="login.html">立即登录</a><p>
</div>

</div>
</div>

</body>
</html>
