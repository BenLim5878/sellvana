<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
  <title>Password</title>
  <script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="/app/js/utility.js"></script>
</head>
<body>
  <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
    <jsp:param name="hasInitialShadow" value="true"/>
  </jsp:include>
  <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp">
    <jsp:param name="menuLocation" value="setting"/>
  </jsp:include>
  <div class="password-modify-main-content-sellvana">
    <jsp:include page="/WEB-INF/jsp/component/snackbarList.jsp"></jsp:include>
    <div class="breadcrumb-sellvana">
      <jsp:include page="/WEB-INF/jsp/component/userBreadcrumb.jsp">
        <jsp:param name="crumb" value="Home"/>
        <jsp:param name="link" value="/app"/>
        <jsp:param name="crumb" value="Setting"/>
        <jsp:param name="link" value="/app/setting"/>
        <jsp:param name="crumb" value="Password"/>
      </jsp:include>
    </div>
    <div class="password-modify-title-container">
      <h2 class="password-modify-title-sellvana">Update Password</h2>
      <h4 class="password-modify-text-sellvana">Let's make your account more secure</h4>
    </div>
    <section class="password-modify-main-section-sellvana">
      <div class="main">
        <div class="password-modify-left-content-sellvana">
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
          <div class="password-visible-container-sellvana">
            <input class="checkbox-sellvana" type="checkbox">
            <h6 class="checkbox-title-sellvana">Show Password</h6>
          </div>
        </div>
        <div class="password-modify-right-content-sellvana">
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
      <div class="footer">
        <button class="cancel-button">Cancel</button>
        <button class="update-password-button">Update</button>
      </div>
    </section>
  </div>
</body>
<script>
  $('.update-password-button').click(()=>{
    addSnack(snackBarType.tick, "Password Update Successfully")
    $('#password').val("")
    $('#confirmPassword').val("")
    $('.update-password-button').prop('disabled',true)
    $('.checkbox-sellvana').prop("checked",false)
  })
</script>
<script>
  $('.checkbox-sellvana').click(()=>{
    if ($('.checkbox-sellvana').is(':checked')){
      $('#password').attr('type','text')
      $('#confirmPassword').attr('type','text')
    } else {
      $('#password').attr('type','password')
      $('#confirmPassword').attr('type','password')
    }
  })

  function checkFormContent(){
    if (passwordRequirements[1] && passwordRequirements[2] && passwordRequirements[3] & passwordRequirements[4]){
      $('.update-password-button').prop('disabled',false)
    }else {
      $('.update-password-button').prop('disabled',true)
    }
  }

  const passwordRequirements = Object.create(null)

  $('#password').on('input',()=>{
            var inputString =$('#password').val();

            // Checking the length requirement of the password
            if (inputString.length > 8){
              $('#password-requirement-label-1').attr('class','password-requirement-label-activated')
              $('#password-requirement-logo-1').attr('class','password-requirement-logo-green')
              passwordRequirements[1] = true;
            } else {
              $('#password-requirement-label-1').attr('class','password-requirement-label-deactivated')
              $('#password-requirement-logo-1').attr('class','password-requirement-logo-red')
              passwordRequirements[1] = false;
            }

            // Checking the special character requirement of the password
            if (/[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/.test(inputString)){
              $('#password-requirement-label-2').attr('class','password-requirement-label-activated')
              $('#password-requirement-logo-2').attr('class','password-requirement-logo-green')
              passwordRequirements[2] = true;
            } else {
              $('#password-requirement-label-2').attr('class','password-requirement-label-deactivated')
              $('#password-requirement-logo-2').attr('class','password-requirement-logo-red')
              passwordRequirements[2] = false;
            }

            // Checking the email address requirement of the password
            if (/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(inputString)){
              $('#password-requirement-label-3').attr('class','password-requirement-label-deactivated')
              $('#password-requirement-logo-3').attr('class','password-requirement-logo-red')
              passwordRequirements[3] = false;
            } else {
              $('#password-requirement-label-3').attr('class','password-requirement-label-activated')
              $('#password-requirement-logo-3').attr('class','password-requirement-logo-green')
              passwordRequirements[3] = true;
            }

            // Checking the same password requirement of the password
            if ($('#confirmPassword').val() != inputString){
              $('#password-requirement-label-4').attr('class','password-requirement-label-deactivated')
              $('#password-requirement-logo-4').attr('class','password-requirement-logo-red')
              passwordRequirements[4] = false;
            } else {
              $('#password-requirement-label-4').attr('class','password-requirement-label-activated')
              $('#password-requirement-logo-4').attr('class','password-requirement-logo-green')
              passwordRequirements[4] = true;
            }
            checkFormContent();
          }
  )
  $('#confirmPassword').on('input',()=>{
    if ($('#confirmPassword').val() != $('#password').val()){
      $('#password-requirement-label-4').attr('class','password-requirement-label-deactivated')
      $('#password-requirement-logo-4').attr('class','password-requirement-logo-red')
      passwordRequirements[4] = false;
    } else {
      $('#password-requirement-label-4').attr('class','password-requirement-label-activated')
      $('#password-requirement-logo-4').attr('class','password-requirement-logo-green')
      passwordRequirements[4] = true;
    }
    checkFormContent();
  })
</script>
<script>
  $('.update-password-button').prop("disabled",true)
</script>
<style>
  .update-password-button:disabled{
    background-color: grey !important;
    cursor: default;
  }

  .password-modify-main-section-sellvana .footer{
    width: 920px;
    display: flex;
    justify-content: space-between;
    margin-top: 100px;
  }

  .password-modify-main-section-sellvana{
    margin-top: 50px;
    display: flex;
    flex-direction: column;
  }

  .password-modify-main-section-sellvana .footer .update-password-button:hover{
    background-color: <%=appAccentHover%>;
  }

  .password-modify-main-section-sellvana .footer .update-password-button{
    color: white;
    font-family:Inter;
    font-weight: 500;
    font-size: 15.5px;
    background-color: <%=appAccent%>;
    padding: 12px 30px;
    border-radius: 6px;
    box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.25);
    transition: all 0.2s ease-in;
  }

  .password-modify-main-section-sellvana .footer .cancel-button:hover{
    color: #525252;
  }

  .password-modify-main-section-sellvana .footer .cancel-button{
    color: grey;
    font-family:Inter;
    font-weight: 500;
    font-size: 15.5px;
    background-color: transparent;
    transition: all 0.2s ease-in;
  }

  .password-modify-right-content-sellvana{
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    margin-top: 30px;
    gap: 18px;
  }

  .password-modify-main-section-sellvana .main{
    display: flex;
    flex-direction: row;
    align-items: flex-start;
    gap: 120px;
  }

  .password-requirement-container{
    display: flex;
    flex-direction: column;
    gap:15px;
    margin-top: 20px;
  }

  .password-requirement-logo-green{
    background-image: url("/app/img/green-tick.png");
    width: 28px;
    height: 28px;
    background-size: cover;
  }

  .password-requirement-logo-red{
    background-image: url("/app/img/red-cross.png");
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

  .password-visible-container-sellvana{
    display: flex;
    width: 400px;
    flex-direction: row;
    justify-content: right;
    align-items: center;
    gap:9px;
  }

  .checkbox-sellvana{
    width: 15px;
    height: 25px;
  }

  .checkbox-sellvana:checked{
    accent-color: <%=appAccent%>;
  }

  .checkbox-title-sellvana{
    color: #646464;
    font-family: 'Inter';
    font-style: normal;
    font-weight: 400;
    font-size: 14.5272px;
  }

  .password-modify-left-content-sellvana{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    gap: 30px;
  }

  .password-modify-text-sellvana{
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    color: #262626;
  }

  .password-modify-title-sellvana{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 24px;
    color: #262626;
  }

  .password-modify-title-container{
    display: flex;
    flex-direction: column;
    gap: 10px;
    margin-top: 40px;
  }

  .breadcrumb-sellvana{
    padding-top:80px;
  }

  .password-modify-main-content-sellvana{
    width: 1000px;
    margin: 0 auto;
  }
</style>
</html>
