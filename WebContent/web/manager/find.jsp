<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*" import="cn.fam.beans.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="Minimal empty page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="../assets/js/jquery-2.0.3.min.js"></script>
<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="../assets/css/ace-fonts.css" />
<link rel="stylesheet" href="../assets/css/ace.min.css" />
<link rel="stylesheet" href="../assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="../assets/css/ace-skins.min.css" />
<script src="../assets/js/ace-extra.min.js"></script>
<title>申报列表</title>
</head>
<body>

	<div class="main-content" style="position: relative; left: -190px;width:100%">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="icon-home home-icon"></i> <a href="#">Home</a></li>

					<li><a href="#">用户中心</a></li>
					<li class="active">用户管理</li>
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
						用户管理 <small> <i class="icon-double-angle-right"></i> 申报管理
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
													class="icon-user-md bigger-110 hidden-480"></i> 用户名称</th>
												<th width="200"><i
													class="icon-user bigger-110 hidden-480"></i> 用户类型</th>
												<th width="200"><i
													class="icon-upload bigger-110 hidden-480"></i> 申报状况</th>
												<th width="200"><i
													class="icon-time bigger-110 hidden-480"></i> 荣誉称号</th>
											</tr>
										</thead>
										<tbody>
											<%
												List list = (List) session.getAttribute("list");
												for (int i = 0; i < list.size(); i++) {
													AppInfo app = (AppInfo) list.get(i);
											%>
											<tr>
												<td><%=app.getApplyName() %></td>
												<td><%=app.getType() %></td>
												<td><%=app.getApplyResult() %></td>
												<td><%=app.getHonour() %></td>
											
											</tr>
													
											<%
												}
											%>















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
	<div class="out" style="position: relative; top: 10px; left: -20px;">
		<button type="button"
			class="width-25 pull-right btn btn-sm btn-primary">
			<span>导出</span>
		</button>
	</div>
	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='../assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>
	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='../assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/typeahead-bs2.min.js"></script>
	<script src="../assets/js/jquery.dataTables.min.js"></script>
	<script src="../assets/js/jquery.dataTables.bootstrap.js"></script>
	<script src="../assets/js/ace-elements.min.js"></script>
	<script src="../assets/js/ace.min.js"></script>
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