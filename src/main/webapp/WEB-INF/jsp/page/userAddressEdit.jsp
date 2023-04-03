<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
  <title>Address</title>
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
  <div class="addressEdit-main-content-sellvana">
    <div class="breadcrumb-sellvana">
      <jsp:include page="/WEB-INF/jsp/component/breadcrumb.jsp">
        <jsp:param name="crumb" value="Home"/>
        <jsp:param name="link" value="/app"/>
        <jsp:param name="crumb" value="My Address"/>
        <jsp:param name="link" value="/app/address"/>
        <jsp:param name="crumb" value="Edit"/>
      </jsp:include>
    </div>
    <h2 class="addressEdit-title-sellvana">Edit Address</h2>
    <div class="addressEdit-wrapper-sellvana">
      <div class="addressEdit-form-sellvana">
        <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
          <jsp:param name="title" value="Address Name"/>
          <jsp:param name="inputType" value="text"/>
          <jsp:param name="inputName" value="addressName"/>
          <jsp:param name="inputWidth" value="550px"/>
          <jsp:param name="inputHeight" value="56px"/>
          <jsp:param name="inputFontSize" value="19px"/>
          <jsp:param name="inputErrorMessage" value="Please input valid address name"/>
        </jsp:include>
        <div class="address-form-input-container-sellvana">
          <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
            <jsp:param name="title" value="Unit No"/>
            <jsp:param name="inputType" value="text"/>
            <jsp:param name="inputName" value="unitNo"/>
            <jsp:param name="inputWidth" value="100px"/>
            <jsp:param name="inputHeight" value="56px"/>
            <jsp:param name="inputFontSize" value="19px"/>
            <jsp:param name="inputErrorMessage" value="Please input valid unit number"/>
          </jsp:include>
          <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
            <jsp:param name="title" value="Street"/>
            <jsp:param name="inputType" value="text"/>
            <jsp:param name="inputName" value="street"/>
            <jsp:param name="inputWidth" value="400px"/>
            <jsp:param name="inputHeight" value="56px"/>
            <jsp:param name="inputFontSize" value="19px"/>
            <jsp:param name="inputErrorMessage" value="Please input valid street name"/>
          </jsp:include>
        </div>
        <div class="address-form-input-container-sellvana">
          <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
            <jsp:param name="title" value="Zip Code"/>
            <jsp:param name="inputType" value="number"/>
            <jsp:param name="inputName" value="zipCode"/>
            <jsp:param name="inputWidth" value="150px"/>
            <jsp:param name="inputHeight" value="56px"/>
            <jsp:param name="inputFontSize" value="19px"/>
            <jsp:param name="inputErrorMessage" value="Please input valid zip code"/>
          </jsp:include>
          <div class="address-state-selectBox">
            <h3>State</h3>
            <div class="address-state-select-box-input-container-sellvana">
              <jsp:include page="/WEB-INF/jsp/component/selectBox.jsp">
                <jsp:param name="option" value="Johor"/>
                <jsp:param name="option" value="Kedah"/>
                <jsp:param name="option" value="Kelantan"/>
                <jsp:param name="option" value="Kuala Lumpur"/>
                <jsp:param name="option" value="Labuan"/>
                <jsp:param name="option" value="Malacca"/>
                <jsp:param name="option" value="Negeri Sembilan"/>
                <jsp:param name="option" value="Pahang"/>
                <jsp:param name="option" value="Penang"/>
                <jsp:param name="option" value="Perak"/>
                <jsp:param name="option" value="Perlis"/>
                <jsp:param name="option" value="Sabah"/>
                <jsp:param name="option" value="Sarawak"/>
                <jsp:param name="option" value="Selangor"/>
                <jsp:param name="option" value="Terangganu"/>
                <jsp:param name="defaultOption" value="4"/>
                <jsp:param name="selectBoxFontSize" value="19px"/>
              </jsp:include>
            </div>
          </div>
        </div>
        <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
          <jsp:param name="title" value="Country"/>
          <jsp:param name="inputType" value="text"/>
          <jsp:param name="inputName" value="country"/>
          <jsp:param name="inputWidth" value="550px"/>
          <jsp:param name="inputHeight" value="56px"/>
          <jsp:param name="inputFontSize" value="19px"/>
          <jsp:param name="inputErrorMessage" value="Please input valid country"/>
        </jsp:include>
        <div class="address-form-footer-sellvana">
          <button class="cancel-button-sellvana">Cancel</button>
          <button class="submit-button-sellvana">Submit</button>
        </div>
      </div>
      <img class="addressEdit-img-sellvana" src="/app/img/directions-amico.png">
    </div>
  </div>
</body>
<script>
  $('#country').val("Malaysia")
  $('#country').attr('disabled','true')

  function verifyForm(){
    if ($('#addressName').val().trim().length >0 && $('#unitNo').val().trim().length >0 && $('#street').val().trim().length >0 && $('#zipCode').val().trim().length >0 && $('#country').val().trim().length >0 && verifyZipCode()){
      $('.submit-button-sellvana').attr('disabled',false)
    } else{
      $('.submit-button-sellvana').attr('disabled',true)
    }
  }

  function verifyZipCode(){
    var zipCodeVal = $('#zipCode').val();
    var result = false;
    const zipCodeRegex = /^\d{5}$/
    const strippedZipCode = zipCodeVal.replace(/\D/g, '');
    if (zipCodeRegex.test(strippedZipCode)){
      result = true;
    }
    return result
  }

  verifyForm()

  $('#addressName, #unitNo,#street,#zipCode,#country').on('input',()=>{
    verifyForm()
  })

  $('#zipCode').on('input',()=>{
    var result = verifyZipCode();
    console.log(result)
    if (result){
      $('#zipCode').removeClass('error')
      $('#tooltip-zipCode').removeClass('tooltip-show')
    }else {
      $('#zipCode').addClass('error')
      $('#tooltip-zipCode').addClass('tooltip-show')
    }
  })
</script>
<style>
  .submit-button-sellvana:disabled:hover{
    background-color: grey;
  }

  .submit-button-sellvana:disabled{
    background-color: grey;
    cursor: default;
  }

  .address-state-select-box-input-container-sellvana:hover{
    border: 1.13px solid <%=appAccent%> !important;
  }

  .address-state-select-box-input-container-sellvana:focus{
    border: 1.13px solid <%=appAccent%> !important;
  }

  .submit-button-sellvana:hover{
    background-color: <%=appAccentHover%>;
  }

  .submit-button-sellvana{
    font-family: Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 16px;
    color: white;
    background-color: <%=appAccent%>;
    transition: all 0.2s ease-in;
    padding: 10px 30px;
    border-radius: 5px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
  }

  .cancel-button-sellvana:hover{
    color: <%=appAccentHover%>;
  }

  .cancel-button-sellvana{
    font-family: Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    color: <%=appAccent%>;
    background-color: transparent;
    transition: all 0.2s ease-in;
  }

  .addressEdit-img-sellvana{
    object-fit: contain;
  }

  .address-form-footer-sellvana{
    width: 100%;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
    margin-top: 75px;
  }

  .addressEdit-wrapper-sellvana{
    width: 100%;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
  }

  #country{
    background-color: #efefef;
  }

  #country:hover{
    border: 1.13px solid #BDBDBD !important;
  }

  .address-state-selectBox .address-state-select-box-input-container-sellvana{
    height: 56px;
    border-radius: 5px;
    border: 1.13px solid #BDBDBD;
  }

  .address-state-selectBox h3{
    font-family: Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 18.0498px;
    color: #4A5568;
  }

  .address-state-selectBox{
    width: 350px;
    height: 90px;
    display: flex;
    flex-direction: column;
    gap: 12px;
  }

  .addressEdit-form-sellvana .address-form-input-container-sellvana{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    width: 100%;
  }

  .addressEdit-form-sellvana{
    display: flex;
    flex-direction: column;
    width: 50%;
    align-items: flex-start;
    gap: 20px;
  }

  .addressEdit-main-content-sellvana{
    width: 1100px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
  }

  .breadcrumb-sellvana{
    padding-top:40px;
  }

  .addressEdit-title-sellvana{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 24px;
    color: #262626;
    padding: 30px 0px;
  }
</style>
</html>
