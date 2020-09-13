<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>后台管理界面</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Books CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Books Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>book/list.action">后台管理</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>王老师</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>关于学校自习室的安排</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/book/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 图书管理
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> XXXX
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 图书列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">

			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/book/list.action">
					<div class="form-group">
						<label for="bookName">图书名称</label> 
						<input type="text" class="form-control" id="customerName" 
						                   value="${bookName}" name="bookName" />
					</div>
					<div class="form-group">
						<label for="bookFrom">图书来源</label> 
						<select	class="form-control" id="customerFrom" name="bookResource">
							<option value="">--请选择--</option>
							<c:forEach items="${fromType}" var="item">
								<option value="${item.dict_id}"
								       <c:if test="${item.dict_id == bookResource}">selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="bookCategory">所属类别</label> 
						<select	class="form-control" id="custIndustry"  name="bookCategory">
							<option value="">--请选择--</option>
							<c:forEach items="${bookCategory}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == bookCategory}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearBook()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">图书信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>图书名称</th>
								<th>图书来源</th>
								<th>图书类别</th>
								<th>作者</th>
								<th>出版社</th>
								<th>版次</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.book_id}</td>
									<td>${row.book_name}</td>
									<td>${row.book_resource}</td>
									<td>${row.book_category}</td>
									<td>${row.book_writer}</td>
									<td>${row.book_press}</td>
								    <td>${row.book_edition}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editBook(${row.book_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteBook(${row.book_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/book/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 图书列表查询部分  end-->
</div>
<!-- 创建图书模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建图书信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_customer_form">
					<div class="form-group">
						<label for="new_BookName" class="col-sm-2 control-label">
						    图书名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookName" placeholder="图书名称" name="book_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookResource" style="float:left;padding:7px 15px 0 27px;">图书来源</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_customerFrom" name="book_resource">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == bookResource}">selected</c:if>>
									${item.dict_item_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookCategory" style="float:left;padding:7px 15px 0 27px;">图书类别</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_custIndustry"  name="book_category">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == bookCategory}"> selected</c:if>>
									${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookWriter" class="col-sm-2 control-label">作者</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_linkMan" placeholder="作者" name="book_writer" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookPress" class="col-sm-2 control-label">出版社</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_phone" placeholder="出版社" name="book_press" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookEdition" class="col-sm-2 control-label">印刷版次</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_mobile" placeholder="印刷版次" name="book_edition" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createBook()">创建图书</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改图书模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改图书信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_customer_form">
					<input type="hidden" id="edit_book_id" name="book_id"/>
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">图书名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookName" placeholder="图书名称" name="book_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookResource" style="float:left;padding:7px 15px 0 27px;">图书来源</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="edit_bookResource" name="book_resource">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == bookResource}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookCategory" style="float:left;padding:7px 15px 0 27px;">图书类别</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_bookCategory"  name="book_category">
								<option value="">--请选择--</option>
								<c:forEach items="${bookCategory}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == bookCategory}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookWriter" style="float:left;padding:7px 15px 0 27px;">作者</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookWriter" placeholder="作者" name="book_writer" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookPress" class="col-sm-2 control-label">出版社</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookPress" placeholder="出版社" name="book_press" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookEdition" class="col-sm-2 control-label">印刷版次</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookEdition" placeholder="印刷版次" name="book_edition" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateBook()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建图书窗口中的数据
	function clearBook() {
	    $("#new_bookName").val("");
	    $("#new_bookFrom").val("")
	    $("#new_bookCategory").val("")
	    $("#new_bookWriter").val("")
	    $("#new_bookPress").val("");
	    $("#new_bookEdition").val("");
	}
	// 创建图书
	function createBook() {
	$.post("<%=basePath%>book/create.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("图书创建成功！");
	            window.location.reload();
	        }else{
	            alert("图书创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的图书信息
	function editBook(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>book/getBookById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_book_id").val(data.book_id);
	            $("#edit_bookName").val(data.book_name);
	            $("#edit_bookResource").val(data.book_resource)
	            $("#edit_bookCategory").val(data.book_category)
	            $("#edit_bookWriter").val(data.book_writer)
	            $("#edit_bookPress").val(data.book_press)
	            $("#edit_bookEdition").val(data.book_edition);
	            
	        }
	    });
	}
    // 执行修改图书操作
	function updateBook() {
		$.post("<%=basePath%>book/update.action",$("#edit_customer_form").serialize(),function(data){
			if(data =="OK"){
				alert("图书信息更新成功！");
				window.location.reload();
			}else{
				alert("图书信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除图书
	function deleteBook(id) {
	    if(confirm('确实要删除该图书吗?')) {
	$.post("<%=basePath%>book/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("图书删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除图书失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>