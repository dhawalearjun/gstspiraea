<style>
	 	#logoPlace>a:hover {
	    	background-color: #fff;
	    	color: #fafafa;
		}
		
		.sideBarActiveBtn{
			background-color: #fc9e00 !important;
    		color: white !important;
		}
		
		.sideBarActiveBtn i{
			color: white !important;
		}
		
		    
 </style>
<div class="sidebar">
	<ul class="widget widget-menu unstyled">
		<li style="text-align:center;" id="logoPlace" >Welcome Administrator</li>
		<li class="active"><a href="./dashboard"><i class="menu-icon icon-dashboard"></i>Dashboard</a></li>
    	<li><a href="getProductList" id="productTab"><i class="menu-icon icon-list"></i>Verify Applications</a></li>
    	<li><a href="getUsersList" id="customerTab"><i class="menu-icon icon-group"></i>Users Management</a></li>
    	<li><a href="getOrderList" id="orderTab"><i class="menu-icon icon-shopping-cart"></i>Payment Plan Management<b class="label green pull-right"></b> </a></li>
    	<!-- <li><a href="getComplainList" id="complainTab"><i class="menu-icon icon-tasks"></i>Config Management  <b class="label orange pull-right">2</b> </a></li> -->    	
	</ul>
<!--/.widget-nav-->
    
    
    <ul class="widget widget-menu unstyled">
        <li><a href="getOnlineTransactions" id="onlineTransTab"><i class="menu-icon icon-table"></i>Online Transactions </a></li>
        <li><a href="logoutReq"><i class="menu-icon icon-signout"></i>Logout </a></li>
    </ul>

</div>
<!--/.sidebar-->
