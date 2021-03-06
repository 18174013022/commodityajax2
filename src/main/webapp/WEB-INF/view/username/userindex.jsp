<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@include file="/assets/jspfactory.jsp"%>
</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-background-color="white"
			data-active-color="danger">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="#" class="simple-text"> 超市管理系统 </a>
				</div>
				<ul class="nav">
					<li class="active"><a href="dashboard.html"> <i class="ti-panel"></i>
							<p>用户信息列表</p>
					</a></li>
					<li><a> <i class="ti-user"></i>
							<p id="addClassify">添加用户名</p>
					</a></li>
					<li><a href="${ctxPath}/commodity/getCommodityShowJsp.kexin"> <i class="ti-view-list-alt"></i>
							<p>返回首页</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">用户名信息</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="ti-panel"></i>
								<p>用户名管理</p> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${ctxPath}/user/getFindUserJsp.kexin">查询用户名</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="ti-bell"></i>								 
								<p>分类管理</p> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${ctxPath}/classify/getFindClassifyJsp.kexin">查询分类</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			</nav>		 
			<div class="content">
				<div class="container-fluid">			
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">用户名信息</h4>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-striped">
										<thead>
											<th>用户名Id</th>
                                            <th>用户名</th>
                                            <th>用户名密码</th>
                                            <th>编辑用户名</th>
                                            <th>删除用户名</th>
										</thead>
										  
											<tbody>
											    
											    
											</tbody>
										 
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $(function(){
    	 alert("展示用户信息");
    	 $.get("${ctxPath}/user/findUser.kexin",function(data){
    		 $.each($.parseJSON(data),function(index,value){
 				$("tbody").append("<tr><td>"+value.userId+"</td><td>"+value.loginName+"</td><td>"+value.passWord+"</td><td><a href='${ctxPath}/user/getUpdateUserJsp.kexin?userId="+value.userId+"'>编辑用户</a></td><td><a href='${ctxPath}/user/deleteUserName.kexin?userId="+value.userId+"'>删除用户</a></td></tr>");
 			});  	
    	 });
    });
</script>	
<script type="text/javascript">
    $(function(){
    	$("#addClassify").click(function(){   	    	 
    		$(".row").load("${ctxPath}/user/returnAddUserJsp.kexin",function(){ 
    			alert("load方法执行了");
    		}); 
    	});  	 
    });
</script>	
</body>
</html>