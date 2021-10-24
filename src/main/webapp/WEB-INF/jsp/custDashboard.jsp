<%@page import="com.nextsaa.gstspiraea.util.*"%>
<%@page import="com.nextsaa.gstspiraea.dto.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <link type="text/css" href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="/css/theme.css" rel="stylesheet">
        <link type="text/css" href="/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
        <link href="/css/custom.css" rel="stylesheet"/>
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
                        <jsp:include page="custSidebar.jsp" />
                        <!-- SIDEBAR Start -->
                                                 
                        <!-- SIDEBAR END -->
                    </div>
                    <!--/.span3-->
                    <div class="span9">
                        Welcome, Please select one of the menu to proceed..
                        <!--/.content-->
                    </div>
                    <!--/.span9-->
        
                </div>
            </div>
            <!--/.container-->
        </div>
        <!--/.wrapper-->
        <jsp:include page="footer.jsp" />
        
        <script src="/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script src="/scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="/scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="/scripts/common.js" type="text/javascript"></script>
      
    </body>
