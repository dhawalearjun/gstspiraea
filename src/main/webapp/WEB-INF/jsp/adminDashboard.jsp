<%@page import="java.util.List"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
        <link href="css/custom.css" rel="stylesheet"/>
      <style >
      
      	.li-inc-padding{
      		padding-top:21px !important;
      		padding-bottom:20px !important;
      	}
      	
      	.customCounter{
	      	background: #d74f2a;
	    	color: white !important;
	    	display: inline-block !important;    	
	    	padding: 0 5px;
	    	border-radius: 3px;
	    	line-height: 20px;
	    	position: absolute;
    		margin-left: 32px;
    		margin-top: -67px !important;
    	}
      
      </style>
    </head>
    
    
    <body>
    <jsp:include page="header.jsp" />
     
        <div class="wrapper">
            <div class="container">
            	
                <div class="row">
                    <div class="span3">
                        <jsp:include page="adminSidebar.jsp" />
                        <!-- SIDEBAR Start -->
                                                 
                        <!-- SIDEBAR END -->
                    </div>
                    <!--/.span3-->
                    <div class="span9">
                        <div class="content">
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                   
                                    <a href="#" class="btn-box big span4"><i class="icon-money"></i><b>&#x20B9; 2,000</b>
                                        <p class="text-muted">
                                            Today's Business</p>
                                    </a>
                                    
                                     <a href="#" class="btn-box big span4"><i class=" icon-briefcase"></i><b>2</b>
                                        <p class="text-muted">
                                            Today's Applications </p>
                                    </a>
                                    
                                    <a href="#" class="btn-box big span4"><i class="icon-group"></i><b>1000</b>
                                        <p class="text-muted">
                                            Total Customers</p>
                                    </a>
                                </div>
                                <div class="btn-box-row row-fluid">
                                    <div class="span8">
                                        <div class="row-fluid">
                                            <div class="span12">
                                               <!-- a href="getOrderList" class="btn-box small span4"><i class="icon-shopping-cart"></i><b> Management</b></a> -->
                                               <a href="getProductList" class="btn-box small span4"><i class="icon-list"></i><b>Applications Management</b></a>
                                               <a href="getCustomerList" class="btn-box small span4"><i class="icon-group"></i><b>Customer Management</b></a>
                                            </div>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span12">
                                                <a href="getOnlineTransactions" class="btn-box small span4"><i class="icon-table"></i><b>Verify Applications</b></a>
                                                <a href="getComplainList" class="btn-box small span4"><i class="icon-tasks"></i><b>Complains</b></a>
                                               	
                                               	
                                               	<!-- a href="getSuggestionsList" class="btn-box small span4"> <i class="icon-envelope"></i><b>Suggestions<b class="customCounter">noOfSuggestion</b></b></a> -->
                                                                                          
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="widget widget-usage unstyled span4">
                                    	<li class="li-inc-padding" style="padding-top:7px !important; padding-bottom:7px !important;">
                                            <p>
                                                <strong>This Week Report</strong>
                                            </p>
                                        </li>
                                        <li class="li-inc-padding">
                                            <p>
                                                <strong>Review Pending Applications <b class="label" style="background-color: #428bca">4</b></strong> <span class="pull-right small muted">40%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar" style="width: 40%;">
                                                </div>
                                            </div>
                                        </li>
                                        <li class="li-inc-padding">
                                            <p>
                                                <strong>Approved Applications <b class="label" style="background-color: #438e43">5</b></strong> <span class="pull-right small muted">50%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar bar-success" style="width: 50%;">
                                                </div>
                                            </div>
                                        </li>
                                       
                                        <li class="li-inc-padding">
                                            <p>
                                                <strong>Rejected Applications<b class="label" style="background-color: #a62821">1</b></strong> <span class="pull-right small muted">10%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar bar-danger" style="width: 10%;">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                           

                        </div>
                        <!--/.content-->
                    </div>
                    <!--/.span9-->
        
                </div>
            </div>
            <!--/.container-->
        </div>
        <!--/.wrapper-->
        <jsp:include page="footer.jsp" />
        
        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="scripts/common.js" type="text/javascript"></script>
      
    </body>
