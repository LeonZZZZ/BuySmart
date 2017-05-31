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
	
		<style type="text/css">
			#div1{    
			    margin-left:30px;
			    margin-right:30px;
			}
		</style>
	</head>
	<body>
		<!-- Begin Top bar -->
		<header class="am-topbar am-topbar-fixed-top">		
			<div class="am-topbar-left am-hide-sm-only">
                <a class="logo"><span>BuySmart</span><i class="zmdi zmdi-layers"></i></a>
            </div>
	
			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li><h4 class="page-title">首页</h4></li>
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
						    <li><a href="/jsp/dashboard/dashboard.jsp"><span class="am-icon-home"></span> 首页</a></li>
						    
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="am-icon-file"></span> 录入 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
						        <li><a href="/jsp/dashboard/dashboard.jsp" class="am-cf"> 收入</a></li>
						        <li><a href="/jsp/dashboard/dashboard.jsp"> 支出</a></li>   
						      </ul>
						    </li>
						    
						    <li><a href="/jsp/dashboard/dashboard.jsp"><span class="am-icon-home"></span> 历史</a></li>
						    
						    <li><a href="/jsp/dashboard/dashboard.jsp"><span class="am-icon-home"></span> 管理</a></li>
						    
						  </ul>
				</div>
				  </div>
		<!-- ========== Left Sidebar end ========== -->
		
		<!-- Start right Content here -->
		<div class="content-page">
			<div class="card-box">
				<h1 class="header-title m-t-0 m-b-30">总资产： 100,010,000.00</h1>
				<div class="widget-chart-1 am-cf">
      
                    <div id="div1" style="float: right;" >
                     	<p class="text-muted">股票</p>
                        <h1 class="p-t-10 m-b-0"> 2100 </h1>
                    </div>
                    <div id="div1" style="float: right;" >
                        <p class="text-muted">基金</p>
                        <h1 class="p-t-10 m-b-0"> 200 </h1>
                    </div>
                    <div id="div1" style="float: right;" >
                        <p class="text-muted">黄金</p>
                        <h1 class="p-t-10 m-b-0"> 235 </h1>                       
                    </div>
                </div>
			</div>
			
			<!-- pie chart -->
			<div class="card-box">
				<div class="am-g">
				
					<!-- pie chart -->
					<div class="am-u-md-6" >
						<!-- 折线图堆叠 -->
						<div class="card-box">
							<div  id="pie1" style="width: 100%;height: 400px;"></div>
						</div>
					</div>	
					<!-- pie chart end -->
					
					<!-- table -->
					<div class="am-u-sm-6">
							<div class="card-box">
								<!-- col start -->
								<table class="am-table">
								    <thead>
								        <tr>
								            <th>网站名称</th>
								            <th>网址</th>
								            <th>创建时间</th>
								        </tr>
								    </thead>
								    <tbody>
								        <tr>
								            <td>Amaze UI</td>
								            <td>http://amazeui.org</td>
								            <td>2012-10-01</td>
								        </tr>
								        <tr>
								            <td>Amaze UI</td>
								            <td>http://amazeui.org</td>
								            <td>2012-10-01</td>
								        </tr>
								        <tr>
								            <td>Amaze UI</td>
								            <td>http://amazeui.org</td>
								            <td>2012-10-01</td>
								        </tr>
								        <tr>
								            <td>Amaze UI</td>
								            <td>http://amazeui.org</td>
								            <td>2012-10-01</td>
								        </tr>
								        <tr>
								            <td>Amaze UI</td>
								            <td>http://amazeui.org</td>
								            <td>2012-10-01</td>
								        </tr>
								    </tbody>
								</table>
								<!-- col end -->
							</div>
						</div>
						<!-- table ends -->
				</div>	
			</div>
			<!-- pie chart -->
			
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
		<script type="text/javascript" src="/BuySmart/js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="/BuySmart/js/charts/pieChart.js" ></script>
	
	</body>
	
</html>
