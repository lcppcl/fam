<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户中心</title>
<meta name="description" content="Minimal empty page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="<%=path%>web/assets/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="<%=path%>web/assets/js/nav.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=path%>web/assets/css/nav.css" />
<link href="<%=path%>web/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=path%>web/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=path%>web/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="<%=path%>web/assets/css/ace.min.css" />
<link rel="stylesheet" href="<%=path%>web/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=path%>web/assets/css/ace-skins.min.css" />
</head>

<body style="background-color: white;">
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
				<!-- #sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-list"></i> <span class="menu-text"> 用户管理 </span> <b
							class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="<%=path%>web/user/user_re.jsp"> <i
									class="icon-double-angle-right"></i> 先进荣誉申报
							</a></li>

							<li><a href="<%=path%>FindAppInfoServlet"> <i
									class="icon-double-angle-right"></i> 查看状态
							</a></li>
						</ul></li>
					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-list"></i> <span class="menu-text"> 基础管理 </span> <b
							class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="<%=path%>web/user/info_re.jsp"> <i
									class="icon-double-angle-right"></i> 个人资料修改
							</a></li>
							<li><a href="<%=path%>web/user/pwd.jsp"> <i
									class="icon-double-angle-right"></i> 密码修改
							</a></li>
						</ul></li>
					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-cloud"></i> <span class="menu-text"> 客服咨询 </span>

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
	<div class="main-container-inner">
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="icon-home home-icon"></i> <a href="#">Home</a></li>

					<li><a href="#">用户中心</a></li>
					<li class="active">信息修改</li>
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

			<div class="page-content">
				<div class="page-header">
					<h1>
						添加用户 <small> <i class="icon-double-angle-right"></i>
							填写用户基本信息
						</small>
					</h1>
				</div>
				<!-- /.page-header -->
				<div class="row">
					<div class="user">
						<form class="form-horizontal" role="form"
							action="<%=path%>ModUserServlet" method="post">
							<caption>
								<!-- 后台返回信息显示 -->
								<label id="Msg" style="color: #F00">${msg1 }</label>
							</caption>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 联系电话 </label>
								<div class="col-sm-9">
									<input type="text" size="32" name="Phone" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 工作地点</label>
								<div class="col-sm-9">
									<input type="text" size="32" name="WorkSpace" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 政治面貌 </label>
								<div class="col-sm-9">
									<input type="text" size="32" name="Political" />
								</div>
							</div>
							<input class="btn btn-info" type="submit" name="submit"
								style="position: relative; top: 35px; left: 190px;" /> <input
								class="btn" type="reset" name="reset"
								style="position: relative; top: 35px; left: 300px;" />
					</div>
					</form>
				</div>
				<!-- /.main-content -->
			</div>
		</div>
	</div>
</body>
<script src="<%=path%>web/assets/js/ace-extra.min.js"></script>
<script src="<%=path%>web/assets/js/bootstrap.min.js"></script>
<script src="<%=path%>web/assets/js/typeahead-bs2.min.js"></script>
<script src="<%=path%>web/assets/js/ace-elements.min.js"></script>
<script src="<%=path%>web/assets/js/ace.min.js"></script>
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
</html>