<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
    String appAccentLight = application.getInitParameter("appAccentLight");
%>
<html>
<head>
    <title>My Address</title>
    <script src="/app/js/utility.js"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/sellerNavBar.jsp">
        <jsp:param name="menuLocation" value="setting"/>
    </jsp:include>
    <div class="sellerAddress-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/sellerBreadcrumb.jsp">
                <jsp:param name="crumb" value="Setting"/>
                <jsp:param name="link" value="/app/seller/setting"/>
                <jsp:param name="crumb" value="Address"/>
            </jsp:include>
        </div>
        <h1 class="sellerAddress-page-title-sellvana">My Address</h1>
        <div class="addressEdit-wrapper-sellvana">
            <div class="addressEdit-form-sellvana">
                <div class="address-form-input-container-sellvana">
                    <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                        <jsp:param name="title" value="Unit No"/>
                        <jsp:param name="inputType" value="text"/>
                        <jsp:param name="inputName" value="unitNo"/>
                        <jsp:param name="inputWidth" value="100px"/>
                        <jsp:param name="inputValue" value="12"/>
                        <jsp:param name="inputHeight" value="56px"/>
                        <jsp:param name="inputFontSize" value="19px"/>
                        <jsp:param name="inputErrorMessage" value="Please input valid unit number"/>
                    </jsp:include>
                    <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                        <jsp:param name="title" value="Street"/>
                        <jsp:param name="inputType" value="text"/>
                        <jsp:param name="inputName" value="street"/>
                        <jsp:param name="inputWidth" value="400px"/>
                        <jsp:param name="inputValue" value="11B Taman Sungai Kapar Indah"/>
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
                        <jsp:param name="inputValue" value="42200"/>
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
                                <jsp:param name="defaultOption" value="14"/>
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
    .sellerAddress-page-title-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 600;
        font-size: 30px;
        color: #333333;
        margin-top: 30px;
    }

    .sellerAddress-main-content-sellvana{
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

    .product-category-select-box-input-container-sellvana:focus{
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

    .address-form-footer-sellvana{
        width: 100%;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        margin-top: 75px;
    }

    .addressEdit-wrapper-sellvana{
        width: 1490px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        margin-top: 50px;
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
        width: 550px;
        align-items: flex-start;
        gap: 20px;
    }
</style>
</html>
