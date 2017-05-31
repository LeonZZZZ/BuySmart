<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	Object obj = session.getAttribute("userFullName");
	if(obj==null){
		response.sendRedirect("/BuySmart/index.jsp");
		return ;
	}
 %> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>我的申请</title>
		<link rel="stylesheet" href="/BuySmart/css/amazeui.css" />
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="/BuySmart/css/core.css" />
		<link rel="stylesheet" href="/BuySmart/css/menu.css" />
		<link rel="stylesheet" href="/BuySmart/css/index.css" />
		<link rel="stylesheet" href="/BuySmart/css/admin.css" />
		<link rel="stylesheet" href="/BuySmart/css/page/typography.css" />
		<link rel="stylesheet" href="/BuySmart/css/page/form.css" />
	</head>
	<body>
		<!-- Begin Top bar -->
		<header class="am-topbar am-topbar-fixed-top">		
			<div class="am-topbar-left am-hide-sm-only">
                <a class="logo"><span>BuySmart</span><i class="zmdi zmdi-layers"></i></a>
            </div>
	
			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li><h4 class="page-title">Title</h4></li>
				</ul>
				
				<ul class="am-nav am-navbar-nav am-navbar-right">
					<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
					<li class="hidden-xs am-hide-sm-only">
                        <!--  <form role="search" class="app-search">
                            <input type="text" placeholder="Search..." class="form-control">
                            <a href=""><img src="/BuySmart/images/search.png"></a>
                        </form> -->
                    </li>
				</ul>
			</div>
		</header>
		<!-- end top bar -->
		
		
		<div class="admin">
			<!-- sidebar start -->
				  <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
				    <div class="am-offcanvas-bar admin-offcanvas-bar">
				    	<!-- User -->
						<div class="user-box am-hide-sm-only">
	                        <h3><a href="#">欢迎， <%=obj %></a> </h3>
	                    </div>
	                    <!-- End User -->
	            
						 <ul class="am-list admin-sidebar-list">
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 申请 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
						        <li><a href="table_basic.html" class="am-cf"> 提交申请</span></a></li>
						        <li><a href="table_complete.html"> 历史申请</a></li>
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="am-icon-file"></span> 批准 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
						        <li><a href="form_basic.html" class="am-cf"> 待审批项目</a></li>
						        <li><a href="form_validate.html"> 已批准项目</a></li>   
						      </ul>
						    </li>
						    
						    <li><a href="../index.html"><span class="am-icon-home"></span> 商品购买信息</a></li>
						    
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav3'}"><span class="am-icon-file"></span> 商品入库 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav3">
						        <li><a href="form_basic.html" class="am-cf"> 新的入库</a></li>
						        <li><a href="form_validate.html"> 入库历史</a></li>   
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav4'}"><span class="am-icon-file"></span> 管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav4">
						        <li><a href="form_basic.html" class="am-cf"> 我的信息</a></li>
						        <li><a href="form_validate.html"> 添加新用户</a></li>   
						      </ul>
						    </li>
						  </ul>
				</div>
				  </div>
		<!-- ========== Left Sidebar end ========== -->
		
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="card-box">
					<!-- Row start -->
					<div class="am-g">
						<div class="am-u-sm-12 am-u-md-6">
				          <div class="am-btn-toolbar">
				            <div class="am-btn-group am-btn-group-xs">
				              <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 历史申请</button>
				              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 待批准申请</button>
				              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 已批准申请</button>
				            </div>
				          </div>
				        </div>	
				        
						<!--  
						<div class="am-u-sm-12 am-u-md-3">
				          <div class="am-input-group am-input-group-sm">
				            <input type="text" class="am-form-field">
				          <span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
				          </div>
				        </div>
				        -->
				      </div>
					  <!-- Row end -->
					  
					  <!-- Row start -->
					  	<div class="am-g">
        <div class="am-u-sm-12">
          <form class="am-form">
            <table class="am-table am-table-striped am-table-hover table-main">
              <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th><th class="table-id">ID</th><th class="table-title">标题</th><th class="table-type">价格</th><th class="table-author am-hide-sm-only">申请者</th><th class="table-date am-hide-sm-only">申请日期</th><th class="table-set">状态</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td><input type="checkbox" /></td>
                <td>1</td>
                <td><a href="#">Business management</a></td>
                <td>default</td>
                <td class="am-hide-sm-only">测试1号</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                      <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</button>
                      <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td><input type="checkbox" /></td>
                <td>2</td>
                <td><a href="#">Business management</a></td>
                <td>default</td>
                <td class="am-hide-sm-only">测试1号</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                      <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</button>
                      <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                    </div>
                  </div>
                </td>
              </tr>
              
              
              </tbody>
            </table>
            <div class="am-cf">
              共 15 条记录
              <div class="am-fr">
                <ul class="am-pagination">
                  <li class="am-disabled"><a href="#">«</a></li>
                  <li class="am-active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">»</a></li>
                </ul>
              </div>
            </div>
          </form>
        </div>

      </div>
					  <!-- Row end -->
					  
					</div>
				
				
				
				
				</div>
			

			</div>
		</div>
		<!-- end right Content here -->
		
		</div>
		</div>
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="/BuySmart/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="/BuySmart/js/amazeui.min.js"></script>
		<script type="text/javascript" src="/BuySmart/js/app.js" ></script>
		<script type="text/javascript" src="/BuySmart/js/blockUI.js" ></script>
	</body>
	
</html>
