<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cn.fam.beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/fam/web/assets/css/nav.css" />
<style type="text/css">
a {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
.return{
    position: absolute;
    top:250px;
    left:450px;
    z-index:1;
}
</style>
<title>您的信息</title>
</head>
<body>
<center>
<div class="top">
 <div class="return">
<h1 style="color:white">您的账号和密码！请勿随意泄露</h1>
<br>
<br>
<br>
<%
VerInfo ver =(VerInfo)session.getAttribute("verInfo");
%>
<center><h1 style="color:#99CC66;font-size:22px">您的登录名是:<%=ver.getUserName() %></h1></center>
<center><h1 style="color:#99CC66;font-size:22px">您的密码是：<%=ver.getPassword() %></h1></center>
<br>
<a href="login.jsp" style="color:#99CC66;font-size:20px">快点去登陆</a>
 </div>
 </div>
 <div class="bottom"></div>
</center>
</body>
</html>