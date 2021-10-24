<%@page import="com.nextsaa.gstspiraea.util.*"%>
<%@page import="com.nextsaa.gstspiraea.dto.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html><head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
	GST Application Services
</title>
    <meta http-equiv="X-UA-Compatible" content="IE=8"><meta name="viewport" content="width=device-width, initial-scale=1"><meta name="apple-mobile-web-app-capable" content="yes"><meta http-equiv="cache-control" content="no-cache, no store"><meta http-equiv="cache-control" content="private"><meta http-equiv="cache-control" content="must-revalidate"><meta http-equiv="cache-control" content="post-check=0"><meta http-equiv="cache-control" content="pre-check=0"><meta http-equiv="pragma" content="no-cache"><link href="../js/BotDetectCaptcha.ashx" rel="stylesheet" type="text/css"><link href="../css/bootstrap.css" rel="stylesheet" type="text/css"><link href="../css/main-style.css" rel="stylesheet" type="text/css"><link href="../css/animations.css" rel="stylesheet" type="text/css"><link href="../css/font-awesome.css" rel="stylesheet" type="text/css"><link href="../css/style.css" rel="stylesheet" type="text/css"><link href="../css/stylesheet.css" rel="stylesheet" type="text/css"><link href="../css/msgBoxLight.css" rel="stylesheet" type="text/css"><link href="../css/animated.css" rel="stylesheet" type="text/css">
    <!--[if IE]>
        <script type="text/javascript" src="../Scripts/respond.min.js"></script>
        <script type="text/javascript" src="../Scripts/html5shiv.js"></script>
    <![endif]-->
    <!--[if IE 8]>     <html class="ie8"> <![endif]-->
    <!--[if IE 7]>
     <link rel="stylesheet" type="text/css" href="../Styles/ie7.css" />
   <![endif]-->    
    <script type="text/javascript" async="" src="../js/include.js.download"></script>
    <script src="../js/jquery.js.download" type="text/javascript"></script>
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/jquery.MultiFile.js" type="text/javascript"></script>
    <script src="../js/ValidationScripts.js" type="text/javascript"></script>
    <script type="text/javascript">
        function burstCache() {
            if (!navigator.onLine) {
                document.body.innerHTML = 'Loading...';
            }
        }
        window.history.forward();
        function noBack() { window.history.forward(); }
    </script>
    <script src="../js/pirobox_extended-1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.pirobox_ext({
                attribute: 'data-pirobox',
                piro_speed: 800,
                bg_alpha: .3,
                resize: true,
                zoom_mode: true,
                move_mode: 'drag',
                piro_scroll: true,
                share: true
            });

            $('.source_code').hide();
            $('.tabs li a').click(function (event) {
                event.preventDefault();
                var tabs = $(this).attr('href');
                $(this).parent('li').siblings('li').children('a').removeClass('active');
                $(this).addClass('active');

                if (!$(tabs).is(':visible')) {
                    $(this).parent('li').parent('ul').parent('.section').find('.demo').fadeOut(0);
                    $(tabs).fadeIn(300);
                }
            });
        });

    </script>
    <script src="../js/jquery.msgBox.js" type="text/javascript"></script>

       

    
    <style type="text/css">
        body
        {
            overflow: hidden;
        }
        footer
        {
            position: fixed;
            bottom: 0px;
            width: 100%;
            z-index: 99;
        }
        @media only screen and (max-width: 991px)
        {
            footer
            {
                position: fixed;
                bottom: 0px;
                width: 100%;
                z-index: 99;
            }
        }
        @media only screen and (max-width: 767px)
        {
            footer
            {
                position: static;
                bottom: inherit;
                width: auto;
                z-index: 99;
            }
        }
		.row{
		padding-bottom:20px;
		}
    </style>
</head>
<body onload="burstCache(); if (event.persisted) noBack();">
    <form:form method="post" action="createRegistration" id="registrationFrm" name="registrationFrm" modelAttribute="userDetails">
    
<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>

<script src="../login1.html" type="text/javascript"></script>

    <!--<img src="../images/Bg.jpg" alt="" class="bg">-->
    <header>
        <div class="container">
            <a href="https://spiraea.in/"><img alt="spiraea" class="s-logo" src="/images/spiraea-logo-bw-web-1.png"></a>
            <div class="heding-main">
                <span id="lblTitle" class="heading">GST Application Services</span>
            </div>
            <!--<a target="_blank"><img class="secondlogo" alt="spiraea" src="../images/secondlogo.png"></a>-->
        </div>
    </header>
    <section>      
        <div class="container">
            
            
    <div class="row">
        <div class="col-md-6">
            
<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        $("input").attr("autocomplete", "off");
    });
</script>
<script type="text/javascript">
    function md5auth(seed) 
    {
        /*var text = "";
        var opt = 0;
        var username1 = document.getElementById('ContentPlaceHolder1_Login1_username');
        var username = username1.value;
        var password1 = document.getElementById('ContentPlaceHolder1_Login1_password');
        var password = password1.value;

        var CaptchaCode1 = document.getElementById('ContentPlaceHolder1_Login1_CaptchaCodeTextBox');
        var CaptchaCode = CaptchaCode1.value;

        if (CaptchaCode1.value == "") 
        {
            text += "<br /> - Please Enter CaptchaCode.";
            CaptchaCode1.focus();
            var opt = 1;
        }

        if (username1.value == '' || username1.value == 'Enter UserName or Mobile Number') 
        {
            text += "<br /> - Please Enter UserName or Mobile Number.";
            username1.focus();
            var opt = 1;
        }

        if (password1.value == '') 
        {
            text += "<br /> - Please enter password";
            password1.focus();
            var opt = 1;
        }

        if ((username1.value == '' || username1.value == 'Enter UserName or Mobile Number') && (password1.value == '')) 
        {
            username1.focus();
        }

        if (opt == "1") 
        {
            alertPopup("Required to fill the following field(s)", text, "info");
            return false;
        }

        var hash = calcMD5(seed + calcMD5(password).toUpperCase());
        password1.value = hash.toUpperCase();*/
        return true;
    }

</script>
<script src="../js/md5.js" type="text/javascript"></script>
<div id="ContentPlaceHolder1_Login1_pnlLogin" onkeypress="javascript:return WebForm_FireDefaultButton(event, ContentPlaceHolder1_Login1_btnLogin)">
	
    <div class="col-md-3">
    

    
    <div id="ContentPlaceHolder1_UID1_tdError" style="display: none;">
        <span id="ContentPlaceHolder1_UID1_lblError" class="alert aleft "></span>
    </div>
    </div>
    <input name="errorMessage" type="hidden" id="ContentPlaceHolder1_UID1_hdstrdate" />
    
                
</div>
        </div>
        <div class="clearfix">
        </div>
        <div class="row">
            <div class="col-md-3">
                
                <span id="ContentPlaceHolder1_Label1" class="manadatory">Last Name</span>
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel1">
	
                        <input name="lastName" type="text" maxlength="255" id="lastName" />
                        
                        <span id="ContentPlaceHolder1_RequiredFieldValidator1" class="text-danger" style="display:none;">Please enter Last Name</span>
                    
</div>
                
            </div>
            <div class="col-md-3">
                
     
     <!--            <span id="ContentPlaceHolder1_Label10" class="manadatory">Business Name</span> -->
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel3">
	
                        <!-- <input name="ctl00$ContentPlaceHolder1$txtFullName_mr" type="text" maxlength="255" id="ContentPlaceHolder1_txtFullName_mr" onpaste="return false" />
                         <span id="ContentPlaceHolder1_RequiredFieldValidator12" class="text-danger" style="display:none;">Please Enter Business Name</span>
                        <span id="ContentPlaceHolder1_regexprSurname" style="color:Red;display:none;">Please Enter CCIN</span> -->
</div>
            </div>
        </div>
        <div class="clearfix">
        </div>
        <div class="row">
            <div class="col-md-3">
                <span id="ContentPlaceHolder1_Label12" class="manadatory">First Name</span>
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel8">
	
                        <input name="firstName" type="text" maxlength="255" id="firstName" />
                        
                        <span id="ContentPlaceHolder1_RequiredFieldValidator2" class="text-danger" style="display:none;">Please enter First Name</span>
                    
</div>
            </div>
            <div class="col-md-3">
                <!-- <span id="ContentPlaceHolder1_Label14" class="manadatory">CCIN</span> -->
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel9">
	
                        <!-- <input name="ctl00$ContentPlaceHolder1$txtFirstName_mr" type="text" maxlength="255" id="ContentPlaceHolder1_txtFirstName_mr" onpaste="return false" />
                        <span id="ContentPlaceHolder1_RequiredFieldValidator3" class="text-danger" style="display:none;">Please Enter Business Name</span> -->
                        
                    
</div>
            </div>
        </div>
        <div class="clearfix">
        </div>
        <div class="row">
            <div class="col-md-3">
                <span id="ContentPlaceHolder1_Label13">Middle Name (Father/ Husband Name)</span>
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel10">
	
                        <input name="middleName" type="text" maxlength="255" id="middleName" />
                        
                        <span id="ContentPlaceHolder1_RequiredFieldValidator4" class="text-danger" style="display:none;">Please enter Middle Name</span>
                    
</div>
            </div>
            <div class="col-md-3">
                
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel11">
	

                
                    
</div>
            </div>
        </div>
        <div class="row">
            <!--<div class="col-md-3">
                 <span id="ContentPlaceHolder1_Label3" class="manadatory">Date of Birth</span> 
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel4">
	
                         <input name="ctl00$ContentPlaceHolder1$txtDOB" type="text" maxlength="10" id="ContentPlaceHolder1_txtDOB" onkeydown="return isValidKey(event);" />
                        
                        <span id="ContentPlaceHolder1_RegularExpressionValidator4" class="text-danger" style="display:none;"><br />Enter Valid Date</span> 
                    
</div>
            </div>-->
            <div class="col-md-3">
                <span id="ContentPlaceHolder1_Label18" class="manadatory">Gender</span>
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel5">
	
                        <select name="gender" id="gender">
		<option value="---Select---">---Select---</option>
		<option value="M">Male</option>
		<option value="F">Female</option>
		<option value="T">Transgender</option>

	</select>
                    
</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <span id="ContentPlaceHolder1_Label4">Email ID</span>
            </div> 
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel6">
	
                        <input name="userEmail" type="text" maxlength="500" id="userEmail" />
                        
                        
                        <span id="ContentPlaceHolder1_RegularExpressionValidator11" class="text-danger" style="display:none;">Please enter Valid Email ID</span>
                    
</div>
            </div>
        </div>
        <div id="ContentPlaceHolder1_trUserName" class="row">
            <div class="col-md-3">
                <span id="ContentPlaceHolder1_Label5" class="manadatory">Mobile Number</span>
            </div>
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel7">
	
                        <input name="mobile" type="text" maxlength="10" id="mobile" />
                        
                        <span id="ContentPlaceHolder1_RegularExpressionValidator3" class="text-danger" style="display:none;">Please enter 10 digit Mobile Number</span>
                        <span id="ContentPlaceHolder1_RequiredFieldValidator39" class="text-danger" style="display:none;">Please enter mobile number</span>
                    
</div>
            </div>
        </div>
        <!-- <div id="ContentPlaceHolder1_trPasword" class="row">
            <div class="col-md-3">
                <span id="ContentPlaceHolder1_Label6" class="manadatory">Password</span>
            </div>
            <div class="col-md-3">
                <input name="ctl00$ContentPlaceHolder1$txtPassword" type="password" id="ContentPlaceHolder1_txtPassword" autocomplete="off" />
                <span id="ContentPlaceHolder1_RegularExpressionValidator2" class="text-danger" style="display:none;">Password must contain one digit from 0-9; must contain one lowercase characters; must contain one uppercase characters; must contains one special symbols in the list "@#$%"; length at least 7 characters and maximum of 20</span>
                <span id="ContentPlaceHolder1_PasswordRequired" class="text-danger" style="display:none;">Password is Compulsory</span>
            </div>
            <div class="col-md-3">
                <span id="ContentPlaceHolder1_Label7" class="manadatory">Confirm Password</span>
            </div>
            <div class="col-md-3">
                <input name="ctl00$ContentPlaceHolder1$txtConfirmPassword" type="password" id="ContentPlaceHolder1_txtConfirmPassword" autocomplete="off" />
                <span id="ContentPlaceHolder1_ConfirmPasswordRequired" title="Confirm Password is required" class="text-danger" style="display:none;">Please Retype Password</span>
                <span id="ContentPlaceHolder1_PasswordCompare" class="text-danger" style="display:none;">Entered Password is Incorrect. Please reenter the correct Password</span>
            </div>
        </div> -->
        
       <!-- <div id="ContentPlaceHolder1_trCaptcha" class="row">
            <div id="ContentPlaceHolder1_TextCaptcha1_UpdatePanel1">
	
        <div class="captcha">
        <div class="col-md-3">    
            <span id="ContentPlaceHolder1_TextCaptcha1_lbl_msg"></span>
            <label for="ContentPlaceHolder1_TextCaptcha1_txtCaptchAnswer" id="ContentPlaceHolder1_TextCaptcha1_lblRandomNo">What is Second Number among Following List ? <br />36, 27, 63</label>
            
            
            
            
            <input type="image" name="ctl00$ContentPlaceHolder1$TextCaptcha1$btnRefreshCaptcha" id="ContentPlaceHolder1_TextCaptcha1_btnRefreshCaptcha" src="../Images/Refresh.png" alt="Refresh captcha" style="height:20px;width:20px;" />
        </div>
   
        <div class="col-md-3">
                <input name="ctl00$ContentPlaceHolder1$TextCaptcha1$txtCaptchAnswer" type="text" id="ContentPlaceHolder1_TextCaptcha1_txtCaptchAnswer" />
            
        </div>
             </div>
        
    
</div>-->

        </div>
        <div class="row">
            <div class="col-md-6">
                <input type="submit" name="ctl00$ContentPlaceHolder1$btnSubmit" value="Submit" onclick="return fnValidate();javascript:return md5auth(F891227C9966F38932283ACFBB42D635);WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(ctl00$ContentPlaceHolder1$btnSubmitRegisterUserValidationGroup,  false, false))" id="ContentPlaceHolder1_btnSubmit" class="btn btn-info btn-sm" />
            </div>
            
            <div class="col-md-3">
                <div id="ContentPlaceHolder1_UpdatePanel7">
                <button onclick="document.location='login1.html'" type="button" class="btn btn-info">Go back to home page</button>                    
			</div>
            </div>
                 
            </div>
        </div>
        <input type="hidden" name="ctl00$ContentPlaceHolder1$hfFromAapleSarkar" id="ContentPlaceHolder1_hfFromAapleSarkar" value="0" />
    </fieldset>

           
        </div>

</div>

            <!--<div class="fadeInUp animated">
                <div id="ticker-wrapper-1632333535645" class="ticker-wrapper has-js left"><div id="ticker-1632333535645" class="ticker"><div id="ticker-title-1632333535645" class="ticker-title"><span>Latest</span></div><p id="ticker-content-1632333535645" class="ticker-content" style="display: block; opacity: 1; left: 91px;">
                                For Queries Contact numbers for clarifications 24 x 7 Call Center: 1800 100 8888 (Toll Free)
                                </p><div id="ticker-swipe-1632333535645" class="ticker-swipe" style="left: 91px; margin-left: 560px; display: none;"><span style="display: block;"></span></div></div><ul lang="en" id="ticker-controls-1632333535645" class="ticker-controls"><li id="play-pause-1632333535645" class="jnt-play-pause controls" title=""></li><li id="prev-1632333535645" class="jnt-prev controls"></li><li id="next-1632333535645" class="jnt-next controls"></li></ul></div>
            </div>-->
        </div>
        
    </div>
    
           
        </div>
    </section>
    <footer>
            <div class="container"> 
				<div class="col-md-4">
            <p>Copyright &copy; 2021 Spiraea. All Rights Reserved (A)</p>
			</div>
            <div class="col-md-8 d-flex text-right">
                <a href="http://nextsaa.com" target="_blank"><img src="/images/NextSAA Logo1.PNG" style="width:100px;height:50px" alt="Maintained by - NextSAA Services Private Limited"></a></li>
            </div>
            </div>
    </footer>
    <div id="UpRandom">
	
        
</div>
    

<script type="text/javascript">
//<![CDATA[
(function() {var fn = function() {$get("ToolkitScriptManager1_HiddenField").value = '';Sys.Application.remove_init(fn);};Sys.Application.add_init(fn);})();Sys.Application.add_init(function() {
    $create(Sys.Extended.UI.FilteredTextBoxBehavior, {"FilterType":15,"ValidChars":" ","id":"ContentPlaceHolder1_Login1_FilteredTextBoxExtender3"}, null, null, $get("ContentPlaceHolder1_Login1_username"));
});
//]]>
</script>
</form:form>
    <script src="../js/jquery.ticker.js" type="text/javascript"></script>
    <script src="../js/site.js" type="text/javascript"></script>
    



<div class="piro_overlay" style="display: none; opacity: 0.3;"></div><table class="piro_html" cellpadding="0" cellspacing="0" style="left: 458px; top: 268.5px; display: none;"><tbody><tr><td class="h_mb_c" style="height: 0px; display: table-cell;"><div class="nav_container" style="height: 0px; display: block;"><div class="nav_container_hide"><div class="piro_close" title="close"></div></div></div></td></tr><tr><td class="h_c_c"><div class="resize"><div class="piro_loader" title="close"><span></span></div><div class="nav_big" style="display: none;"><a href="close" class="piro_close" title="close"></a></div><div class="div_reg"></div></div></td></tr></tbody></table><div class="piro_thumbs"></div></body>
</html>