<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ServletContext context = getServletConfig().getServletContext();
    String appAccent = context.getInitParameter("appAccent");
    String appAccentHover = context.getInitParameter("appAccentHover");
%>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="/app/js/utility.js"></script>
    <style>
        .complete-register-wrapper-sellvana svg{
            animation: progressBarIncrement 4s ease-out;
        }

        #login-button-sellvana:hover{
            background-color: <%=appAccentHover%>;
        }

        #quit-button-sellvana:hover{
            background-color: #7a7a7a;
        }

        #login-button-sellvana{
            width: 250px;
            height:40px;
            background-color: <%=appAccent%>;
            outline: none;
            border:none;
            border-radius: 7px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 500;
            font-size: 15.5345px;
            color: #FFFFFF;
            cursor: hand;
            transition: all 0.2s ease-in;
            box-shadow: 0px 4.11878px 10.297px rgba(0, 0, 0, 0.25);
        }

        #quit-button-sellvana{
            width: 250px;
            height:40px;
            background-color: #a8a8a8;
            outline: none;
            border:none;
            border-radius: 7px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 500;
            font-size: 15.5345px;
            color: #FFFFFF;
            cursor: hand;
            transition: all 0.2s ease-in;
            box-shadow: 0px 4.11878px 10.297px rgba(0, 0, 0, 0.25);
        }

        .complete-register-wrapper-sellvana div{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap:16px;
            margin-top: 60px;
        }

        .complete-register-wrapper-sellvana h2{
            margin-top: 25px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 600;
            font-size: 25.0916px;
            color: #454545;
        }

        .complete-register-wrapper-sellvana h4{
            margin-top: 18px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 18.171px;
            text-align: center;
            color: #454545;
        }

        .complete-register-wrapper-sellvana{
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        #loading-register-label-sellvana{
            font-family: Inter;
            font-style: normal;
            font-weight: 500;
            font-size: 20.9423px;
            color: #42DF81;
        }

        .lds-ripple {
            display: inline-block;
            position: relative;
            width: 200px;
            height: 200px;
        }
        .lds-ripple div {
            position: absolute;
            border: 6px solid #42DF81;
            opacity: 1;
            border-radius: 50%;
            animation: lds-ripple 1s cubic-bezier(0, 0.2, 0.8, 1) infinite;
        }
        .lds-ripple div:nth-child(2) {
            animation-delay: -0.5s;
        }

        .complete-register-content-sellvana{
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .complete-loading-register-content-sellvana{
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top:-100px;
        }

        @keyframes display-account-registration-logo{
            0%{
                opacity: 0%;
            }
            100%{
                opacity: 0%;
            }
        }

        @keyframes lds-ripple {
            0% {
                top: 90px;
                left: 90px;
                width: 0;
                height: 0;
                opacity: 0;
            }
            4.9% {
                top: 90px;
                left: 90px;
                width: 0;
                height: 0;
                opacity: 0;
            }
            5% {
                top: 90px;
                left: 90px;
                width: 0;
                height: 0;
                opacity: 1;
            }
            100% {
                top: 0px;
                left: 0px;
                width: 180px;
                height: 180px;
                opacity: 0;
            }
        }

        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        input[type=number] {
            -moz-appearance: textfield;
        }

        .button-register-sellvana:disabled{
            color: white;
            background-color: grey;
            cursor:default;
        }

        .button-register-sellvana:disabled:hover{
            color: white;
            background-color: grey;
        }

        .image-upload-error-register-sellvana{
            display: none;
            font-family: Inter;
            font-style: normal;
            font-weight: 500;
            font-size: 15.9423px;
            color: #e02f2f !important;
        }

        .drop-area-register-sellvana.hover{
            border-color: <%=appAccent%>;
            border-width: 2px;
        }

        .image-remove-register-sellvana{
            font-family: Inter;
            font-style: normal;
            font-weight: 500;
            font-size: 16px;
            color: #ffffff;
            padding: 7px 15px;
            border-radius: 5px;
            border:none;
            filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
            background-color: rgba(255, 70, 102, 0.73);
            cursor: hand;
            transition: all 0.25s ease-in;
            display:none
        }

        .image-remove-register-sellvana:hover{
            background-color: rgba(192, 56, 80, 0.73);
        }

        .upload-image-content-register-sellvana{
            width: auto;
            height: auto;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap:31px;
        }

        .upload-image-content-register-sellvana #avatar-image-register-sellvana{
            width: 164px;
            height: 164px;
            border-radius: 50%;
            filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
        }

        .drop-area-register-sellvana{
            display: flex;
            flex-direction: column;
            width: 647px;
            height: 226px;
            justify-content: center;
            align-items: center;
            box-sizing: border-box;
            gap:19px;
            background: #FFFFFF;
            border: 0.885682px dashed #595959;
            border-radius: 5.31409px;
        }

        .upload-image-content-register-sellvana img{
            width: 40px;
            height: 40px;
        }

        .drop-area-register-sellvana h3{
            font-family: Inter;
            font-style: normal;
            font-weight: 500;
            font-size: 18.3407px;
            color:#4c4c4c;
        }

        .drop-area-register-sellvana a{
            color: <%=appAccent%>;
            cursor: hand;
            transition: all 0.25s ease-in;
        }

        .drop-area-register-sellvana a:hover{
            color: <%=appAccentHover%>;
            text-decoration: underline;
        }

        .drop-area-register-sellvana h6{
            font-family: Inter;
            font-style: normal;
            font-weight: 500;
            font-size: 15.9423px;
            color: #919191;
        }

        .slick-dots {
            list-style-type: none;
            top:-30px;
            display: flex;
            justify-content: center;
            gap:7px;
            margin: 0 auto;
            max-width: 536px;
            padding: 0;
            position: relative;
            width: 100%;
            z-index: 1;
            flex-wrap: wrap;
        }

        @keyframes progressBarIncrement {
            0% {
                width: 0;
            }

            100% {
                width: 100%;
            }
        }

        @keyframes progressBarDecrement {
            0% {
                width: 100%;
            }

            100% {
                width: 0%;
            }
        }

        .slick-dots li {
            background: #DFDFDF;
            height: 4px;
            flex: 1;
            position: relative;
            width: 100%;
        }

        .slick-dots li.slick-active {
            background: #DFDFDF;
            position: relative;
        }

        .slick-dots li.slick-completed:after {
            content: "";
            background-color: #42DF81;
            height: 4px;
            left: 0;
            animation: progressBarIncrement 1s ease-in-out;
            animation-fill-mode: both;
            position: absolute;
            width: 100%;
            z-index: 5;
            top: 0;
        }

        .slick-dots li.slick-return:after {
            height: 4px;
            left: 0;
            content: "";
            background-color: #42DF81;
            animation: progressBarDecrement 1s ease-in-out;
            animation-fill-mode: both;
            position: absolute;
            width: 0%;
            z-index: 5;
            top: 0;
        }

        .back-button-register-sellvana{
            position: absolute;
            right:850px;
            top:25px;
            width: 35px;
            height: 40px;
            border:none;
            border-radius: 5px;
            background-color: #A6E1FA;
            color: #424242;
            transition: all 0.25s ease-in;
            cursor: hand;
            display: none;
        }

        .back-button-register-sellvana:hover{
            background-color: grey;
        }

        .password-visible-container-register-sellvana{
            display: flex;
            width: 400px;
            flex-direction: row;
            justify-content: right;
            align-items: center;
            gap:9px;
        }

        .checkbox-register-sellvana{
            width: 15px;
            height: 25px;
        }

        .checkbox-register-sellvana:checked{
            accent-color: <%=appAccent%>;
        }

        .checkbox-title-register-sellvana{
            color: #646464;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 14.5272px;
        }

        .password-requirement-container{
            display: flex;
            flex-direction: column;
            gap:15px;
            margin-top: 20px;
        }

        .password-requirement-logo-green{
            background-image: url(<%
            out.println(context.getContextPath()+"/img/green-tick.png");
        %>);
            width: 28px;
            height: 28px;
            background-size: cover;
        }

        .password-requirement-logo-red{
            background-image: url(<%
            out.println(context.getContextPath()+"/img/red-cross.png");
        %>);
            width: 28px;
            height: 28px;
            background-size: cover;
        }

        .password-requirement-label-activated{
            color: #1D3557;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 16.5272px;
        }

        .password-requirement-label-deactivated{
            color: #B2BFC1;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 16.5272px;
        }

        .password-requirement-row{
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            gap:13px;
            align-items: center;
        }

        #register-content-1{

        }

        #register-content-2{
            display: none;
        }

        #register-content-3{
            display: none;
        }

        #register-content-4{
            display: none;
        }


        .close-button-register-sellvana{
            position: absolute;
            right:20px;
            top:25px;
            font-size: 35px;
            width: 35px;
            height: 40px;
            border:none;
            border-radius: 5px;
            background-color: #A6E1FA;
            color: #424242;
            transition: all 0.2s ease-in;
            cursor: hand;
        }

        .close-button-register-sellvana:hover{
            background-color: grey;
            color:white;
        }

        .footer-content-register-sellvana{
            margin-top: 50px;
            gap:40px;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .image-register-sellvana{
            background-image: url(<%
            out.println(context.getContextPath()+"/img/ecommerce-checkout-laptop-bro.png");
            %>);
            width: 50%;
            margin-left: 70px;
            height:90%;
            background-size: cover;
        }

        .screen-content-register-sellvana{
            display: flex;
            flex-direction: row;
            width: 100%;
            gap:5%;
            height: 100%;
        }

        .box-content-register-sellvana{
            display: flex;
            flex-direction: column;
            width: auto;
            justify-content: center;
            padding-left: 65px;
        }

        .login-link-sellvana{
            cursor: hand;
            text-decoration: underline;
            color:<%=appAccent%>;
            transition: all 0.3s ease-in;
        }

        .login-link-sellvana:hover{
            color:grey;
        }

        .login-message-sellvana{
            font-family: Roboto;
            font-style: normal;
            font-weight: 400;
            font-size: 18.0498px;
            color: #616161;
        }

        .button-register-sellvana{
            width:390px;
            height: 56px;
            background: <%=appAccent%>;
            border-radius: 8px;
            outline: none;
            border: none;
            cursor: hand;
            font-family: Inter;
            font-style: normal;
            font-weight: 700;
            font-size: 16px;
            color:#ffffff;
            transition: all 0.25s ease-in;
        }

        .button-register-sellvana:hover{
            background: <%=appAccentHover%>;
        }

        .input-box-padding-sellvana{
            padding-left: 35px;
            padding-top:34px;
        }

        .input-row-box-sellvana{
            display: flex;
            width: 100%;
            flex-direction: row;
            justify-content: space-between;

        }

        .input-register-box-sellvana{
            width: 536px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .message-register-sellvana{
            display: flex;
            flex-direction:column;
        }

        .title-register-sellvana{
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 18.0498px;
            color: #2D3748;
        }

        .description-register-sellvana{
            margin-left: 2px;
            margin-top:5px;
            font-family: 'Ubuntu';
            font-style: normal;
            font-weight: 500;
            font-size: 33.8434px;
            color: #1A202C;

        }

        *{
            margin: 0px;
            padding:0px;
        }
    </style>
</head>
<body>
<div class="screen-content-register-sellvana">
    <div class="image-register-sellvana"></div>
    <div class="box-content-register-sellvana">
        <div class="message-register-sellvana">
            <ul class="slick-dots">
                <li id="slick-bar-1" class="slick-active"></li>
                <li id="slick-bar-2" class="slick-active"></li>
                <li id="slick-bar-3" class="slick-active"></li>
            </ul>
            <h1 class="title-register-sellvana">New User</h1>
            <h2 class="description-register-sellvana">Register new account</h2>
        </div>
        <div class="input-box-padding-sellvana">
            <button class="back-button-register-sellvana">
                <jsp:include page="/WEB-INF/jsp/component/backIcon.jsp">
                    <jsp:param name="iconWidth" value="25"/>
                    <jsp:param name="iconHeight" value="25"/>
                    <jsp:param name="iconColor" value="#424242"/>
                    <jsp:param name="iconHoverColor" value="#ffffff"/>
                </jsp:include>
            </button>
            <div id="register-content-1" class="input-register-box-sellvana">
                <div class="input-row-box-sellvana">
                    <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                        <jsp:param name="title" value="First Name"/>
                        <jsp:param name="inputType" value="text"/>
                        <jsp:param name="inputName" value="firstNameSellvana"/>
                        <jsp:param name="inputWidth" value="252px"/>
                        <jsp:param name="inputHeight" value="56px"/>
                        <jsp:param name="inputFontSize" value="19px"/>
                        <jsp:param name="inputErrorMessage" value="Please input valid first name"/>
                    </jsp:include>
                    <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                        <jsp:param name="title" value="Last Name"/>
                        <jsp:param name="inputType" value="text"/>
                        <jsp:param name="inputName" value="lastNameSellvana"/>
                        <jsp:param name="inputWidth" value="252px"/>
                        <jsp:param name="inputHeight" value="56px"/>
                        <jsp:param name="inputFontSize" value="19px"/>
                        <jsp:param name="inputErrorMessage" value="Please input valid last name"/>
                    </jsp:include>
                </div>
                <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                    <jsp:param name="title" value="Email Address"/>
                    <jsp:param name="inputType" value="text"/>
                    <jsp:param name="inputName" value="emailAddressSellvana"/>
                    <jsp:param name="inputWidth" value="100%"/>
                    <jsp:param name="inputHeight" value="56px"/>
                    <jsp:param name="inputFontSize" value="19px"/>
                    <jsp:param name="inputErrorMessage" value="Please input valid email address"/>
                </jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                    <jsp:param name="title" value="Telephone Number"/>
                    <jsp:param name="inputType" value="tel"/>
                    <jsp:param name="inputName" value="telephoneNumberSellvana"/>
                    <jsp:param name="inputWidth" value="100%"/>
                    <jsp:param name="inputHeight" value="56px"/>
                    <jsp:param name="inputFontSize" value="19px"/>
                    <jsp:param name="inputErrorMessage" value="Please input valid telephone number"/>
                </jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                    <jsp:param name="title" value="Date Of Birth"/>
                    <jsp:param name="inputType" value="date"/>
                    <jsp:param name="inputName" value="dateOfBirthSellvana"/>
                    <jsp:param name="inputWidth" value="100%"/>
                    <jsp:param name="inputHeight" value="56px"/>
                    <jsp:param name="inputFontSize" value="19px"/>
                    <jsp:param name="inputErrorMessage" value="Please input valid date of birth"/>
                </jsp:include>
            </div>
            <div id="register-content-2" class="input-register-box-sellvana">
                <div class="upload-image-content-register-sellvana">
                    <img id="avatar-image-register-sellvana" src="<%
                        out.println(context.getContextPath()+"/img/male-avatar.png");
                        %>">
                    <div class="drop-area-register-sellvana">
                        <input id="upload-file-register-sellvana" type="file" accept="image/*" style="display: none">
                        <img src="<%
                            out.println(context.getContextPath()+"/img/image-icon.png");
                            %>">
                        <h3>Drag your image here, or <a id="browse-upload-image-register-sellvana">browse</a></h3>
                        <h6 class="image-upload-support-register-sellvana">Supports JPG, PNG</h6>
                        <button class="image-remove-register-sellvana">Remove Image</button>
                        <h6 class="image-upload-error-register-sellvana">Uploaded item is not a valid image file. Please try again.</h6>
                    </div>
                </div>
            </div>
            <div id="register-content-3" class="input-register-box-sellvana">
                <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                    <jsp:param name="title" value="Password"/>
                    <jsp:param name="inputType" value="password"/>
                    <jsp:param name="inputName" value="password"/>
                    <jsp:param name="inputWidth" value="400px"/>
                    <jsp:param name="inputHeight" value="50px"/>
                    <jsp:param name="inputFontSize" value="19px"/>
                </jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                    <jsp:param name="title" value="Confirm Password"/>
                    <jsp:param name="inputType" value="password"/>
                    <jsp:param name="inputName" value="confirmPassword"/>
                    <jsp:param name="inputWidth" value="400px"/>
                    <jsp:param name="inputHeight" value="50px"/>
                    <jsp:param name="inputFontSize" value="19px"/>
                </jsp:include>
                <div class="password-visible-container-register-sellvana">
                    <input class="checkbox-register-sellvana" type="checkbox">
                    <h6 class="checkbox-title-register-sellvana">Show Password</h6>
                </div>
                <div class="password-requirement-container">
                    <div class="password-requirement-row">
                        <div id="password-requirement-logo-1" class="password-requirement-logo-red"></div>
                        <h5 id="password-requirement-label-1" class="password-requirement-label-deactivated">Password must more than 8 characters</h5>
                    </div>
                    <div class="password-requirement-row">
                        <div id="password-requirement-logo-2" class="password-requirement-logo-red"></div>
                        <h5 id="password-requirement-label-2" class="password-requirement-label-deactivated">Password must includes special characters</h5>
                    </div>
                    <div class="password-requirement-row">
                        <div id="password-requirement-logo-3" class="password-requirement-logo-red"></div>
                        <h5 id="password-requirement-label-3" class="password-requirement-label-deactivated">Password must not contain email address</h5>
                    </div>
                    <div class="password-requirement-row">
                        <div id="password-requirement-logo-4" class="password-requirement-logo-red"></div>
                        <h5 id="password-requirement-label-4" class="password-requirement-label-deactivated">Password must be same as confirm password</h5>
                    </div>
                </div>
            </div>
            <div id="register-content-4" class="input-register-box-sellvana">
                <div class="complete-register-content-sellvana">
                    <div class="complete-loading-register-content-sellvana">
                        <div class="lds-ripple"><div></div><div></div></div>
                        <h3 id="loading-register-label-sellvana">Loading ...</h3>
                    </div>
                    <div class="complete-register-wrapper-sellvana">
                        <svg xmlns="http://www.w3.org/2000/svg" width="58" height="71" viewBox="0 0 58 71" fill="none">
                            <path d="M50.8073 0H6.35091C2.84203 0 0.0317545 2.85563 0.0317545 6.3813L0 47.6524C0 49.8539 1.11141 51.8002 2.7944 52.9488L28.5632 70.1943L54.3321 52.9488C56.015 51.8002 57.1264 49.8539 57.1264 47.6524L57.1582 6.3813C57.1582 2.85563 54.3162 0 50.8073 0ZM22.2282 47.8597L6.35091 31.9065L10.8442 27.3917L22.2282 38.8302L46.314 14.6291L50.8073 19.1439L22.2282 47.8597Z" fill="#42DF81" fill-opacity="0.93"/>
                        </svg>
                        <h2>Account Registration Completed</h2>
                        <h4>
                            Please login to access to your account.
                        </h4>
                        <div>
                            <button id="login-button-sellvana">
                                Login
                            </button>
                            <button id="quit-button-sellvana">
                                Quit
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-content-register-sellvana">
                <button class="button-register-sellvana" disabled>Continue</button>
                <h4 class="login-message-sellvana">Already have an account? <a class="login-link-sellvana">Login Now</a></h4>
            </div>
        </div>
    </div>
    <button class="close-button-register-sellvana" onclick="
            var hoverScreenStyle = document.getElementById('hover-screen').style
            hoverScreenStyle.display = 'none';
            ">
        &times;
    </button>
</div>
<script>
    $(document).ready(()=>{
        $('.input-sellvana').attr('autocomplete','nope');
    })

    $('#firstNameSellvana').on('input',()=>{
        checkFormContent()
        var result = checkName('#firstNameSellvana')
        if (result){
            $('#firstNameSellvana').removeClass('error')
            $('#tooltip-firstNameSellvana').removeClass('tooltip-show')
        }else {
            $('#firstNameSellvana').addClass('error')
            $('#tooltip-firstNameSellvana').addClass('tooltip-show')
        }
    })
    $('#lastNameSellvana').on('input',()=>{
        checkFormContent()
        var result = checkName('#lastNameSellvana')
        if (result){
            $('#lastNameSellvana').removeClass('error')
            $('#tooltip-lastNameSellvana').removeClass('tooltip-show')
        }else {
            $('#lastNameSellvana').addClass('error')
            $('#tooltip-lastNameSellvana').addClass('tooltip-show')
        }
    })
    $('#emailAddressSellvana').on('input',()=>{
        checkFormContent()
        var result = checkEmailAddress('#emailAddressSellvana')
        if (result){
            $('#emailAddressSellvana').removeClass('error')
            $('#tooltip-emailAddressSellvana').removeClass('tooltip-show')
        }else {
            $('#emailAddressSellvana').addClass('error')
            $('#tooltip-emailAddressSellvana').addClass('tooltip-show')
        }
    })
    $('#telephoneNumberSellvana').on('input',()=>{
        let phone = $('#telephoneNumberSellvana').val().replace(/\D/g, '');
        phone = phone.substring(0, 11);
        const phoneArr = phone.split('');
        if (phoneArr.length > 3) {
            phoneArr.splice(3, 0, '-');
        }
        $('#telephoneNumberSellvana').val(phoneArr.join(''));

        checkFormContent();
        var result = checkTelephoneNumber('#telephoneNumberSellvana')
        if (result){
            $('#telephoneNumberSellvana').removeClass('error')
            $('#tooltip-telephoneNumberSellvana').removeClass('tooltip-show')
        }else {
            $('#telephoneNumberSellvana').addClass('error')
            $('#tooltip-telephoneNumberSellvana').addClass('tooltip-show')
        }
    })
    $('#dateOfBirthSellvana').on('input',()=>{
        checkFormContent()
        var result = checkDateOfBirth('#dateOfBirthSellvana')
        if (result){
            $('#dateOfBirthSellvana').removeClass('error')
            $('#tooltip-dateOfBirthSellvana').removeClass('tooltip-show')
        }else {
            $('#dateOfBirthSellvana').addClass('error')
            $('#tooltip-dateOfBirthSellvana').addClass('tooltip-show')
        }
    })

    function checkFormContent(){
        if (checkName('#firstNameSellvana') && checkName('#lastNameSellvana') && checkEmailAddress('#emailAddressSellvana') && checkTelephoneNumber('#telephoneNumberSellvana') && checkDateOfBirth('#dateOfBirthSellvana')){
            $('.button-register-sellvana').prop('disabled',false)
        }else {
            $('.button-register-sellvana').prop('disabled',true)
        }
    }

    $('.drop-area-register-sellvana').on('dragleave', function(event) {
        $(this).removeClass('hover');
        event.preventDefault();
        event.stopPropagation();
    });

    $('.drop-area-register-sellvana').on('dragenter dragover', function(event) {
        $(this).addClass('hover');
        event.preventDefault();
        event.stopPropagation();
    });

    $(".drop-area-register-sellvana").on('drop', (e)=>{
        e.preventDefault();
        e.stopPropagation();
        const file = e.originalEvent.dataTransfer.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(event) {
                const image = new Image();
                image.onload = ()=>{
                    $('#avatar-image-register-sellvana').attr('src', event.target.result);
                    $(".image-remove-register-sellvana").css('display','block')
                    $(".button-register-sellvana").html("Continue");
                    $('.image-upload-error-register-sellvana').css('display','none')
                }
                image.onerror = ()=>{
                    $('#preview').attr('src', '/app/img/male-avatar.png');
                    $('.image-upload-error-register-sellvana').css('display','block')
                }
                image.src = event.target.result;
            }
            reader.readAsDataURL(file);
            $(".drop-area-register-sellvana").removeClass('hover');
        }
    })

    $('#upload-file-register-sellvana').change(()=>{
        const file = $('#upload-file-register-sellvana')[0].files[0];
        if (file){
            const reader = new FileReader();
            reader.onload = (event)=>{
                const image = new Image();
                image.onload = ()=>{
                    $('#avatar-image-register-sellvana').attr('src', event.target.result);
                    $(".image-remove-register-sellvana").css('display','block')
                    $(".button-register-sellvana").html("Continue");
                    $('.image-upload-error-register-sellvana').css('display','none')
                }
                image.onerror = ()=>{
                    $('#preview').attr('src', '/app/img/male-avatar.png');
                    $('.image-upload-error-register-sellvana').css('display','block')
                }
                image.src = event.target.result;
            }
            reader.readAsDataURL(file);
            $(".button-register-sellvana").html("Continue");
        }
    })

    $('.image-remove-register-sellvana').on('click',()=>{
        $('#avatar-image-register-sellvana').attr('src','/app/img/male-avatar.png')
        $('.image-remove-register-sellvana').css('display','none')
        $('#upload-file-register-sellvana').val('')
        $(".button-register-sellvana").html("Skip");
    })

    $('#browse-upload-image-register-sellvana').on('click',(e)=>{
        e.preventDefault();
        $('#upload-file-register-sellvana').click();
    })

    // Reactive Page Script
    var currentPage = 1;

    function refreshPage(isBack){
        switch (currentPage){
            case 1:
                $('.back-button-register-sellvana').css('display','none')
                $('.button-register-sellvana').css('display','block')
                //
                $('#register-content-1').css("display","flex")
                $('#register-content-2').css("display","none")
                $('#register-content-3').css("display","none")
                //
                $('#slick-bar-1').addClass('slick-return');
                $('#slick-bar-1').removeClass('slick-completed');
                $('#slick-bar-2').removeClass('slick-completed');
                $('#slick-bar-2').removeClass('slick-return');
                $('#slick-bar-3').removeClass('slick-completed');
                $('#slick-bar-3').removeClass('slick-return');
                //
                $('.button-register-sellvana').html("Next")
                //
                $('.description-register-sellvana').html("Register new account")
                break;
            case 2:
                $('.back-button-register-sellvana').css('display','block')
                $('.button-register-sellvana').css('display','block')
                //
                $('#register-content-1').css("display","none")
                $('#register-content-2').css("display","flex")
                $('#register-content-3').css("display","none")
                //
                $('#slick-bar-1').addClass('slick-completed');
                $('#slick-bar-1').removeClass('slick-return');
                if (isBack){
                    $('#slick-bar-2').removeClass('slick-completed');
                    $('#slick-bar-2').addClass('slick-return');
                }else{
                    $('#slick-bar-2').removeClass('slick-completed');
                    $('#slick-bar-2').removeClass('slick-return');
                }
                $('#slick-bar-3').removeClass('slick-completed');
                $('#slick-bar-3').removeClass('slick-return');
                //
                if ($("#avatar-image-register-sellvana").attr('src').match("/app/img/male-avatar.png")){
                    $('.button-register-sellvana').html("Skip")
                } else {
                    $('.button-register-sellvana').html("Continue")
                }
                //
                $('.description-register-sellvana').html("Upload profile picture")
                break;
            case 3:
                $('.back-button-register-sellvana').css('display','block')
                $('.button-register-sellvana').css('display','block')
                //
                $('#register-content-1').css("display","none")
                $('#register-content-2').css("display","none")
                $('#register-content-3').css("display","flex")
                //
                $('#slick-bar-1').addClass('slick-completed');
                $('#slick-bar-1').removeClass('slick-return');
                $('#slick-bar-2').addClass('slick-completed');
                $('#slick-bar-2').removeClass('slick-return');
                if (isBack){
                    $('#slick-bar-3').removeClass('slick-completed');
                    $('#slick-bar-3').addClass('slick-return');
                } else {
                    $('#slick-bar-3').removeClass('slick-completed');
                    $('#slick-bar-3').removeClass('slick-return');
                }
                //
                $('.button-register-sellvana').html("Complete")
                //
                $('.description-register-sellvana').html("Enter Security Details")
                break;
            case 4:
                $('.back-button-register-sellvana').css('display','none')
                $('.button-register-sellvana').css('display','none')
                //
                $('#register-content-1').css("display","none")
                $('#register-content-2').css("display","none")
                $('#register-content-3').css("display","none")
                $('#register-content-4').css("display","flex")
                //
                $('#slick-bar-1').addClass('slick-completed');
                $('#slick-bar-1').removeClass('slick-return');
                $('#slick-bar-2').addClass('slick-completed');
                $('#slick-bar-2').removeClass('slick-return');
                $('#slick-bar-3').addClass('slick-completed');
                $('#slick-bar-3').removeClass('slick-return');
                //
                $('.description-register-sellvana').css('display','none')
                $('.title-register-sellvana').css('display','none')
                //
                $('.login-message-sellvana').css('display','none')
                $('.slick-dots').css('top','-200px');
                // show purpose only
                setTimeout(()=>{
                    $('.complete-loading-register-content-sellvana').css('display','none')
                    $('.complete-register-wrapper-sellvana').css('display','flex')
                },1000)

                break;
        }
    }

    $('.back-button-register-sellvana').click(()=>{
        currentPage -= 1
        refreshPage(true)
    })

    $('.checkbox-register-sellvana').click(()=>{
        if ($('.checkbox-register-sellvana').is(':checked')){
            $('#password').attr('type','text')
            $('#confirmPassword').attr('type','text')
        } else {
            $('#password').attr('type','password')
            $('#confirmPassword').attr('type','password')
        }
    })

    $('.button-register-sellvana').click(()=>{
        currentPage += 1;
        refreshPage(false);
    })

    $('#password').on('input',()=>{
            var inputString =$('#password').val();

            // Checking the length requirement of the password
            if (inputString.length > 8){
                $('#password-requirement-label-1').attr('class','password-requirement-label-activated')
                $('#password-requirement-logo-1').attr('class','password-requirement-logo-green')
            } else {
                $('#password-requirement-label-1').attr('class','password-requirement-label-deactivated')
                $('#password-requirement-logo-1').attr('class','password-requirement-logo-red')
            }

            // Checking the special character requirement of the password
            if (/[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/.test(inputString)){
                $('#password-requirement-label-2').attr('class','password-requirement-label-activated')
                $('#password-requirement-logo-2').attr('class','password-requirement-logo-green')
            } else {
                $('#password-requirement-label-2').attr('class','password-requirement-label-deactivated')
                $('#password-requirement-logo-2').attr('class','password-requirement-logo-red')
            }

            // Checking the email address requirement of the password
            if (/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(inputString)){
                $('#password-requirement-label-3').attr('class','password-requirement-label-deactivated')
                $('#password-requirement-logo-3').attr('class','password-requirement-logo-red')
            } else {
                $('#password-requirement-label-3').attr('class','password-requirement-label-activated')
                $('#password-requirement-logo-3').attr('class','password-requirement-logo-green')
            }

            // Checking the same password requirement of the password
            if ($('#confirmPassword').val() != inputString){
                $('#password-requirement-label-4').attr('class','password-requirement-label-deactivated')
                $('#password-requirement-logo-4').attr('class','password-requirement-logo-red')
            } else {
                $('#password-requirement-label-4').attr('class','password-requirement-label-activated')
                $('#password-requirement-logo-4').attr('class','password-requirement-logo-green')
            }
        }
    )
    $('#confirmPassword').on('input',()=>{
        if ($('#confirmPassword').val() != $('#password').val()){
            $('#password-requirement-label-4').attr('class','password-requirement-label-deactivated')
            $('#password-requirement-logo-4').attr('class','password-requirement-logo-red')
        } else {
            $('#password-requirement-label-4').attr('class','password-requirement-label-activated')
            $('#password-requirement-logo-4').attr('class','password-requirement-logo-green')
        }
    })
</script>
</body>
</html>