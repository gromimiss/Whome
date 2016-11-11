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
		<link rel="stylesheet" type="text/css" href="CSS/register.css" />
        
<title>注册</title>

<script src="js/register.js"></script>
</head>


<body>
<div id="content">
<div id="choose" class="choose">
<input id="resident" class="registercloose" type="button"   value="居民注册" />
<input id="company" type="button" class="registercloose2"  value="供应商注册"/>

</div>

<div class="container" id="container" >

<div id="mian" class="mian">





<form action="<%=request.getContextPath() %>/registerSubmit.action" method="post" />
<div class="table">

<span >账号：</span>
<input type="text" autofocus required class="input" id="usercode" name="usercode" placeholder="请输入登记号">   <br />
<span> 密码：</span>
 <input type="password" required class="input" id="password" name="password" placeholder="密码"><br />
<span>确认密码：</span>
 <input type="password" required class="input" id="repassword" name="repassword" placeholder="确认密码"><br />

<span>户主姓名：</span>
<input type="text" required class="input" id="username" name="username" placeholder="户主姓名"><br />

<span>住址：</span>
 <input type="text" required class="input" id="address" name="address" placeholder="家庭住址"><br />

<span>联系方式：</span>
 <input type="text" required class="input" id="phone" name="phone" placeholder="联系方式"><br />

<span>验证码：</span>
<input id="randomcode" name="randomcode" type="text" required class="validate">
 <img id="randomcode_img" src="${baseurl}validatecode.jsp" alt=""
 width="56" height="20" align='absMiddle' />
 <a	href=javascript:randomcode_refresh()>刷新</a><br />



</div>

<input name="submit" type="submit" class="button" value="注&nbsp;&nbsp;册"/>

</form>

</div>
<div id="saying"><br />加入<span>微家政</span>，<br />&nbsp;&nbsp;体验<span>无微不至</span>的<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生活。
<br />
<p>* 登记号为居委会统一分配的具有唯一性的16位数字。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有账号？<a href="login.jsp">立即登录</a><p>
</div>

</div>


<div class="container2" id="container2">
<div class="img" id="img" >
  <img src="img/step-1.jpg" width="740" height="28" /> </div>

<div id="mian2" class="mian">





<form action="<%=request.getContextPath() %>/registerstepone.action" method="post" />
<div class="table">

<span >账号：</span>
<input type="text" autofocus required class="input" id="usercode" name="usercode" placeholder="请输入经营许可证编号">   <br />
<span> 密码：</span>
 <input type="password" required class="input" id="password" name="password" placeholder="密码"><br />
<span>确认密码：</span>
 <input type="password" required class="input" id="repassword" name="repassword" placeholder="确认密码"><br />

<span>邮箱：</span>
<input type="text" required class="input" id="email" name="email" placeholder="常用邮箱"><br />

<span>负责人：</span>
 <input type="text" required class="input" id="principal" name="principal" placeholder="负责人"><br />



<span>验证码：</span>
<input id="randomcode" type="text" required class="validate">
 <img id="randomcode_img" src="${baseurl}validatecode.jsp" alt=""
 width="56" height="20" align='absMiddle' />
 <a	href=javascript:randomcode_refresh()>刷新</a><br />



</div>

<input name="submit" type="submit" class="button" value="下&nbsp;一&nbsp;步"/>

</form>

</div>
<div id="saying2"><br />加入<span>微家政</span>，<br />&nbsp;&nbsp;体验<span>无微不至</span>的<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生活。
<br />
<p>* 经营许可证编号为工商局审批下的编号</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有账号？<a href="jsp/login.html">立即登录</a><p>
</div>

</div>
</div>

</body>
</html>
