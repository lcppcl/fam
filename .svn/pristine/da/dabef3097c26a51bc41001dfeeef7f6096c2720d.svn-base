<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>用户中心</title>
<meta name="description" content="Minimal empty page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="/fam/web/assets/js/jquery-2.0.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="/fam/web/assets/css/nav.css" />
<script type="text/javascript" src="/fam/web/assets/js/nav.js"></script>
<link href="/fam/web/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/fam/web/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="/fam/web/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="/fam/web/assets/css/ace.min.css" />
<link rel="stylesheet" href="/fam/web/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="/fam/web/assets/css/ace-skins.min.css" />
<script>
	$(function start() {
		$("#list").slideDown(500);
	});
</script>
</head>

<body window.onload="start()">
	<div class="top"></div>
	<div class="bottom"></div>
	<div id="list">
		<form class="form-horizontal" role="form"
			action="/fam/RegisterServlet" method="post">
			<caption>
				<!-- 后台返回信息显示 -->
				<label id="Msg" style="color: #F00">${mag1 }</label>
			</caption>
			<h4 class="header white lighter"
				style="position: absolute; top: -50px; left: -50px;">
				<i class="icon-pencil"></i> <span style="font-size: 20px;">请输入您的账号资料</span>
			</h4>
			<br> <br>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="请输入8位以上登陆账户" id="acount" size="32"
						onChange='check("acount")' name="RegisterName" /> <i
						class="icon-user orange " style="position: relative; left: -25px;"></i>
					<span id="acountCheck" class="check" hidden="true" style="font-size:12px">用户名不得为空！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="password" placeholder="请输入8位以上密码" id="password"
						size="32" onChange='check("password")' name="password1" /> <i
						class="icon-lock orange " style="position: relative; left: -25px;"></i>
					<span id="passwordCheck" class="check" hidden="true" style="font-size:12px">密码不得低于8位！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="password" placeholder="请再次输入密码" id="cpassword"
						size="32" onChange='check("cpassword")' name="password2" /> <i
						class="icon-repeat orange "
						style="position: relative; left: -25px;"></i> <span
						id="cpasswordCheck" class="check" hidden="true" style="font-size:12px">两次输入密码不同！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="请输入真实姓名" id="Realname" size="32"
						onChange='check("Realname")' name="RealName" /> <i
						class="icon-comment orange "
						style="position: relative; left: -25px;"></i> <span id="RealnameCheck"
						class="check" hidden="true" style="font-size:12px">姓名不能为空！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="请输入您的性别" id="Sex" size="32"
						onChange='check("Sex")' name="Sex" /> <i class="icon-leaf orange "
						style="position: relative; left: -25px;"></i> <span id="SexCheck"
						class="check" hidden="true" style="font-size:12px">性别不能为空！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="请输入您的民族" id="Nation" size="32"
						onChange='check("Nation")' name="Nation" /> <i
						class="icon-group orange "
						style="position: relative; left: -25px;"></i> <span id="NationCheck"
						class="check" hidden="true" style="font-size:12px">民族不能为空！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="请输入工作地点" id="WorkSpace" size="32"
						onChange='check("WorkSpace")' name="WorkSpace" /> <i
						class="icon-home orange " style="position: relative; left: -25px;"></i>
					<span id="WorkSpaceCheck" class="check" hidden="true" style="font-size:12px">工作地点不能为空！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="身份证号" id="Id" size="32"
						onChange='check("Id")' name="IdCard" /> <i
						class="icon-credit-card orange "
						style="position: relative; left: -25px;"></i> <span id="IdCheck"
						class="check" hidden="true" style="font-size:12px">身份证号错误！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="教育程度" id="Education" size="32"
						onChange='check("Education")' name="Education" /> <i
						class="icon-book orange " style="position: relative; left: -25px;"></i>
					<span id="EducationCheck" class="check" hidden="true" style="font-size:12px">教育程度不能为空！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="政治面貌" id="Political" size="32"
						onChange='check("Political")' name="Political" /> <i
						class="icon-list-alt orange "
						style="position: relative; left: -25px;"></i> <span id="PoliticalCheck"
						class="check" hidden="true" style="font-size:12px">政治面貌不能为空！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="请输入手机号码" id="tel" size="32"
						onChange='check("tel")' name="Phone" /> <i
						class="icon-phone orange "
						style="position: relative; left: -25px;"></i> <span id="telCheck"
						class="check" hidden="true" style="font-size:12px">号码位数错误！</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9">
					<input type="text" placeholder="邮箱" id="tel" size="32"
						name="email" /> <i
						class="icon-phone orange "
						style="position: relative; left: -25px;"></i> <span id="telCheck"
						class="check" hidden="true" style="font-size:12px">号码位数错误！</span>
				</div>
			</div>
		
			<button onclick="validate1()" type="submit"
				class="width-35 pull-right btn btn-sm btn-primary"
				style="position: absolute; top: 570px; left: 40px;">
				<i class="icon-key"></i> <span>注册</span>
			</button>
	</div>
	</form>

</body>
<script src="/fam/web/assets/js/ace-extra.min.js"></script>
<script src="/fam/web/assets/js/bootstrap.min.js"></script>
<script src="/fam/web/assets/js/typeahead-bs2.min.js"></script>
<script src="/fam/web/assets/js/ace-elements.min.js"></script>
<script src="/fam/web/assets/js/ace.min.js"></script>
<script type="text/javascript">
	window.jQuery
			|| document.write("<script src='/fam/web/assets/js/jquery-2.0.3.min.js'>"
					+ "<" + "/script>");
</script>
<script type="text/javascript">
	if ("ontouchend" in document)
		document.write("<script src='/fam/web/assets/js/jquery.mobile.custom.min.js'>"
				+ "<" + "/script>");
</script>

</html>