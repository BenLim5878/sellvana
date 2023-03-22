<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
  <title>Setting</title>
  <script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
  <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
    <jsp:param name="hasInitialShadow" value="true"/>
  </jsp:include>
  <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp">
    <jsp:param name="menuLocation" value="setting"/>
  </jsp:include>
  <div class="setting-main-content-sellvana">
    <div class="breadcrumb-sellvana">
      <jsp:include page="/WEB-INF/jsp/component/breadcrumb.jsp">
        <jsp:param name="crumb" value="Home"/>
        <jsp:param name="link" value="/app"/>
        <jsp:param name="crumb" value="Setting"/>
      </jsp:include>
    </div>
    <h2 class="setting-title-sellvana">Setting</h2>
    <div class="setting-user-profile-container-sellvana">
      <img src="/app/img/avatar-img.png">
      <div class="setting-user-profile-description-container-sellvana">
        <h3 class="label-fullName">John Buffet</h3>
        <h4 class="label-email">johnbuffet@mail.com</h4>
        <h4 class="label-accountType">User</h4>
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
    margin-left: 800px;
    margin-top: 150px;
  }

  .setting-list-container-sellvana{
    display: flex;
    flex-direction: column;
    width: 100%;
    align-items: flex-start;
    margin-top: 40px;
    gap: 20px;
  }

  .setting-user-profile-description-container-sellvana .label-accountType{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 18.3801px;
    color: #363636;
    margin: 13px 0px 16px;
  }

  .setting-user-profile-description-container-sellvana .label-email{
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 18.3801px;
    color: #676767;
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
  }
  
  .setting-user-profile-description-container-sellvana{
    display: flex;
    flex-direction: column;
  }

  .setting-main-content-sellvana{
    width: 1100px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
  }

  .breadcrumb-sellvana{
    padding-top:40px;
  }

  .setting-title-sellvana{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 24px;
    color: #262626;
    padding: 30px 0px;
  }
</style>
</html>
