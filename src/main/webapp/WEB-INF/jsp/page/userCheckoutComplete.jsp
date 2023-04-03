<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
    <title>Checkout Complete</title>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
        <jsp:param name="hasInitialShadow" value="true"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp"></jsp:include>
    <div class="checkoutComplete-main-content-sellvana">
        <h1>Thank you!</h1>
        <div class="checkoutComplete-message-sellvana">
            <h3>Your order </h3><h2>#1560788996</h2><h3> has been placed!</h3>
        </div>
        <h4>Your order will be reviewed shortly. Please check the order again in the order history section to view the latest order detail.</h4>
        <div class="checkoutComplete-time-checkout-container-sellvana">
            <div>
                <i class="fa-regular fa-clock"></i>
                <h3>Time Placed: </h3>
            </div>
            <h5>16/04/2022 13:35</h5>
        </div>
        <div class="checkoutComplete-button-container-sellvana">
            <button class="order-detail-button">Order Details</button>
            <button class="continue-shopping-button">Continue Shopping</button>
        </div>
    </div>
</body>
<style>
    .checkoutComplete-button-container-sellvana button{
        font-family:Inter;
        font-weight: 500;
        font-size: 15px;
        color: white;
        padding: 10px 30px;
        border-radius: 5px;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);
        transition: all 0.2s ease-in;
    }

    .checkoutComplete-button-container-sellvana .continue-shopping-button:hover{
        background-color: #565656;
    }

    .checkoutComplete-button-container-sellvana .continue-shopping-button{
        background-color: grey;
    }

    .checkoutComplete-button-container-sellvana .order-detail-button:hover{
        background-color: <%=appAccentHover%>;
    }

    .checkoutComplete-button-container-sellvana .order-detail-button{
        background-color: <%=appAccent%>;
    }

    .checkoutComplete-button-container-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        width: 400px;
        margin-top: 70px;
    }

    .checkoutComplete-time-checkout-container-sellvana h5{
        font-family:Inter;
        font-weight: 400;
        font-size: 16px;
        color: #5b5b5b;
    }

    .checkoutComplete-time-checkout-container-sellvana div h3{
        font-family:Inter;
        font-weight: 500;
        font-size: 17px;
        color: #232323;
    }

    .checkoutComplete-time-checkout-container-sellvana div i{
        font-size: 18px;
        color: <%=appAccent%>;
    }

    .checkoutComplete-time-checkout-container-sellvana div{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap:8px;
    }

    .checkoutComplete-time-checkout-container-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 13px;
        margin-top: 30px;
    }

    .checkoutComplete-main-content-sellvana h4{
        font-family:Inter;
        font-weight: 400;
        font-size: 18px;
        color: #313131;
        text-align: center;
        width: 800px;
    }

    .checkoutComplete-main-content-sellvana h1{
        font-family:Inter;
        font-weight: 400;
        font-size: 27px;
        color: #232323;
    }

    .checkoutComplete-message-sellvana h2{
        font-family:Inter;
        font-weight: 500;
        font-size: 23px;
        color: <%=appAccent%>;
    }

    .checkoutComplete-message-sellvana h3{
        font-family:Inter;
        font-weight: 400;
        font-size: 20px;
        color: #313131;
    }

    .checkoutComplete-message-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        margin-top: 30px;
        margin-bottom: 20px;
        gap: 5px;
    }

    .checkoutComplete-main-content-sellvana{
        width: 1000px;
        height: 80%;
        margin: auto;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
</style>
</html>
