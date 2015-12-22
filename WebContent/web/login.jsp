<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆</title>
<meta charset="utf-8" />
<script src="/fam/web/assets/js/jquery-2.0.3.min.js"></script>
<link href="/fam/web/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/fam/web/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="/fam/web/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="/fam/web/assets/css/ace.min.css" />
<link rel="stylesheet" href="/fam/web/assets/css/ace-rtl.min.css" />
<style type="text/css">
* {
	margin: 0;
	font-family: "微软雅黑";
}

.top {
	background-color: #99CC66;
	height: 320px;
	width: 100%;
}

.bottom {
	position: relative;
	background-color: blanchedalmond;
	width: 100%;
	height: 275px;
}

#forgot-box {
	display: none;
}

span {
	font-size: 16px;
}

.center span {
	position: relative;
	letter-spacing: 10px;
	margin-left: 20px;
	font-size: 30px;
}

.center {
	margin-bottom: 50px;
}

.row a:hover {
	text-decoration: none;
}

.row a {
	text-decoration: none;
}

.back {
	color: whitesmoke;
}

.row {
	position: absolute;
	top: 100px;
	left: 530px;
}

#list {
	position: absolute;
	top: 30px;
	left: 380px;
	width: 420px;
	height: 530px;
	z-index: 1;
	background-color: #99CCCC;
	display: none;
}
</style>
<script>
	$(function() {
		$(".forgot a").click(function() {
			$("#login-box").slideUp(500, function() {
				$("#forgot-box").slideDown(500);
			});
		});
	});
	$(function() {
		$(".back a").click(function() {
			$("#forgot-box").slideUp(500, function() {
				$("#login-box").slideDown(500);
			});
		});
	});
</script>
</head>

<body>
	<div class="top"></div>
	<div class="bottom"></div>
	<div class="row">
		<div class="login-container">
			<div class="center" style="font-weight: bolder;">
				<h1>

					<i class="icon-cloud" style="color: whitesmoke;"></i> <span
						class="white">用户登录</span>

				</h1>
			</div>

			<div id="login-box" class="login-box visible widget-box no-border">
				<div class="widget-body">
					<div class="widget-main">
						<h4 class="header blue lighter bigger">

							<i class="icon-user green"></i> 请输入您的账号登陆

						</h4>
						<form action="/fam/loginServlet" method="post">
							<caption>
								<!-- 后台返回信息显示 -->
								<label id="Msg" style="color: #F00">${msg1 }</label>
							</caption>
							<fieldset>
								<label class="block clearfix"> <span
									class="block input-icon input-icon-right"> <input
										type="text" class="form-control" placeholder="请输入用户名"
										name="name" /> <i class="icon-user"></i>

								</span>
								</label> <label class="block clearfix"> <span
									class="block input-icon input-icon-right"> <input
										type="password" class="form-control" placeholder="请输入密码"
										name="Password" /> <i class="icon-lock"></i>

								</span>
								</label>

								<div class="space"></div>

								<div class="clearfix">
									<label class="inline"> <input type="checkbox"
										class="ace" /> <span class="lbl"> 记住我的信息</span>
									</label>

									<button type="submit"
										class="width-35 pull-right btn btn-sm btn-primary">
										<i class="icon-key"></i> <span>登陆</span>
									</button>
								</div>

								<div class="space-4"></div>
							</fieldset>
						</form>
					</div>
					<!-- /widget-main -->
					<div class="toolbar clearfix">
						<div class="forgot">
							<a href="#" class="forgot-password-link"> <i
								class="icon-arrow-left"></i> 忘记密码
							</a>
						</div>

						<div class="add">
							<a href="/fam/web/register.jsp" class="user-signup-link"> <i
								class="icon-arrow-right"></i>注册账号
							</a>
						</div>
					</div>
				</div>
				<!-- /widget-body -->
			</div>
			<!-- /login-box -->

			<div id="forgot-box" class="forgot-box widget-box no-border">
				<div class="widget-body">
					<div class="widget-main">
						<h4 class="header blue lighter bigger">

							<i class="icon-key"></i> 重置密码

						</h4>

						<div class="space-6"></div>
						<p>请输入您的邮箱</p>

						<form action="/fam/ForgetPwd" method="post">
							<fieldset>
								<label class="block clearfix"> <span
									class="block input-icon input-icon-right">
									 <input type="text" name="email" class="form-control" placeholder="Email" /> 
										<i class="icon-envelope"></i>
								</span>
								</label>

								<div class="clearfix"
									style="position: relative; margin-top: 15px;">
									<input type="submit"class="width-35 pull-right btn btn-sm btn-info" value="发送">
										<i class="icon-lightbulb"></i> 
									</input>
									</form>
								</div>
							</fieldset>
						</form>
					</div>
					<!-- /widget-main -->

					<div class="toolbar center"
						style="background-color: cornflowerblue;">
						<div class="back">
							<a href="#" class="back-to-login-link"> 返回登陆 <i
								class="icon-arrow-right"></i>

							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='/fam/web/assets/js/jquery-2.0.3.min.js'>"
								+ "<" + "/script>");
	</script>
	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='/fam/web/assets/js/jquery.mobile.custom.min.js'>"
							+ "<" + "/script>");
	</script>
	<script type="text/javascript">
		function show_box(id) {
			jQuery('.widget-box.visible').removeClass('visible');
			jQuery('#' + id).addClass('visible');
		}
	</script>
</body>

</html>