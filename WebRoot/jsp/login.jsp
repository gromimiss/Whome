<%@ page contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" >
<%@ include file="tag.jsp"%>
<html>
<head>
<base href="<%=basePath%>">
<title>登录</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${baseurl}CSS/style.css"/>
</head>
   	<style type="text/css">
   	#mian span a {
   		font-size: 12.5px;
	color: #666;
	line-height: 50px;
	font-family: "宋体";
	margin-bottom: 30px;


   	}
   	</style>

<body>

<div id="container">
<h1>登录</h1>
<div id="mian">
<form action="${baseurl}login.action" method="post" >
<input type="text" autofocus required class="input" id="usercode" name="username" placeholder="用户名">   
<input type="password" required class="input" id="password" name="password" placeholder="密码">
<div class="block">
<input id="RemmerMe" name="RememerMe" type="checkbox" class="remeberme" />

<label for="RemmerMe">记住密码</label>
<span class="reg"><a href="jsp/register.jsp">立即注册?</a></span>
</div>
<input name="submit" type="submit" class="button" value="登录"/><br />
</form>

</div>

</div>

</body>
</html>

