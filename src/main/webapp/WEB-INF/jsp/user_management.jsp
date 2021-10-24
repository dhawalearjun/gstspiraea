
<%@page import="java.util.List"%>
<%@page import="com.nextsaa.gstspiraea.dto.UserDetailsDTO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta Tag -->
	<!-- Meta Tag -->	
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet"/>
	<link href="css/table.css" rel="stylesheet"/>
	
	 <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
     <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
     <link type="text/css" href="css/theme.css" rel="stylesheet">
     <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
      <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
      <script src="https://kit.fontawesome.com/fd5ded4b93.js" crossorigin="anonymous"></script>
        
	<link href="css/custom.css" rel="stylesheet"/>
	<style>
		body{
			background-image: url("images/background1.jpg");		
			background-size: cover;
		}
		
		.navbar{
			border: none;
		    color: white;
		    background: #fff;
		    border-radius: 0; 		    
		    box-shadow: 0 0px 16px 3px black;
		}
		
		#myTable i{
			padding: 5px 15px;
		}
		.addNewProductBtn {
			text-align: right;
			display: inline-block;
			
		}
		.addNewProductBtn button{
			background: #fc9e00;
		    padding: 15px 20px;
		    font-family: monospace;
			color: white;
		}
		
		@media (min-width: 1200px){
		.span9 {
		    width: 75%;
		}
		}
	</style>
</head>

<body style="background:none">

<%
		List<UserDetailsDTO> userObjList = (List<UserDetailsDTO>)request.getAttribute("userList");
	%>
<jsp:include page="header.jsp" />
 <div class="wrapper">
     <div class="container-fluid">
       <div class="row">
	
	<div class="span3">
        <jsp:include page="adminSidebar.jsp" />
    </div>
    <div class="span9" style="background:#fff;min-height: 62vh">
			<div id="filterDiv" style="text-align:center;padding-left: 4%;padding-right: 4%;width:100%;margin-top:10px">
				<div style="display:inline-block;text-align:center;margin-bottom: 10px;">
				  	<!--<form:form  class="example contact100-form validate-form" action="getCustomerList" method="post" modelAttribute="getCustomerListForm" >-->				  		
				  		<div>				  		 	
				  			<input type="text" id="customer_phone" name="customer_phone" class="customInput" placeholder="Search by Phone No."/>
				  			<label style="display:inline-block;">Or</label>
				  			<select id="status" name="status" class="customInput">
						        <option value="" >Customer Status</option>					        
						        <option value="ACTIVE">ACTIVE</option>
						        <option value="PENDING">PENDING</option>
						        <option value="ARCHIVED">ARCHIVED</option>   
						    </select>
						   
				  			<button type="submit" id="filterCustomerSearchBtn" class="filterSearchBtn" style="margin-left:10px;"><i class="fa fa-search"></i></button>
				  		</div>							
					<!-- </form:form> -->
					
				</div>
			</div>
		<div class="limiter" style="width:100%" id="tableDiv">
		<div class="container-table100" style="margin-bottom:10px;">
			<div class="wrap-table100">
				<div class="table100">
					<table class="tableStyle" id="customerDetTable">
						  <thead>
						    <tr class="table100-head header" class="rowVehData">     
						      <th>Id</th>           
						      <th>First Name</th> 							                               
						      <th>Middle Name</th>                                                        
						      <th>Last Name</th>
						      <th>Gender</th>
						      <th>Email ID</th>
						      <th>Mobile Number</th>
						      <th>Login Status</th> 
							  <th>Status</th>                    
						      <th style="padding: 0;width: 200px;text-align: center">Actions</th>
						    </tr>
						  </thead>
			              <tbody>	
			              <%if(!userObjList.isEmpty()){ int ctr=1; %>
				              	<%for(UserDetailsDTO userObj :userObjList){ %>
				                  <tr style="border-bottom:1px solid black" class="rowVehData" >
				                  	  <td style="width:50px;"><%=userObj.getUserId() %></td>
				                      <td style="width:150px;"><%=userObj.getFirstName() %></td>
				                      <td style="width:150px;"><%=userObj.getMiddleName() %></td>
				                      <td style="width:150px;"><%=userObj.getLastName() %></td>
				                      <td style="width:150px;"><%=userObj.getGender() %></td>
				                      <td style="width:150px;"><%=userObj.getUserEmail() %></td>
				                      <td style="width:150px;"><%=userObj.getMobile() %></td>
				                     <% if(userObj.getLoginUserName()==null) {%>
				                     <form:form name="generateLogin" id="generateLogin"  action="generateLoginDetails" method="post" modelAttribute="userDetails" >
						                     <input type="hidden" name="userId" id="userId" value="<%=userObj.getUserId() %>"/>
						                     <input type="hidden" name="firstName" id="firstName"  value="<%=userObj.getFirstName() %>"/>
						                     <input type="hidden" name="userEmail" id="userEmail"  value="<%=userObj.getUserEmail() %>"/>
						              		<td><input type="submit" id="generateCreds" name="generateCreds" value="Generate Credentials" autocomplete="off"></td>
					                  <!-- <input type="submit" name="generateCreds" value="Generate Credentials"> -->
					                  </form:form>
					                  <% } else if(userObj.getLastLoginDate()!=null) { %>
					                  <td>Logged in successfully </td>
					                  <% } else { %>
					                  <td>Awaiting Login </td>
					                  <%} %>
				                      <td style="width:150px;">
				                      <% if(userObj.getIsActive()==1) {%>
				                      ACTIVE
				                      <%} else if (userObj.getIsArchived()==1){ %>
				                      ARCHIVED
				                      <%} else { %>
				                      PRESENT
				                      <%} %>
				                      </td>
				                      				                                        
					                  <td style="text-align: center;padding-left: 0 !important;">
					                    <i title="Archive Customer" class="fa fa-user-lock blockCustomer" id="Cust01" style="font-size: 20px;color: #fc9e00;" ></i>
					                  </td>
				                  </tr>
				                  <% ctr++;
				                  } 
				              	}%>        
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



<div class="modal fade bd-example-modal-lg" id="editCustomerModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    	<div class="modal-header">
	      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
	        <h4 class="modal-title" id="myLargeModalLabel" style="text-align: center;">Update Customer Details</h4>        
	      </div>
      <div class="modal-body" style="max-height: none;">
      <iframe src="blank.jsp" id="editCustomerIFrame" style="border: none;width: 100%;height: 50vh;"></iframe>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="changeCustomerRapoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myLargeModalLabel2" style="display:inline-block">Change Customer Repo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<iframe src="blank.jsp" id="changeCustomerRapoIFrame" style="border: none;width: 100%;height:29vh"></iframe>
      </div>
    </div>
  </div>
</div>

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="js/custom.js"></script>

<script>
	$("#customerTab").addClass("sideBarActiveBtn");

	$(".editCustomerDet").on("click",function(){
		$("#editCustomerIFrame")[0].src="editCustomerForm?customer_id="+this.id;
	});
	
	
	$(".changeCustomerRapo").on("click",function(){
		$("#changeCustomerRapoIFrame")[0].src="changeCustomerRapoForm?customer_id="+this.id;
	});
	
	
	$(".blockCustomer").on("click",function(){
		$("#myLargeModalLabel2").html("Change Customer Status");	
		$("#changeCustomerRapoIFrame")[0].src="blockCustomerForm?customer_id="+this.id;
	});

	$('.modal').on('hidden.bs.modal', function () {
		window.location.href = 'getCustomerList';
	});
	
	    
	$("#status").on("change",function(){
		$("#customer_phone")[0].setCustomValidity("");				
	})
	
	$("#customer_phone").keyup(function() {
		$("#customer_phone")[0].setCustomValidity("");				
	});

	$("#filterCustomerSearchBtn").on("click",function(){
		$("#customer_phone")[0].setCustomValidity("");				
		if($("#customer_phone").val() === "" &&  $("#status").val() === ""){	
			$("#customer_phone")[0].setCustomValidity("Customer Mob No or Search by Status!");				
			if(!checkAndReportValidity($("#customer_phone"))) return false;				
		}
	});	
</script>
</body>
</html>