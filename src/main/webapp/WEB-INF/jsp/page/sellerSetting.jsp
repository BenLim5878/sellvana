<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
    String appAccentLight = application.getInitParameter("appAccentLight");
%>
<html>
<head>
    <title>Order</title>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/sellerNavBar.jsp">
        <jsp:param name="menuLocation" value="setting"/>
    </jsp:include>
    <div class="sellerSetting-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/sellerBreadcrumb.jsp">
                <jsp:param name="crumb" value="Setting"/>
            </jsp:include>
        </div>
        <h1 class="sellerSetting-page-title-sellvana">Setting</h1>
        <div class="setting-user-profile-container-sellvana">
            <img src="/app/img/avatar-img.png">
            <div class="setting-user-profile-description-container-sellvana">
                <h3 class="label-fullName">John Buffet</h3>
                <h4 class="label-email">johnbuffet@mail.com</h4>
                <h4 class="label-accountType">Seller</h4>
            </div>
        </div>
        <img class="setting-img-sellvana" src="/app/img/settings-pana.png">
        <div class="setting-list-container-sellvana">
            <button id="setting-button-personalInformation" class="setting-button-container-sellvana">
                <div>
                    <h4>Personal Information</h4>
                    <h5>View and update your personal information</h5>
                </div>
                <i class="fa-solid fa-angle-right"></i>
            </button>
            <button id="setting-button-manageAddress" class="setting-button-container-sellvana">
                <div>
                    <h4>Manage Address</h4>
                    <h5>Add add edit your saved addresses</h5>
                </div>
                <i class="fa-solid fa-angle-right"></i>
            </button>
            <button id="setting-button-changePassword" class="setting-button-container-sellvana">
                <div>
                    <h4>Change Password</h4>
                    <h5>Modify your saved password</h5>
                </div>
                <i class="fa-solid fa-angle-right"></i>
            </button>
        </div>
    </div>
</body>
<script>
    $('#setting-button-personalInformation').click(()=>{
        window.location.href = '/app/seller/setting/profile'
    })

    $('#setting-button-changePassword').click(()=>{
        window.location.href = '/app/seller/setting/password/edit'
    })

    $('#setting-button-manageAddress').click(()=>{
        window.location.href = '/app/seller/setting/address'
    })
</script>
<style>
    .sellerSetting-page-title-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 600;
        font-size: 30px;
        color: #333333;
        margin-top: 30px;
    }

    .sellerSetting-main-content-sellvana{
        padding-left: 70px;
        padding-top: 40px;
        margin-left: 78px;
        display: flex;
        flex-direction: column;
    }

    body{
        background-color: #f8f8f8;
    }
</style>
<style>
    .setting-button-container-sellvana:hover i{
        color: <%=appAccent%>;
        left: 8px;
    }

    .setting-button-container-sellvana i{
        font-size: 18px;
        transition: all 0.2s ease-in;
        position: relative;
        left:0px;
    }

    .setting-button-container-sellvana div{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        justify-content: center;
        gap: 7px;
    }

    .setting-button-container-sellvana h5{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 15.3801px;
        color: #646464;
    }

    .setting-button-container-sellvana h4{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 19.3801px;
        color: #282828;
    }

    .setting-button-container-sellvana:hover{
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
    }

    .setting-button-container-sellvana{
        width: 600px;
        padding: 23.47px 32.6px 21.39px 19.88px;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.12);
        background-color: white;
        border-radius: 8px;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        transition: all 0.2s ease-in;
    }

    .setting-img-sellvana{
        position: absolute;
        margin-left: 1000px;
        margin-top: 200px;
    }

    .setting-list-container-sellvana{
        display: flex;
        flex-direction: column;
        width: 100%;
        align-items: flex-start;
        margin-top: 70px;
        gap: 20px;
    }

    .setting-user-profile-description-container-sellvana .label-accountType{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 18.3801px;
        color: #363636;
    }

    .setting-user-profile-description-container-sellvana .label-email{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 18.3801px;
        color: #676767;
        margin: 5px 0px 12px;
    }

    .setting-user-profile-description-container-sellvana .label-fullName{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 21.3801px;
        color: #2d2d2d;
    }

    .setting-user-profile-container-sellvana img{
        width: 100px;
        height: 100px;
        object-fit: fill;
        border-radius: 50%;
        filter: drop-shadow(0px 2px 2px rgba(0, 0, 0, 0.25));
    }

    .setting-user-profile-container-sellvana{
        display: flex;
        flex-direction: row;
        gap: 25px;
        align-items: center;
        margin-top: 40px;
    }

    .setting-user-profile-description-container-sellvana{
        display: flex;
        flex-direction: column;
    }
</style>
</html>
