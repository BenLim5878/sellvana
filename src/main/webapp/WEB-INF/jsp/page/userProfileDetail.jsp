<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
    <title>Profile Detail</title>
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
    <div class="setting-profile-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/breadcrumb.jsp">
                <jsp:param name="crumb" value="Home"/>
                <jsp:param name="link" value="/app"/>
                <jsp:param name="crumb" value="Setting"/>
                <jsp:param name="link" value="/app/setting"/>
                <jsp:param name="crumb" value="Profile"/>
            </jsp:include>
        </div>
        <h2 class="setting-profile-title-sellvana">My Profile</h2>
        <section class="setting-profile-main-section-sellvana">
            <div class="setting-profile-left-content-sellvana">
                <div class="setting-profile-image-container-sellvana">
                    <img class="profile-image-sellvana" src="/app/img/avatar-img.png">
                    <button class="profile-image-edit-button-sellvana">
                        <i class="fa-solid fa-pen"></i>
                    </button>
                </div>
                <div class="profile-list">
                    <span class="profile-title">
                         <i class="fa-solid fa-calendar"></i>
                        <h4>Joined Since:</h4>
                    </span>
                    <h5 class="profile-value">26 December 2001</h5>
                </div>
            </div>
            <div class="setting-profile-right-content-sellvana">
                <div class="input-row-box-sellvana">
                    <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                        <jsp:param name="title" value="First Name"/>
                        <jsp:param name="inputType" value="text"/>
                        <jsp:param name="inputName" value="firstNameSellvana"/>
                        <jsp:param name="inputWidth" value="320px"/>
                        <jsp:param name="inputValue" value="Zheng Wei"/>
                        <jsp:param name="inputHeight" value="56px"/>
                        <jsp:param name="inputFontSize" value="19px"/>
                        <jsp:param name="inputErrorMessage" value="Please input valid first name"/>
                    </jsp:include>
                    <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                        <jsp:param name="title" value="Last Name"/>
                        <jsp:param name="inputType" value="text"/>
                        <jsp:param name="inputName" value="lastNameSellvana"/>
                        <jsp:param name="inputWidth" value="320px"/>
                        <jsp:param name="inputHeight" value="56px"/>
                        <jsp:param name="inputFontSize" value="19px"/>
                        <jsp:param name="inputErrorMessage" value="Please input valid last name"/>
                        <jsp:param name="inputValue" value="Lim"/>
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
                    <jsp:param name="inputValue" value="limzhengwei1002@gmail.com"/>
                </jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                    <jsp:param name="title" value="Telephone Number"/>
                    <jsp:param name="inputType" value="tel"/>
                    <jsp:param name="inputName" value="telephoneNumberSellvana"/>
                    <jsp:param name="inputWidth" value="100%"/>
                    <jsp:param name="inputHeight" value="56px"/>
                    <jsp:param name="inputFontSize" value="19px"/>
                    <jsp:param name="inputErrorMessage" value="Please input valid telephone number"/>
                    <jsp:param name="inputValue" value="011-39987039"/>
                </jsp:include>
                <div class="setting-profile-footer-button-container">
                    <button class="change-password-button">Change Password</button>
                    <button class="edit-account-button">Edit Account</button>
                </div>
            </div>
        </section>
    </div>
    <div class="setting-profile-popup-window-sellvana">
        <div class="popup-window-close-area"></div>
        <div class="drop-area-profile-sellvana">
            <input id="upload-file-profile-sellvana" type="file" accept="image/*" style="display: none">
            <img src="/app/img/image-icon.png">
            <h3>Drag your image here, or <a id="browse-upload-image-profile-sellvana">browse</a></h3>
            <h6 class="image-upload-support-profile-sellvana">Supports JPG, PNG</h6>
            <h6 class="image-upload-error-profile-sellvana">Uploaded item is not a valid image file. Please try again.</h6>
        </div>
    </div>
</body>
<script>
    var editMode =false;

    $('.edit-account-button').click(()=>{
        if (editMode){
            $('.setting-profile-right-content-sellvana input').attr('disabled',true)
            $('.profile-image-edit-button-sellvana').css('display','none')
            $('.edit-account-button').html("Edit Account")
            editMode = false;
        } else {
            $('.setting-profile-right-content-sellvana input').attr('disabled',false)
            $('.edit-account-button').html("Save")
            $('.profile-image-edit-button-sellvana').css('display','initial')
            editMode = true;
        }
        $('.edit-account-button').toggleClass("save-button")
    })

    $('.setting-profile-right-content-sellvana input').attr('disabled',true)
</script>
<script>
    function closePopupWindow(){
        $('.setting-profile-popup-window-sellvana').css('animation','fadeOut')
        $('.setting-profile-popup-window-sellvana').css('animation-duration','200ms')
    }

    $('.profile-image-edit-button-sellvana').click(()=>{
        $('.setting-profile-popup-window-sellvana').css('display','flex');
        $('.drop-area-profile-sellvana').css('animation','scale-up-center-fadeIn')
        $('.drop-area-profile-sellvana').css('animation-duration','200ms')
        $('.setting-profile-popup-window-sellvana').css('animation','fadeIn')
        $('.setting-profile-popup-window-sellvana').css('animation-duration','200ms')
    })

    $('.drop-area-profile-sellvana').on('dragleave', function(event) {
        $(this).removeClass('hover');
        event.preventDefault();
        event.stopPropagation();
    });

    $('.drop-area-profile-sellvana').on('dragenter dragover', function(event) {
        $(this).addClass('hover');
        event.preventDefault();
        event.stopPropagation();
    });

    $(".drop-area-profile-sellvana").on('drop', (e)=>{
        e.preventDefault();
        e.stopPropagation();
        const file = e.originalEvent.dataTransfer.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(event) {
                const image = new Image();
                image.onload = ()=>{
                    $('.profile-image-sellvana').attr('src', event.target.result);
                    $('.image-upload-error-profile-sellvana').css('display','none')
                    closePopupWindow()
                }
                image.onerror = ()=>{
                    $('.image-upload-error-profile-sellvana').css('display','block')
                }
                image.src = event.target.result;
            }
            reader.readAsDataURL(file);
            $(".drop-area-profile-sellvana").removeClass('hover');
        }
    })

    $('#upload-file-profile-sellvana').change(()=>{
        const file = $('#upload-file-profile-sellvana')[0].files[0];
        if (file){
            const reader = new FileReader();
            reader.onload = (event)=>{
                const image = new Image();
                image.onload = ()=>{
                    $('.profile-image-sellvana').attr('src', event.target.result);
                    $('.image-upload-error-profile-sellvana').css('display','none');
                    closePopupWindow()
                }
                image.onerror = ()=>{
                    // $('#preview').attr('src', '/app/img/male-avatar.png');
                    $('.image-upload-error-profile-sellvana').css('display','block')
                }
                image.src = event.target.result;
            }
            reader.readAsDataURL(file);
        }
    })

    $('#browse-upload-image-profile-sellvana').on('click',(e)=>{
        e.preventDefault();
        $('#upload-file-profile-sellvana').click();
    })

    $('.popup-window-close-area').click(function (){
        closePopupWindow()
    })

    $('.setting-profile-popup-window-sellvana').on('animationend',function(){
        var animationName =  $(this).css('animation-name');
        if (animationName == 'fadeOut'){
            $('.setting-profile-popup-window-sellvana').css('display','none')
        }
    })
</script>
<script>
    $(document).ready(()=>{
        $('.input-sellvana').attr('autocomplete','nope');

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

        function checkFormContent(){
            if (checkName('#firstNameSellvana') && checkName('#lastNameSellvana') && checkEmailAddress('#emailAddressSellvana') && checkTelephoneNumber('#telephoneNumberSellvana')){
                $('.edit-account-button').prop('disabled',false)
            }else {
                $('.edit-account-button').prop('disabled',true)
            }
        }

    })
</script>
<style>
    .edit-account-button:disabled{
        background-color: grey !important;
        cursor: default;
    }

    @keyframes fadeOut {
        0%{
            opacity: 100%;
        }
        100%{
            opacity: 0%;
        }
    }

    @keyframes fadeIn{
        0%{
            opacity: 0%;
        }
        100%{
            opacity: 100%;
        }
    }

    @keyframes scale-up-center-fadeIn {
        0% {
            -webkit-transform: scale(0.3);
            transform: scale(0.3);
            opacity: 0%;
        }
        100% {
            -webkit-transform: scale(1);
            transform: scale(1);
            opacity: 100%;
        }
    }

    .popup-window-close-area{
        position: absolute;
        width: 100%;
        height: 100vh;
        top:0px;
        left: 0px;
    }

    .image-upload-error-profile-sellvana{
        display: none;
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 15.9423px;
        color: #e02f2f !important;
    }

    .drop-area-profile-sellvana h3{
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 18.3407px;
        color:#4c4c4c;
    }

    .drop-area-profile-sellvana a{
        color: <%=appAccent%>;
        cursor: hand;
        transition: all 0.25s ease-in;
    }

    .drop-area-profile-sellvana a:hover{
        color: <%=appAccentHover%>;
        text-decoration: underline;
    }

    .drop-area-profile-sellvana h6{
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 15.9423px;
        color: #919191;
    }

    .drop-area-profile-sellvana.hover{
        border-color: <%=appAccent%>;
        border-width: 2.5px;
    }

    .drop-area-profile-sellvana{
        width: 550px;
        height: 400px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        box-sizing: border-box;
        gap:19px;
        background: #FFFFFF;
        border: 1.5px dashed #595959;
        border-radius: 10px;
        filter: drop-shadow(0px 2px 4px rgba(0, 0, 0, 0.3));
    }

    .setting-profile-popup-window-sellvana{
        width: 100%;
        height: 100vh;
        background-color: rgba(76, 76, 76, 0.42);
        position: absolute;
        top:0px;
        left:0px;
        z-index: 10000;
        display: none;
        justify-content: center;
        align-items: center;
    }

    .save-button{
        color: white;
        font-family:Inter;
        font-weight: 500;
        font-size: 15.5px;
        background-color: #12c06c !important;
        padding: 12px 30px;
        border-radius: 6px;
        box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.25);
    }

    .setting-profile-footer-button-container .edit-account-button{
        color: white;
        font-family:Inter;
        font-weight: 500;
        font-size: 15.5px;
        background-color: <%=appAccent%>;
        padding: 12px 30px;
        border-radius: 6px;
        box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.25);
    }

    .setting-profile-footer-button-container .change-password-button:hover{
        text-decoration: underline;
    }

    .setting-profile-footer-button-container .change-password-button{
        color: <%=appAccent%>;
        font-family:Inter;
        font-weight: 500;
        font-size: 15.5px;
        background-color: transparent;
    }

    .setting-profile-footer-button-container{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        margin-top: 30px;
    }

    .setting-profile-right-content-sellvana input:disabled:hover{
        border: 1px solid #BDBDBD !important;
        cursor: no-drop;
    }

    .setting-profile-right-content-sellvana input:disabled{
        background-color: #f3f3f3;
    }

    .setting-profile-right-content-sellvana{
        display: flex;
        flex-direction: column;
        width: 700px;
        gap: 30px;
    }

    .input-row-box-sellvana{
        display: flex;
        width: 100%;
        flex-direction: row;
        justify-content: space-between;
    }

    .profile-list{
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 10px;
        margin-top: 30px;
    }

    .profile-list .profile-title{
        display: flex;
        flex-direction: row;
        gap: 11px;
    }

    .profile-list .profile-title h4{
        font-family:Inter;
        font-weight: 500;
        font-size: 18px;
        color: <%=appAccent%>;
    }

    .profile-list .profile-title i{
        font-size: 18px;
        color: <%=appAccent%>;
    }

    .profile-list .profile-value{
        font-family:Inter;
        font-weight: 400;
        font-size: 17px;
        color: #3f3f3f;
    }

    .setting-profile-main-section-sellvana{
        display: flex;
        flex-direction: row;
        align-items: flex-start;
        gap: 150px;
    }

    .setting-profile-left-content-sellvana{
        display: flex;
        flex-direction: column;
    }

    .profile-image-edit-button-sellvana i{
        color:<%=appAccent%>;
        font-size: 14.5px;
    }

    .profile-image-edit-button-sellvana:hover i{
        color: <%=appAccentHover%>;
    }

    .profile-image-edit-button-sellvana:hover{
        box-shadow: 0px 2px 14px rgba(0, 0, 0, 0.2);
        background-color: #ececec;
    }

    .profile-image-edit-button-sellvana{
        padding: 10px;
        border-radius: 50%;
        background-color: #ffffff;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
        position: absolute;
        margin-top: 140px;
        margin-left: -35px;
        transition: background-color 0.2s ease-in;
        display: none;
    }

    .profile-image-sellvana{
        width: 170px;
        height: 170px;
        object-fit: cover;
        border-radius: 50%;
        filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
    }

    .setting-profile-title-sellvana{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 24px;
        color: #262626;
        padding: 30px 0px;
    }

    .breadcrumb-sellvana{
        padding-top:90px;
    }

    .setting-profile-main-content-sellvana{
        width: 1200px;
        margin: 0 auto;
    }
</style>
</html>
