<%@page import="com.nextsaa.gstspiraea.util.*"%>
<%@page import="com.nextsaa.gstspiraea.dto.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html><head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
	GST Application Services
</title>
<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta http-equiv="cache-control" content="no-cache, no store" /><meta http-equiv="cache-control" content="private" /><meta http-equiv="cache-control" content="must-revalidate" /><meta http-equiv="cache-control" content="post-check=0" /><meta http-equiv="cache-control" content="pre-check=0" /><meta http-equiv="pragma" content="no-cache" />
     <![endif]-->
    <meta http-equiv="X-UA-Compatible" content="IE=8"><meta name="viewport" content="width=device-width, initial-scale=1"><meta name="apple-mobile-web-app-capable" content="yes"><meta http-equiv="cache-control" content="no-cache, no store"><meta http-equiv="cache-control" content="private"><meta http-equiv="cache-control" content="must-revalidate"><meta http-equiv="cache-control" content="post-check=0"><meta http-equiv="cache-control" content="pre-check=0"><meta http-equiv="pragma" content="no-cache"><link href="/js/BotDetectCaptcha.ashx" rel="stylesheet" type="text/css"><link href="/css/bootstrap.css" rel="stylesheet" type="text/css"><link href="/css/main-style.css" rel="stylesheet" type="text/css"><link href="/css/animations.css" rel="stylesheet" type="text/css"><link href="/css/font-awesome.css" rel="stylesheet" type="text/css"><link href="/css/style.css" rel="stylesheet" type="text/css"><link href="/css/stylesheet.css" rel="stylesheet" type="text/css"><link href="/css/msgBoxLight.css" rel="stylesheet" type="text/css"><link href="/css/animated.css" rel="stylesheet" type="text/css">
    <!--[if IE]>
        <script type="text/javascript" src="Scripts/respond.min.js"></script>
        <script type="text/javascript" src="Scripts/html5shiv.js"></script>
    <![endif]-->
    <!--[if IE 8]>     <html class="ie8"> <![endif]-->
    <!--[if IE 7]>
     <link rel="stylesheet" type="text/css" href="../Styles/ie7.css" />
   <![endif]-->

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<script src="https://use.fontawesome.com/2771aa9ceb.js"></script>
   
    <script type="text/javascript" async="" src="/js/include.js.download"></script>
    <script src="/js/jquery.js.download" type="text/javascript"></script>
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/jquery.MultiFile.js" type="text/javascript"></script>
    <script src="/js/ValidationScripts.js" type="text/javascript"></script>
    <script type="text/javascript">
        function burstCache() {
            if (!navigator.onLine) {
                document.body.innerHTML = 'Loading...';
            }
        }
        window.history.forward();
        function noBack() { window.history.forward(); }
    </script>
    <script src="/js/pirobox_extended-1.3.js" type="text/javascript"></script>
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
    <script src="/js/jquery.msgBox.js" type="text/javascript"></script>

       

    
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
		.login .register{
		padding-top:50px;
		}
		.login .register li {
		font-weight: normal;
		display: inline-block;
		padding: 1% 1%;
		font-size: 1.1em;
}
    </style>
</head>
<body onload="burstCache(); if (event.persisted) noBack();">
    <!-- <form method="post" action="loginReq" id="form1"> -->
    <form:form name="loginForm" id="loginForm"  action="loginReq" method="post" modelAttribute="loginForm" >
<!--script type="text/javascript">
//<![CDATA[
var theForm = document.forms['loginForm'];
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
</script-->
<script src="../login1.html" type="text/javascript"></script>

    <!--<img src="images2/Bg.jpg" alt="" class="bg">-->
    <jsp:include page="header.jsp" />
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
<script src="/js/md5.js" type="text/javascript"></script>
<div id="ContentPlaceHolder1_Login1_pnlLogin" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;ContentPlaceHolder1_Login1_btnLogin&#39;)">
	
    
    <div class="login fadeInLeft animated">
        <h2>
            <i class="fa fa-sign-in"></i>Log in</h2>
        <div class="form-group">
            <input name="loginUserName" id="loginUserName" type="text" alt="Enter UserName" maxlength="30" tabindex="1" class="form-control"  autocomplete="off">
        </div>
        <div class="form-group">
            <input type="password" name="loginPassword" id="loginPassword"  placeholder="Password" tabindex="2" class="form-control" autocomplete="off">
        </div>
        <div class="form-group">
         <!--
         Username onblur="if(this.value==&#39;&#39;)this.value=&#39;Enter UserName or Mobile Number&#39;;" onfocus="if(this.value==&#39;Enter UserName or Mobile Number&#39;)this.value=&#39;&#39;;"
         Password onblur="if(this.value==&#39;&#39;)this.value=&#39;Enter Password&#39;;" onfocus="if(this.value==&#39;Enter Password&#39;)this.value=&#39;&#39;;"
         <div class="BDC_CaptchaDiv " id="c_forms_home_contentplaceholder1_login1_examplecaptcha_CaptchaDiv" style="width: 280px !important; height: 50px !important; ">
<div class="BDC_CaptchaImageDiv" id="c_forms_home_contentplaceholder1_login1_examplecaptcha_CaptchaImageDiv" style="width: 250px !important; height: 50px !important;">
   <div class="BDC_CaptchaImageDiv" style="width:250px; height:40px;"><img class="BDC_CaptchaImage" id="c_forms_home_contentplaceholder1_login1_examplecaptcha_CaptchaImage" src="../js/BotDetectCaptcha(1).ashx" alt="Retype the CAPTCHA code from the image"></div>
  <a href="https://captcha.org/captcha.html" title="BotDetect CAPTCHA Form Validation" style="display: block !important; height: 10px !important; margin: 0 !important; padding: 0 !important; font-size: 9px !important; line-height: 10px !important; visibility: visible !important; font-family: Verdana, DejaVu Sans, Bitstream Vera Sans, Verdana Ref, sans-serif !important; vertical-align: middle !important; text-align: center !important; text-decoration: none !important; background-color: #f8f8f8 !important; color: #606060 !important;">BotDetect CAPTCHA Form Validation</a>
 </div>
 <div class="BDC_CaptchaIconsDiv" id="c_forms_home_contentplaceholder1_login1_examplecaptcha_CaptchaIconsDiv" style="width: 24px !important;">
  <a class="BDC_ReloadLink" id="c_forms_home_contentplaceholder1_login1_examplecaptcha_ReloadLink" href="login1.html" onclick="c_forms_home_contentplaceholder1_login1_examplecaptcha.ReloadImage(); this.blur(); return false;" title="Change the CAPTCHA code" style="display: inline-block !important;"><img class="BDC_ReloadIcon" id="c_forms_home_contentplaceholder1_login1_examplecaptcha_ReloadIcon" src="../js/BotDetectCaptcha(2).ashx" alt="Change the CAPTCHA code"></a>
   <a class="BDC_SoundLink" id="c_forms_home_contentplaceholder1_login1_examplecaptcha_SoundLink" href="captcha.html" onclick="c_forms_home_contentplaceholder1_login1_examplecaptcha.PlaySound(); this.blur(); return false;" title="Speak the CAPTCHA code" rel="nofollow"><img class="BDC_SoundIcon" id="c_forms_home_contentplaceholder1_login1_examplecaptcha_SoundIcon" src="../js/BotDetectCaptcha(3).ashx" alt="Speak the CAPTCHA code"></a>
   <div class="BDC_Placeholder" id="c_forms_home_contentplaceholder1_login1_examplecaptcha_AudioPlaceholder">&nbsp;</div>
 </div>
    <script src="../js/BotDetectCaptcha(4).ashx" type="text/javascript"></script>
    <script type="text/javascript">
    //<![CDATA[
      BotDetect.Init('c_forms_home_contentplaceholder1_login1_examplecaptcha', 'e46aa99a905347a7acb3c234fc7a6f91', null, true, true, true, true, 1200, 7200, 0, true);
    //]]>
    </script>
    <script type="text/javascript">
    //<![CDATA[
      try{(function(){var bdrsn = document.createElement('script'); bdrsn.type = 'text/javascript'; bdrsn.async = true; bdrsn.src = document.location.protocol + '//remote.captcha.com/include.js?i=ATABMAEwATQBMQEwFMGneq5DmE8-PvFDedAiNm-YDXstATIBMAEwATEBNAE2ATABMgplbi1MYXRuLVVTAzI1MAI1MA'; var fsn = document.getElementsByTagName('script')[0]; fsn.parentNode.insertBefore(bdrsn, fsn);})();} catch(err){}
    //]]>
    </script>
  </div>-->


   <select name="role" id="role">
		<option value="---Select---">---Select---</option>
		<option value="Customer">Customer</option>
		<option value="Agent">Agent</option>
		<option value="Admin">Admin</option>
	</select>
        </div>
        <div class="form-group">
            <input type="submit" id="submitBtn" name="submitBtn" value="Login" tabindex="4" class="btn btn-danger btn-sm" autocomplete="off">
        </div>
        <ul class="register">
            <li><a href="forgotPassword.html"><i class="fa fa-unlock-alt fa-lg"></i>Forgot
                Password?</a></li>
            <li><a href="registration"><i class="fa fa-pencil-square-o fa-lg"></i>
                Registration</a></li>
            <!-- <li><a href="citizenVerification.html"><i class="fa fa-check-square-o fa-lg">
            </i>If not Verified !!!</a></li> -->
            <li><a href="pdf/usermanual.pdf" target="_blank"><i class="fa fa-file-text fa-lg">
            </i>Instructions for getting GST Certificates</a></li>
            <li><a href="pdf/DIGITAL_SIGNATURE_PROCESS.pdf" target="_blank"><i class="fa fa-file-text fa-lg">
            </i>Document Validation Process</a></li>
        </ul>
    </div>
			<!-- input type="hidden" name="nextPage" id="nextPage" value="${NextPage}" />
			<input type="hidden" name="genKey" id="genKey" value="${GenKey}" />
			<input type="hidden" name="salt" id="salt" value="" />
			<input type="hidden" name="four" id="four" value="" />
			<input type="hidden" name="password" id="password" value="" /> -->
</div>

            <!--<div class="fadeInUp animated">
                <div id="ticker-wrapper-1632333535645" class="ticker-wrapper has-js left"><div id="ticker-1632333535645" class="ticker"><div id="ticker-title-1632333535645" class="ticker-title"><span>Latest</span></div><p id="ticker-content-1632333535645" class="ticker-content" style="display: block; opacity: 1; left: 91px;">
                                For Queries Contact numbers for clarifications 24 x 7 Call Center: 1800 100 8888 (Toll Free)
                                </p><div id="ticker-swipe-1632333535645" class="ticker-swipe" style="left: 91px; margin-left: 560px; display: none;"><span style="display: block;"></span></div></div><ul lang="en" id="ticker-controls-1632333535645" class="ticker-controls"><li id="play-pause-1632333535645" class="jnt-play-pause controls" title=""></li><li id="prev-1632333535645" class="jnt-prev controls"></li><li id="next-1632333535645" class="jnt-next controls"></li></ul></div>
            </div>-->
        </div>
        <div class="col-md-6">
            <div class="timeline">
                <div class="tm-body">
                    <div class="tm-title fadeInRight animated">
                        <h2 class="h5">
                            To Register New Candidate, Apply Six easy steps</h2>
                    </div>
                    <ol class="tm-items">
                        <li class="fadeInUp animated">
                            <div class="tm-info">
                                <div class="tm-icon">
                                    <i class="fa fa-pencil"></i>
                                </div>
                                <time class="tm-datetime">
								<div class="tm-datetime-time">Step 1</div>
						    </time>
                            </div>
                            <div class="tm-box appear-animation fadeInRight appear-animation-visible" data-appear-animation="fadeInRight" data-appear-animation-delay="100" style="-webkit-animation: 100ms;">
                                <p>
                                    Registration
                                </p>
                            </div>
                        </li>
                        <li class="fadeInUp animated">
                            <div class="tm-info">
                                <div class="tm-icon">
                                    <i class="fa fa-lock"></i>
                                </div>
                                <time class="tm-datetime">
								<div class="tm-datetime-time">Step 2</div>
							</time>
                            </div>
                            <div class="tm-box appear-animation fadeInRight appear-animation-visible" data-appear-animation="fadeInRight" data-appear-animation-delay="250" style="-webkit-animation: 250ms;">
                                <p>Login</p>
                            </div>
                        </li>
                        <li class="fadeInUp animated">
                            <div class="tm-info">
                                <div class="tm-icon">
                                    <i class="fa fa-file-text"></i>
                                </div>
                                <time class="tm-datetime">
								<div class="tm-datetime-time">Step 3</div>
							</time>
                            </div>
                            <div class="tm-box appear-animation fadeInRight appear-animation-visible" data-appear-animation="fadeInRight" data-appear-animation-delay="250" style="-webkit-animation: 250ms;">
                                <p>
                                    Fill Application</p>
                            </div>
                        </li>
                        <li class="fadeInUp animated">
                            <div class="tm-info">
                                <div class="tm-icon">
                                    <i class="fa fa-university"></i>
                                </div>
                                <time class="tm-datetime">
								<div class="tm-datetime-time">Step 4</div>
							</time>
                            </div>
                            <div class="tm-box appear-animation fadeInRight appear-animation-visible" data-appear-animation="fadeInRight" data-appear-animation-delay="250" style="-webkit-animation: 250ms;">
                                <p>
                                    Upload Documents</p>
                            </div>
                        </li>
                        <li class="fadeInUp animated">
                            <div class="tm-info">
                                <div class="tm-icon">
                                    <i class="fa fa-money"></i>
                                </div>
                                <time class="tm-datetime">
								<div class="tm-datetime-time">Step 5</div>
							</time>
                            </div>
                            <div class="tm-box appear-animation fadeInRight appear-animation-visible" data-appear-animation="fadeInRight" data-appear-animation-delay="250" style="-webkit-animation: 250ms;">
                                <p>Pay Fees</p>
                            </div>
                        </li>
                        <li class="fadeInUp animated">
                            <div class="tm-info">
                                <div class="tm-icon">
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <time class="tm-datetime">
								<div class="tm-datetime-time">Step 6</div>
							</time>
                            </div>
                            <div class="tm-box appear-animation fadeInRight appear-animation-visible" data-appear-animation="fadeInRight" data-appear-animation-delay="250" style="-webkit-animation: 250ms;">
                                <p>Processing by Spiraea</p>
                            </div>
                        </li>
                    </ol>
                </div>
            </div>
            <div class="col-md-8 col-sm-8 pull-right">
            <!--div class="alert alert-success  ">
            
            </div-->
            </div>
        </div>
    </div>
    
           
        </div>
    </section>
    <jsp:include page="footer.jsp" />
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
    <script src="/js/jquery.ticker.js" type="text/javascript"></script>
    <script src="/js/site.js" type="text/javascript"></script>
    



<div class="piro_overlay" style="display: none; opacity: 0.3;"></div><table class="piro_html" cellpadding="0" cellspacing="0" style="left: 458px; top: 268.5px; display: none;"><tbody><tr><td class="h_mb_c" style="height: 0px; display: table-cell;"><div class="nav_container" style="height: 0px; display: block;"><div class="nav_container_hide"><div class="piro_close" title="close"></div></div></div></td></tr><tr><td class="h_c_c"><div class="resize"><div class="piro_loader" title="close"><span></span></div><div class="nav_big" style="display: none;"><a href="close" class="piro_close" title="close"></a></div><div class="div_reg"></div></div></td></tr></tbody></table><div class="piro_thumbs"></div></body>
</html>