<!--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>-->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="Minimal empty page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="../assets/js/jquery-2.0.3.min.js"></script>
<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../assets/css/welcome_u.css" />
<link rel="stylesheet" href="../assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="../assets/css/ace-fonts.css" />
<link rel="stylesheet" href="../assets/css/ace.min.css" />
<link rel="stylesheet" href="../assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="../assets/css/ace-skins.min.css" />
<script src="../assets/js/ace-extra.min.js"></script>
<script>
$(function start() {
	$("#sky-hide").slideDown(800,function(){
		$(".sky-text").slideDown(800);
	});
});
</script>
<title>Insert title here</title>
</head>
<body window.onload="start()">
	<div class="main-container" id="main-container">
		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>
			<div class="sidebar" id="sidebar">
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="icon-signal bigger-150"></i>
						</button>

						<button class="btn btn-info">
							<i class="icon-pencil bigger-150"></i>
						</button>

						<button class="btn btn-warning">
							<i class="icon-group bigger-150"></i>
						</button>

						<button class="btn btn-danger">
							<i class="icon-cogs bigger-150"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span> <span class="btn btn-info"></span>

						<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
					</div>
				</div>

				<ul class="nav nav-list">
					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-list"></i> <span class="menu-text"> 用户管理 </span> <b
							class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="user_re.jsp"> <i
									class="icon-double-angle-right"></i> 先进荣誉申报
							</a></li>

							<li><a href="/fam/FindAppInfoServlet"> <i
									class="icon-double-angle-right"></i> 查看状态
							</a></li>
						</ul></li>
					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-list"></i> <span class="menu-text"> 基础管理 </span> <b
							class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="info_re.jsp"> <i
									class="icon-double-angle-right"></i> 个人资料修改
							</a></li>
							<li><a href="pwd.jsp"> <i
									class="icon-double-angle-right"></i> 密码修改
							</a></li>
						</ul></li>
					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-cloud"></i> <span class="menu-text"> 专家咨询 </span>

							<b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="#"> <i class="icon-double-angle-right"></i>
									在线咨询
							</a></li>

							<li><a href="#"> <i class="icon-double-angle-right"></i>
									留言咨询
							</a></li>
						</ul></li>
					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-comment"></i> <span class="menu-text"> 通知管理
						</span> <b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="#"> <i class="icon-double-angle-right"></i>
									站内邮件
							</a></li>

							<li><a href="#"> <i class="icon-double-angle-right"></i>
									系统通知
							</a></li>
						</ul></li>
					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left"
							data-icon1="icon-double-angle-left"
							data-icon2="icon-double-angle-right"></i>
					</div>
			</div>
		</div>
	</div>
	<div class="main-content" style="position: relative;width:100%">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="icon-home home-icon"></i> <a href="#">Home</a></li>

					<li><a href="#">用户中心</a></li>
					<li class="active">欢迎界面</li>
				</ul>
				<!-- .breadcrumb -->

				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> <input type="text"
							placeholder="Search ..." class="nav-search-input"
							id="nav-search-input" autocomplete="off" /> <i
							class="icon-search nav-search-icon"></i>
						</span>
					</form>
				</div>
				<!-- #nav-search -->
			</div>
	<div class="wel-left white">
		<i class="icon-user white"
			style="position: absolute; font-size: 40px; left: 23px; top: 18px;"></i>
	</div>
	<div class="wel">
		<span>Welcom !
			亲爱的${indPer.realName},今天天气不错，要注意多运动哦。</span>
	</div>
	<div class="connect">
		<div class="col-sm-6" style="font-family: '微软雅黑';">
			<div class="widget-header" style="width: 408px;">
				<h4 class="lighter smaller">
					<i class="icon-comment blue"></i> <span style="font-weight: bold;">内网交流中心<span>
				</h4>
			</div>

			<div class="widget-body" id="sky-hide"
				style="position: absolute; width: 422px;">
				<div class="widget-main no-padding">
					<div class="dialogs">
						<div class="itemdiv dialogdiv">
							<div class="user">
								<img alt="Alexa's Avatar" src="../assets/avatars/avatar1.png" />
							</div>

							<div class="body">
								<div class="time">
									<i class="icon-time"></i> <span class="green">4 sec</span>
								</div>

								<div class="name">
									<a href="#">韩梅梅</a>
								</div>
								<div class="text">今天下午2点有没有人陪看电影的？</div>
								<div class="tools">
									<a href="#" class="btn btn-minier btn-info"> <i
										class="icon-only icon-share-alt"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="itemdiv dialogdiv">
							<div class="user">
								<img alt="John's Avatar" src="../assets/avatars/avatar.png" />
							</div>

							<div class="body">
								<div class="time">
									<i class="icon-time"></i> <span class="blue">38 sec</span>
								</div>

								<div class="name">
									<a href="#">S雷</a>
								</div>
								<div class="text">电信一区5黑来来来，4等1！</div>

								<div class="tools">
									<a href="#" class="btn btn-minier btn-info"> <i
										class="icon-only icon-share-alt"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="itemdiv dialogdiv">
							<div class="user">
								<img alt="Bob's Avatar" src="../assets/avatars/user.jpg" />
							</div>

							<div class="body">
								<div class="time">
									<i class="icon-time"></i> <span class="orange">2 min</span>
								</div>

								<div class="name">
									<a href="#">Bob</a> <span
										class="label label-info arrowed arrowed-in-right">admin</span>
								</div>
								<div class="text">不要以为我是外国人就不会说中文。</div>

								<div class="tools">
									<a href="#" class="btn btn-minier btn-info"> <i
										class="icon-only icon-share-alt"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="itemdiv dialogdiv">
							<div class="user">
								<img alt="Jim's Avatar" src="../assets/avatars/avatar4.png" />
							</div>

							<div class="body">
								<div class="time">
									<i class="icon-time"></i> <span class="grey">3 min</span>
								</div>

								<div class="name">
									<a href="#">王二</a>
								</div>
								<div class="text">对，我就是隔壁家老王！</div>

								<div class="tools">
									<a href="#" class="btn btn-minier btn-info"> <i
										class="icon-only icon-share-alt"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="itemdiv dialogdiv">
							<div class="user">
								<img alt="Alexa's Avatar" src="../assets/avatars/avatar1.png" />
							</div>

							<div class="body">
								<div class="time">
									<i class="icon-time"></i> <span class="green">4 min</span>
								</div>

								<div class="name">
									<a href="#">韩梅梅</a>
								</div>
								<div class="text">一群傻逼。</div>

								<div class="tools">
									<a href="#" class="btn btn-minier btn-info"> <i
										class="icon-only icon-share-alt"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<form>
						<div class="form-actions">
							<div class="input-group">
								<input placeholder="请输入内容  ..." type="text" class="form-control"
									name="message" /> <span class="input-group-btn">
									<button class="btn btn-sm btn-info no-radius" type="button">
										<i class="icon-share-alt"></i> 发送
									</button>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="sky">
		<div class="widget-header" style="width: 370px; left: 30px;">
			<h4 class="lighter smaller">
				<i class="icon-cloud blue"></i> <span style="font-weight: bold;">今日天气<span>
			</h4>
			<i class="icon-cog"
				style="color: gray; position: relative; left: 240px;"></i>
		</div>
		<div class="sky-text" class="sky-hide">
			<img src="../img/sky.png" style="position: relative; left: -2px;" />
		</div>
	</div>
</body>
</html>
