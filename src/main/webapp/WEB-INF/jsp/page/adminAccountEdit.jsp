<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ServletContext context = getServletConfig().getServletContext();
  String appAccent =context.getInitParameter("appAccent");
  String appAccentHover=context.getInitParameter("appAccentHover");
%>
<html>
<head>
  <title>Account</title>
  <script src="/app/js/utility.js"></script>
</head>
<body>
  <jsp:include page="/WEB-INF/jsp/component/adminNavBar.jsp"></jsp:include>
  <div class="main-wrapper">
    <header class="bg-surface-primary border-bottom pt-6 pb-6">
      <div class="container-fluid">
        <div class="mb-npx">
          <div class="row align-items-center">
            <div class="col-sm-6 col-12 mb-4 mb-sm-0">
              <h1 class="h3 mb-0 ls-tight">Account Setting</h1>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="card shadow border-0 mb-7 basic-detail-container">
      <div class="card-header d-flex align-items-center form-header-container">
        <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
          <i class="bi bi-person-lines-fill"></i>
        </div>
        <h5 class="mb-0 form-title">Basic Details</h5>
      </div>
      <form id="account-information-form" class="px-5 pb-5 d-flex-col align-items-center">
        <div class="d-flex align-items-center justify-content-between">
          <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" class="form-control" id="firstName" placeholder="Enter first name" required>
          </div>
          <div class="form-group last-name-form">
            <label for="lastName">Last Name</label>
            <input type="text" class="form-control" id="lastName" placeholder="Enter last name" required>
          </div>
        </div>
        <div class="form-group">
          <label for="email">Email Address</label>
          <input type="email" class="form-control" id="email" placeholder="Enter email" required>
        </div>
        <div class="form-group">
          <label for="phone">Telephone Number</label>
          <input type="tel" class="form-control" id="phone" placeholder="Enter telephone number" required>
        </div>
        <button type="submit" class="btn btn-success text-sm mt-5">Save Changes</button>
      </form>
    </div>
    <div class="card shadow border-0 mb-7 password-container">
      <div class="card-header d-flex align-items-center form-header-container">
        <div class="icon icon-shape bg-info text-white text-lg rounded-circle">
          <i class="bi bi-shield-lock-fill"></i>
        </div>
        <h5 class="mb-0 form-title">Account Security</h5>
      </div>
      <form id="account-security-form" class="px-5 pb-5 d-flex-col align-items-center">
        <div class="form-group">
          <label for="current-password">Current Password</label>
          <input type="password" class="form-control" id="current-password" placeholder="Enter current password" required>
        </div>
        <div class="form-group">
          <label for="password">New Password</label>
          <input type="password" class="form-control" id="password" placeholder="Enter new password" required>
        </div>
        <div class="form-group">
          <label for="password-confirm">Confirm New Password</label>
          <input type="password" class="form-control" id="password-confirm" placeholder="Confirm new password" required>
        </div>
        <button type="submit" class="btn btn-success text-sm mt-5">Save Changes</button>
      </form>
    </div>
  </div>
</body>
<style>
  .form-header-container{
    gap: 15px;
  }

  .form-title{
    font-weight: 500;
    font-size: 19px;
  }

  .icon{
    width: 35px;
    height: 35px;
  }

  .last-name-form{
    width: 541px;
  }

  .form-group{
    margin-top: 20px;
    display: flex;
    flex-direction: column;
    gap: 10px;
  }

  .password-container{
    width: 500px;
    margin-left: 30px;
    margin-top: 30px;
    position: absolute;
    top: 75px;
    right: 172px;
  }

  .basic-detail-container{
    width: 900px;
    margin-left: 30px;
    margin-top: 30px;
  }

  .main-wrapper{
    width: auto;
    margin-left: 269px;
    padding-bottom:40px;
    background-color: transparent;
  }
</style>
</html>
