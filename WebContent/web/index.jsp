<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%
	String path = request.getContextPath() + "/";
%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel="stylesheet" type="text/css" href="<%=path%>web/css/head.css" />
<link href="<%=path%>web/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<script src="<%=path%>web/js/jquery-2.0.3.min.js"></script>
<script src="<%=path%>web/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".navmenu").mouseover(function() {
			$(this).children("ul").show();
		})
		$(".navmenu").mouseout(function() {
			$(this).children("ul").hide();
		})
	})
	$(function() {
		$(".aboutmenu").mouseover(function() {
			$(this).children("div").show();
		})
	})
	$(function show() {
		$("#show").show();
	})

	function AutoScroll(obj) {
		$(obj).find("ul:first").animate({
			marginTop : "-25px"
		}, 500, function() {
			$(this).css({
				marginTop : "0px"
			}).find("li:first").appendTo(this);
		});
	}
	$(document).ready(function() {
		setInterval('AutoScroll("#scrollDiv")', 1000)
	});
</script>

</head>

<body window.onload="show()";>
	<div class="top">
		<div class="top-text">
			<span>党工会综合信息管理</span>
		</div>
		<div>
			<div class="top-load">
				<span class="glyphicon glyphicon-user" style="color: white;">&nbsp;</span><a
					href="<%=path%>web/login.jsp">登陆</a>&nbsp;&nbsp;&nbsp;<span>|</span>
				&nbsp; <a href="<%=path%>web/register.jsp">注册</a>
			</div>
		</div>
	</div>
	<div class="nav">
		<ul>
			<li><a class="nav-font" href="#">首页</a></li>
			<li style="width:1px;color:lightgray;">|</li>
			<li class="navmenu"><a class="nav-font" href="/fam/AppInformationServlet">资料提交</a>
				<ul>
					<li><a href="/fam/AppInformationServlet">先进个人提交</a></li>
					<li><a href="/fam/AppInformationServlet">先进集体提交</a></li>
				</ul>
			</li>
			<li style="width:1px;color:lightgray;">|</li>
			<li class="navmenu"><a class="nav-font" href="/fam/AppInformationServlet">资料查询</a>
				<ul>
					<li><a href="/fam/AppInformationServlet">先进个人查询</a></li>
					<li><a href="/fam/AppInformationServlet">先进集体查询</a></li>
				</ul>
			</li>
			<li style="width:1px;color:lightgray;">|</li>
			<li><a class="nav-font" href="#">职工名单</a></li>
			<li style="width:1px;color:lightgray;">|</li>
			<li><a class="nav-font" href="#">专题报告</a></li>
			<li style="width:1px;color:lightgray;">|</li>
			<li class="navmenu"><a class="nav-font" href="#">信息反馈</a>
				<ul>
					<li><a href="#">意见反馈</a></li>
					<li><a href="#">在线客服</a></li>
				</ul>
			</li>
			<li style="width:1px;color:lightgray;">|</li>
			<li class="navmenu"><a class="nav-font" href="#">关于我们</a>
				<ul>
					<li><a href="#">企业文化</a></li>
					<li><a href="#">企业荣誉</a></li>
					<li><a href="#">党团工会</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<div id="myCarousel" class="carousel slide" data-ride="carousel"
		data-interval="2500">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="<%=path%>web/img/img1.png" alt="First slide">
			</div>
			<div class="item">
				<img src="<%=path%>web/img/img2.png" alt="Second slide">
			</div>
			<div class="item">
				<img src="<%=path%>web/img/img3.png" alt="Third slide">
			</div>
		</div>
		<a href="#myCarousel" data-slide="prev"></a> <a href="#myCarousel"
			data-slide="next"></a>
	</div>
	<div class="news">
		<span><i class="glyphicon glyphicon-align-left"></i> 滚动新闻 ：</span>
		<div id="scrollDiv">
			<ul>
				<li>【热烈祝贺】全国贸联会代表热议南京新百创新转型，市领导亲临大会。 &nbsp;&nbsp;&nbsp;&nbsp;<i
					style="color: #D4141C;">2015/05/13</i></li>
				<li>【欧洲时报】英老牌百货拟明年进军中国 看好当地零售业前景。 &nbsp;&nbsp;&nbsp;&nbsp;<i
					style="color: #D4141C;">2015/05/13</i></li>
				<li>【欧洲时报】威廉王子出席“创意英伦”盛典 会见集团董事长。 &nbsp;&nbsp;&nbsp;&nbsp;<i
					style="color: #D4141C;">2015/05/13</i></li>
			</ul>
		</div>
		<span style="position: absolute; left: 810px;"><i
			class="glyphicon glyphicon-hand-down"></i>更多</span>
	</div>
	<div class="about">
		<img src="<%=path%>web/img/head1.png" />
	</div>
	<div class="about3">
		<ul>
			<li class="aboutmenu"><a href="#">先进介绍</a>
				<div id="show" class="children">
					<img src="<%=path%>web/img/1.png" />
				</div></li>
			<li class="aboutmenu"><a href="#">荣誉榜单</a>
				<div class="children" style="left: -100px;">
					<img src="<%=path%>web/img/2.png" />
				</div></li>
			<li class="aboutmenu"><a href="#">关于我们</a>
				<div class="children" style="left: -200px;">
					<img src="<%=path%>web/img/3.png" />
				</div></li>
			<li class="aboutmenu"><a href="#">在线客服</a>
				<div class="children" style="left: -300px;">
					<img src="<%=path%>web/img/4.png" />
				</div></li>
			<li class="aboutmenu"><a href="#">问题申报</a>
				<div class="children" style="left: -400px;">
					<img src="<%=path%>web/img/5.png" />
				</div></li>
		</ul>
	</div>
	<div class="about2">
		<img src="<%=path%>web/img/head2.png" />
	</div>
	<div class="bottom">
		<span>版权所有：XX集团有限公司 Copyright ? 2012 www.sanpowergroup.com |
			All Rights Reserved | 苏ICP备：05013575号-2</span>
	</div>
</body>

</html>