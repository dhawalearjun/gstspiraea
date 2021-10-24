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
                        <form:form method="post" action="applyProprietorship" id="applicationFrm" name="applicationFrm" modelAttribute="PartnershipDTO">
                     <table>
                    <tr>
                    <td>    
            	<div class="col-md-3">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Name of the Company</span>
            	</div>
            	</td>
            	<td>
                <div id="ContentPlaceHolder1_UpdatePanel1">
                        <input name="personName" type="text" maxlength="255" id="personName" />
                        <span id="ContentPlaceHolder1_RequiredFieldValidator1" class="text-danger" style="display:none;">Please enter Company Name</span>
				</div>
				</td>
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Legal Name of Business (As mentioned in PAN)</span>
            	</div>
            	</td>
            	<td>
                <div class="col-md-6"><input name="businessName" type="text" maxlength="255" id="businessName" />
				</div>
				</td>
				</tr>
				<tr>
				<td>
				<div class="col-md-3">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Trade Name</span>
            	</div>
            	</td>
            	<td>
                <div id="ContentPlaceHolder1_UpdatePanel1">
                        <input name="tradeName" type="text" maxlength="255" id="tradeName" />
                        <span id="ContentPlaceHolder1_RequiredFieldValidator1" class="text-danger" style="display:none;">Please enter Trade Name</span>
				</div>
				</td>
				</tr>
				
				<tr>
				<td>				
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Mobile Number</span>
            	</div>
            	</td>
            	<td>            	
                <div class="col-md-6"><input name="mobile" type="text" maxlength="255" id="mobile" />
				</div>
				</td>
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Email ID</span>
            	</div>
            	</td>
            	<td>
                <div class="col-md-6"><input name="email" type="text" maxlength="255" id="email" />
				</div>
				</td>
				</tr>
				<tr>
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">PAN Number</span>
            	</div>
            	</td>
            	<td>
                <div class="col-md-6"><input name="panNumber" type="text" maxlength="255" id="panNumber" />
				</div>
				</td>
				<td>
                <span id="ContentPlaceHolder1_Label1" class="manadatory">Attach PAN card copy</span>
				
				</td>
				<td>
                <input type="file" name="pancard" id="pancard" accept="image/*">
				
				</td>
				</tr>
				
				
				<tr>
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Composition</span>
            	</div>
            	</td>
            	<td>
                <div class="col-md-6"> 
                	<select name="composition" id="composition">
						<option value="---Select---">---Select---</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>					
					</select>
				</div>
				</td>
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Date of Commencement of Business</span>
            	</div>
            	</td>
            	<td>
                <div class="col-md-6"> <input name="commencementDate" type="text" maxlength="255" id="commencementDate" />
				</div>
				</td>
				</tr>
				
				<tr>
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Principal Place of Business address</span>
            	</div>
            	</td>
            	<td>
                <div class="col-md-6"> 
                	<input name="principleaddress" type="text" maxlength="500" id="principleaddress" />
				</div>
				</td>
				
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Attach Electricity Bill</span>
            	</div>
            	</td>
				<td>
				<div class="col-md-6">
                	
                	<input type="file" name="principleelectricity" id="principleelectricity" accept="image/*">
                	<!-- <input type="button" id="browseaddress" name="browseaddress" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> -->
            	</div>
            	</td>
            	</tr>
            	
            	<tr>
            	<td>
                <div class="col-md-6"> Attach Rent agreement 
				</div>
				</td>
				<td>
				<div class="col-md-6">
                	<input type="file" name="principlerent" id="principlerent" accept="image/*">
                	<!-- <input type="button" id="browseaddress" name="browseaddress" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> -->
            	</div>
            	</td>
            	
            	<td>
                <div class="col-md-6"> Attach NOC 
				</div>
				</td>
				<td>
				<div class="col-md-6">
                	<input type="file" name="principlenoc" id="principlenoc" accept="image/*">
                	<!-- <input type="button" id="browseaddress" name="browseaddress" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> -->
            	</div>
            	</td>
				
				</tr>
				
				
				<tr>
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Additional Place of Business address</span>
            	</div>
            	</td>
            	<td>
                <div class="col-md-6"> 
                	<input name="additionaladdress" type="text" maxlength="500" id="additionaladdress" />
				</div>
				</td>
				
				<td>
				<div class="col-md-6">
                	<span id="ContentPlaceHolder1_Label1" class="manadatory">Attach Electricity Bill</span>
            	</div>
            	</td>
				<td>
				<div class="col-md-6">
                	
                	<input type="file" name="additionalelectricity" id="additionalelectricity" accept="image/*">
                	<!-- <input type="button" id="browseaddress" name="browseaddress" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> -->
            	</div>
            	</td>
            	</tr>
            	
            	<tr>
            	<td>
                <div class="col-md-6"> Attach Rent agreement 
				</div>
				</td>
				<td>
				<div class="col-md-6">
                	<input type="file" name="additionalrent" id="additionalrent" accept="image/*">
                	<!-- <input type="button" id="browseaddress" name="browseaddress" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> -->
            	</div>
            	</td>
            	
            	<td>
                <div class="col-md-6"> Attach NOC 
				</div>
				</td>
				<td>
				<div class="col-md-6">
                	<input type="file" name="additionalnoc" id="additionalnoc" accept="image/*">
                	<!-- <input type="button" id="browseaddress" name="browseaddress" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> -->
            	</div>
            	</td>
				
				</tr>				
				
				<tr>
				<td>
				<span id="ContentPlaceHolder1_Label1" class="manadatory">Number of Directors</span>
				</td>
				<td><input name="partnernumbers" type="text" maxlength="500" id="partnernumbers" />
				</td>
				<td></td>
				<td></td>
				</tr>
				
				<tr>
				<td><span id="ContentPlaceHolder1_Label1" class="manadatory">Director Name</span></td>
				<td><input name="adharNumber" type="text" maxlength="50" id="adharNumber" /></td>
				<td><span id="ContentPlaceHolder1_Label1" class="manadatory">Director Father Name</span></td>
				<td><input name="adharNumber" type="text" maxlength="50" id="adharNumber" />
				<!-- <input type="button" id="browseproadhar" name="browseproadhar" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> --></td>
				</tr>
				
				<tr>
				<td><span id="ContentPlaceHolder1_Label1" class="manadatory">DIN of Director</span></td>
				<td><input name="adharNumber" type="text" maxlength="50" id="directorDIN" /></td>
				<td></td>
				<td>
				<!-- <input type="button" id="browseproadhar" name="browseproadhar" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> --></td>
				</tr>
				
				<tr>
				<td><span id="ContentPlaceHolder1_Label1" class="manadatory">Adhar Number of Director</span></td>
				<td><input name="adharNumber" type="text" maxlength="50" id="adharNumber" /></td>
				<td><span id="ContentPlaceHolder1_Label1" class="manadatory">Adhar copy Attachment</span></td>
				<td><input type="file" name="browseproadhar" id="browseproadhar" accept="image/*" >
				<!-- <input type="button" id="browseproadhar" name="browseproadhar" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off"> --></td>
				</tr>
				
				<tr>
				<td><span id="ContentPlaceHolder1_Label1" class="manadatory">Residential Address</span></td>
				<td><input name="resAddress" type="text" maxlength="500" id="resAddress" /></td>
				<td><span id="ContentPlaceHolder1_Label1" class="manadatory">Attach passport photo</span></td>
				<td><input type="file" name="browseproppassport" id="browseproppassport" accept="image/*" >
				<!--<input type="button" id="browseproppassport" name="browseproppassport" value="Browse" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off">-->
				</td>
				</tr>
				
				<tr>
				<td><span id="ContentPlaceHolder1_Label1" class="manadatory">Is Authorised Signatory? </span></td>
				<td><input type="checkbox" id="isAuthSign" name="isAuthSign" value="YES"></td>
				<td></td>
				<td></td>
				</tr>
				
				<tr>
				<td colspan="2">Nature of Business Activity being carried out</td>
				<td colspan="2">
					<input type="checkbox" id="trading" name="trading" value="trading">1. Trading<br>
					<input type="checkbox" id="manufacture" name="manufacture" value="manufacture">2. Manufacture<br>
					<input type="checkbox" id="service" name="service" value="service">3. Service<br>
				</td>
				</tr>
				
				<tr>
				<td colspan="2">HSN /SAC Code of Top 5 goods/Service to be sold</td>
				<td>1.<input type="text" id="hsn1" name="hsn1"><br>
					2.<input type="text" id="hsn2" name="hsn2"><br>
					3.<input type="text" id="hsn3" name="hsn3"><br>
					4.<input type="text" id="hsn4" name="hsn4"><br>
					5.<input type="text" id="hsn5" name="hsn5">
				</td>
				</tr>
				
				
				<tr>
				<td >Bank Account Name</td>
				<td><input type="text" id="accountName" name="accountName"></td>				
				<td >Account Number</td>
				<td><input type="text" id="accountName" name="accountNumber"></td>
				</tr>
				
				<tr>
				<td >IFSC</td>
				<td><input type="text" id="ifsc" name="ifsc"></td>				
				<td >Branch Name</td>
				<td><input type="text" id="branchName" name="branchName"></td>
				</tr>
				
				
				<tr>
				<td >Branch Code</td>
				<td><input type="text" id="branchcode" name="branchcode"></td>
				<td >Cancelled Cheque Photo</td>
				<td><input type="file" name="browsesignadhar" id="browsesignadhar" accept="image/*" ></td>
				</tr>
				
				<tr>
				<td colspan="2"><div class="form-group">
            		<input type="submit" id="submitBtn" name="submitBtn" value="Apply" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off">
        		</div></td>
				<td colspan="2"><div class="form-group">
            		<input type="reset" id="resetBtn" name="resetBtn" value="Reset" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off">
        		</div></td>
				</tr>
				
        		</table>
        		
        		
				
        				
						</form:form>
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
