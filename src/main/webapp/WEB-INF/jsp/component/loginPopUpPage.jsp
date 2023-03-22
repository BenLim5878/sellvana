<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    ServletContext context = getServletConfig().getServletContext();
    String appName = context.getInitParameter("appName");
    String appAccent = context.getInitParameter("appAccent");
%>
<%
    String displayProperty = "none";
    if (!Boolean.parseBoolean(request.getParameter("isHidden"))){
        displayProperty = "flex";
    }
%>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<div id="hover-screen">
    <div id="card">
        <div class="close-button-box-sellvana">
            <button class="close-button-sellvana" onclick="
            var hoverScreenStyle = document.getElementById('hover-screen').style
            hoverScreenStyle.display = 'none';
            ">
                &times;
            </button>
        </div>
        <div class="logo-box">
            <jsp:include page="/WEB-INF/jsp/component/appLogo.jsp">
                <jsp:param name="size" value="65"/>
            </jsp:include>
        </div>
        <h1 class="sellvana-title">Welcome back!</h1>
        <h2 class="sellvana-message">
            Log in to your <%=appName%> account
        </h2>
        <div>
            <jsp:include page="/WEB-INF/jsp/component/loginInputField.jsp">
                <jsp:param name="title" value="Email"/>
                <jsp:param name="inputType" value="text"/>
                <jsp:param name="inputName" value="email-sellvana}"/>
            </jsp:include>
        </div>
        <div>
            <jsp:include page="/WEB-INF/jsp/component/loginInputField.jsp">
                <jsp:param name="title" value="Password"/>
                <jsp:param name="inputType" value="Password"/>
                <jsp:param name="inputName" value="password-sellvana"/>
            </jsp:include>
        </div>
        <button class="submit-button-sellvana">
            Log in
        </button>
        <div class="forgot-password-box-sellvana">
            <a href="kukubird" class="forgot-password-link-sellvana">
                FORGOT PASSWORD?
            </a>
        </div>
    </div>
</div>
<style>
    *{
        padding: 0;
        margin: 0;
    }

    #hover-screen{
        width: 100%;
        height:100%;
        display: <%=displayProperty%>;
        align-items: center;
        position: absolute;
        left: 0px;
        top:0px;
        justify-content: center;
        background-color: rgba(0, 0, 0, 0.62);
    }

    .close-button-box-sellvana{
        width: 0px;
        height: 0px;
        position: relative;
        left: 97%;
        top:-20px;
    }

    .close-button-sellvana {
        font-size: 28px;
        border:none;
        color: #2a2a2a;
        background-color: #ffffff;
        transition: 0.25s;
        border-radius: 5px;
        width: 28px;
        height: 31px;
        cursor:hand;
    }

    .close-button-sellvana:hover{
        background-color: #dadada;
    }

    .logo-box{
        width: 100%;
        margin-top:15px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .forgot-password-box-sellvana{
        margin-top:30px;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .forgot-password-link-sellvana{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 700;
        font-size: 12.8051px;
        text-align: center;
        color: <%=appAccent%>;
    }

    .sellvana-title{
        font-family: 'Poppins';
        width: 100%;
        margin:30px 0px 35px 0px;
        font-style:normal;
        font-weight: 500;
        font-size: 28.2513px;
        line-height: 0px;
        height: auto;
        color: #474747;
        text-align: center;
    }
    .sellvana-message{
        font-family: 'Poppins';
        width:100%;
        text-align: center;
        margin-bottom: 50px;
        font-style: normal;
        font-weight: 400;
        font-size: 16.6256px;
        color: #6B6B6B;
        order: 1;
        flex-grow: 0;
    }

    .submit-button-sellvana {
        display: inline-block;
        margin-top:5px;
        transition: all 0.2s ease-in;
        position: relative;
        overflow: hidden;
        width:100%;
        z-index: 1;
        color: #ffffff;
        padding: 0.7em 1.7em;
        font-family: Ubuntu;
        font-size: 16px;
        border-radius: 0.5em;
        background: <%=appAccent%>;
        border: none;
        box-shadow: 3px 3px 6px #c5c5c5,
        -6px -6px 12px #ffffff;
    }

    .submit-button-sellvana:active {
        color: #666;
        box-shadow: inset 4px 4px 12px #c5c5c5,
        inset -4px -4px 12px #ffffff;
        outline: none;
    }

    .submit-button-sellvana.before {
        content: "";
        position: absolute;
        left: 50%;
        transform: translateX(-50%) scaleY(1) scaleX(1.25);
        top: 100%;
        width: 140%;
        height: 180%;
        background-color: rgba(0, 0, 0, 0.05);
        border-radius: 50%;
        display: block;
        transition: all 0.5s 0.1s cubic-bezier(0.55, 0, 0.1, 1);
        z-index: -1;
    }

    .submit-button-sellvana:after {
        content: "";
        position: absolute;
        left: 55%;
        transform: translateX(-50%) scaleY(1) scaleX(1.45);
        top: 180%;
        width: 160%;
        height: 190%;
        background-color: #00c95b;
        border-radius: 50%;
        display: block;
        transition: all 0.5s 0.1s cubic-bezier(0.55, 0, 0.1, 1);
        z-index: -1;
    }

    .submit-button-sellvana:hover {
        cursor: hand;
        color: #ffffff;
        border: none;
    }

    .submit-button-sellvana:hover:before {
        top: -35%;
        background-color: #00c95b;
        transform: translateX(-50%) scaleY(1.3) scaleX(0.8);
    }

    .submit-button-sellvana:hover:after {
        top: -45%;
        background-color: #00c95b;
        transform: translateX(-50%) scaleY(1.3) scaleX(0.8);
    }

    #card {
        transition: all 0.6s ease-in;
        padding: 30px 40px;
        width: 425px;
        height: 500px;
        border-radius: 10px;
        position:absolute;
        top:5%;
        background: #FFFFFF;
    }
</style>
