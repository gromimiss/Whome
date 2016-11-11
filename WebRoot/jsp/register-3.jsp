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


</head>


<body>
<div id="content">
<div id="choose" class="choose">
<input class="registercloose2" type="button"   value="居民注册" />
<input type="button" class="registercloose"  value="供应商注册"/>

</div>

<div class="container4" id="container2">
<div class="img" id="img" >
  <img src="img/step-3.jpg" width="740" height="28" /> </div>

<div id="mian2" class="mian">

<form action="<%=request.getContextPath() %>/registerstepthree.action" method="post" />
<div class="table">

<span >公司名称：</span>
<input type="text" autofocus required class="input" id="companyname" name="companyName">   <br />
<span> 公司地址：</span>
 <input type="text" required class="input" id="companyadress" name="companyAddress"><br />
<span>联系方式：</span>
 <input type="text" required class="input" id="telphone" name="companyPhone"><br />

<span>公司类型：</span><br />

<input  name="companyType" type="radio" class="checkbox"  value="保姆">保姆
<input type="radio"  name="companyType" value="搬家">搬家
<input type="radio"  name="companyType" value="清洁">清洁

<span>服务种类：</span><br /><br />

<select name="serviceType" multiple="multiple">
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
  <option value=" 石材翻新养护"> 石材翻新养护</option>
  <option value="楼体外墙清洗">楼体外墙清洗</option>
  <option value="ATM机搬运">ATM机搬运</option>
</select>

</div>

<input name="submit" type="submit" class="button" value="完&nbsp;成"/>

</form>

</div>
<div id="saying2"><br />加入<span>微家政</span>，<br />&nbsp;&nbsp;体验<span>无微不至</span>的<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生活。
<br />
<p>
* 服务种类多选：ctrl+左击</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有账号？<a href="login.html">立即登录</a><p>
</div>

</div>
</div>

</body>
</html>
