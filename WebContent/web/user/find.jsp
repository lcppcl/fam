<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="Minimal empty page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="<%=path%>web/assets/js/jquery-2.0.3.min.js"></script>
<link href="<%=path%>web/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href="<%=path%>web/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=path%>web/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="<%=path%>web/assets/css/ace.min.css" />
<link rel="stylesheet" href="<%=path%>web/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=path%>web/assets/css/ace-skins.min.css" />
<script src="<%=path%>web/assets/js/ace-extra.min.js"></script>
<title>Insert title here</title>
</head>
<body>
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

							<li><a href="<%=path%>/FindAppInfoServlet"> <i
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
	<div class="main-container-inner">
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb" style="position: relative;">
					<li><i class="icon-home home-icon"></i> <a href="#">Home</a></li>
					<li><a href="#">用户中心</a></li>
					<li class="active">用户查询</li>
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
						用户管理 <small> <i class="icon-double-angle-right"></i> 状态查询
						</small>
					</h1>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="row">
							<!--用户列表界面-->
							<div class="col-xs-12">
								<div class="table-responsive">
									<table id="sample-table-2"
										class="table table-striped table-bordered table-hover"
										style="width: 100%; position: relative;">
										<thead>
											<tr>
												<th width="200"><i
													class="icon-user-md bigger-110 hidden-480"></i> 申请人真实姓名</th>
												<th width="200"><i
													class="icon-user bigger-110 hidden-480"></i> 享受待遇</th>
												<th width="200"><i
													class="icon-upload bigger-110 hidden-480"></i> 申报状况</th>
												<th width="200"><i
													class="icon-time bigger-110 hidden-480"></i> 申请的荣誉称号</th>
												<th width="200"><i
													class="icon-time bigger-110 hidden-480"></i> 取消申请</th>
											</tr>
										</thead>
										<tbody>
											<!-- <tr>
												<td>王二</td>
												<td>先进个人申报用户</td>
												<td>成功</td>
												<td>劳动模范</td>
											</tr> -->
										<caption>
											<!-- 后台返回信息显示 -->
											<label id="Msg" style="color: #F00">${msg1 }</label>
										</caption>
										<c:forEach items="${appinfo}" var="appinfo">
											<tr>
												<td>${appinfo.applyName }</td>
												<td>${appinfo.treatment }</td>
												<td>${appinfo.applyResult }</td>
												<td>${appinfo.honour }</td>
												<td><a href="/fam/DelServlet?honour=${appinfo.honour}">删除</a></td>
											</tr>
										</c:forEach>
										</tbody>

									</table>
								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /span -->
						</div>
						<!-- /row -->
						<div id="modal-table" class="modal fade" tabindex="-1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header no-padding">
										<div class="table-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">
												<span class="white">&times;</span>
											</button>
										</div>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->
	</div>
	<!-- /.main-container-inner -->
	</div>

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='/fam/web/assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>
	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='/fam/web/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="<%=path%>web/assets/js/bootstrap.min.js"></script>
	<script src="<%=path%>web/assets/js/typeahead-bs2.min.js"></script>
	<script src="<%=path%>web/assets/js/jquery.dataTables.min.js"></script>
	<script src="<%=path%>web/assets/js/jquery.dataTables.bootstrap.js"></script>
	<script src="<%=path%>web/assets/js/ace-elements.min.js"></script>
	<script src="<%=path%>web/wassets/js/ace.min.js"></script>
	<script>
		jQuery(function($) {
			var oTable1 = $('#sample-table-2').dataTable({
				"aoColumns" : [ {
					"bSortable" : false
				}, null, null, {
					"bSortable" : false
				} ]
			});

			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

		})
	</script>
</body>
</html>