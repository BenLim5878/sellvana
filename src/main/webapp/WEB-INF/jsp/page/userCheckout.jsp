<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
    <title>Checkout</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"
            integrity="sha256-yE5LLp5HSQ/z+hJeCqkz9hdjNkk1jaiGG0tDCraumnA="
            crossorigin="anonymous"
    ></script>
    <script src="/app/js/utility.js"></script>
    <script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
        <jsp:param name="hasInitialShadow" value="true"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp"></jsp:include>
    <div class="checkout-main-content-sellvana">
        <div class="checkout-label-container-sellvana">
            <ul class="slick-dots">
                <h4 class="slick-label-1">Shipping Address</h4>
                <li id="slick-bar-1" class="slick-active"></li>
                <h4 class="slick-label-2">Payment Information</h4>
                <li id="slick-bar-2" class="slick-active"></li>
                <h4 class="slick-label-3">Order confirmation</h4>
            </ul>
            <h1 class="title-checkout-sellvana">Shipping Address</h1>
            <h2 class="description-checkout-sellvana">Please select your desired shipping address for this order</h2>
            <div class="checkout-button-container-sellvana">
                <button class="previous-button-sellvana"><i class="fa-solid fa-caret-left"></i></button>
                <button class="next-button-sellvana"><i class="fa-solid fa-caret-right"></i></button>
            </div>
        </div>
        <section class="checkout-input-container-sellvana">
            <section style="display: none" id="checkout-content-1" class="checkout-input-box-sellvana">
                <jsp:include page="/WEB-INF/jsp/component/addressListItem.jsp">
                    <jsp:param name="addressID" value="1"/>
                    <jsp:param name="addressName" value="Address 1"/>
                    <jsp:param name="addressFirstLine" value="12, 11B Taman Sungai Kapar Indah"/>
                    <jsp:param name="addressSecondLine" value="42200 Klang, Selangor"/>
                    <jsp:param name="addressThirdLine" value="Malaysia"/>
                    <jsp:param name="isDefault" value="true"/>
                    <jsp:param name="isAddressSelection" value="true"/>
                </jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/addressListItem.jsp">
                    <jsp:param name="addressID" value="2"/>
                    <jsp:param name="addressName" value="Address 2"/>
                    <jsp:param name="addressFirstLine" value="12, 11B Taman Sungai Kapar Indah"/>
                    <jsp:param name="addressSecondLine" value="42200 Klang, Selangor"/>
                    <jsp:param name="addressThirdLine" value="Malaysia"/>
                    <jsp:param name="isDefault" value="false"/>
                    <jsp:param name="isAddressSelection" value="true"/>
                </jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/addressListItem.jsp">
                    <jsp:param name="addressID" value="3"/>
                    <jsp:param name="addressName" value="Address 3"/>
                    <jsp:param name="addressFirstLine" value="12, 11B Taman Sungai Kapar Indah"/>
                    <jsp:param name="addressSecondLine" value="42200 Klang, Selangor"/>
                    <jsp:param name="addressThirdLine" value="Malaysia"/>
                    <jsp:param name="isDefault" value="false"/>
                    <jsp:param name="isAddressSelection" value="true"/>
                </jsp:include>
            </section>
            <section id="checkout-content-2" class="checkout-input-box-sellvana">
                <div class="checkout-content-2-left">
                    <div class="payment-method-container-sellvana">
                        <div class="payment-method-selection-sellvana">
                            <input id="card-radio-button" type="radio">
                            <img src="/app/img/card.png">
                            <h3>Credit/ Debit Card</h3>
                        </div>
                        <section id="payment-card-container" class="payment-form-container-sellvana">
                            <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                                <jsp:param name="title" value="Name on card"/>
                                <jsp:param name="inputType" value="text"/>
                                <jsp:param name="inputName" value="nameOnCardSellvana"/>
                                <jsp:param name="inputWidth" value="400px"/>
                                <jsp:param name="inputHeight" value="47px"/>
                                <jsp:param name="inputFontSize" value="17px"/>
                                <jsp:param name="inputErrorMessage" value="Please input valid name"/>
                            </jsp:include>
                            <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                                <jsp:param name="title" value="Card Number"/>
                                <jsp:param name="inputType" value="text"/>
                                <jsp:param name="inputName" value="cardNumberSellvana"/>
                                <jsp:param name="inputWidth" value="400px"/>
                                <jsp:param name="inputHeight" value="47px"/>
                                <jsp:param name="inputFontSize" value="17px"/>
                                <jsp:param name="inputErrorMessage" value="Please input valid card number"/>
                            </jsp:include>
                            <div class="payment-form-input-container-sellvana">
                                <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                                    <jsp:param name="title" value="Expiry Date"/>
                                    <jsp:param name="inputType" value="text"/>
                                    <jsp:param name="inputName" value="expiryDateSellvana"/>
                                    <jsp:param name="inputWidth" value="250px"/>
                                    <jsp:param name="inputHeight" value="47px"/>
                                    <jsp:param name="inputFontSize" value="17px"/>
                                    <jsp:param name="inputErrorMessage" value="Please input valid expiry date"/>
                                </jsp:include>
                                <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                                    <jsp:param name="title" value="CVV"/>
                                    <jsp:param name="inputType" value="password"/>
                                    <jsp:param name="inputName" value="cvvSellvana"/>
                                    <jsp:param name="inputWidth" value="100px"/>
                                    <jsp:param name="inputHeight" value="47px"/>
                                    <jsp:param name="inputFontSize" value="17px"/>
                                    <jsp:param name="inputErrorMessage" value="Please input valid expiry date"/>
                                </jsp:include>
                            </div>
                        </section>
                    </div>
                    <div class="payment-method-container-sellvana">
                        <div class="payment-method-selection-sellvana">
                            <input id="ewallet-radio-button" type="radio">
                            <img src="/app/img/laptop.png">
                            <h3>E-wallet</h3>
                        </div>
                        <section id="ewallet-card-container" class="payment-form-container-sellvana">
                            <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                                <jsp:param name="title" value="Telephone Number"/>
                                <jsp:param name="inputType" value="tel"/>
                                <jsp:param name="inputName" value="telephoneNumberSellvana"/>
                                <jsp:param name="inputWidth" value="400px"/>
                                <jsp:param name="inputHeight" value="56px"/>
                                <jsp:param name="inputFontSize" value="19px"/>
                                <jsp:param name="inputErrorMessage" value="Please input valid telephone number"/>
                            </jsp:include>
                        </section>
                    </div>
                </div>
            </section>
        </section>
    </div>
</body>
<script>
    var paymentType = {
        none:0,
        card:1,
        ewallet:2
    }

    var selectedPaymentType = paymentType.none;

    function refreshPaymentList(){
        switch (selectedPaymentType){
            case paymentType.none:
                $('#payment-card-container').css('display','none')
                $('#ewallet-card-container').css('display','none')
                break;
            case paymentType.card:
                $('#payment-card-container').css('display','flex')
                $('#ewallet-card-container').css('display','none')
                break;
            case paymentType.ewallet:
                $('#payment-card-container').css('display','none')
                $('#ewallet-card-container').css('display','flex')
                break;
        }
    }

    $('#card-radio-button').click(()=>{
        $('#ewallet-radio-button').prop("checked",false)
        selectedPaymentType = paymentType.card
        refreshPaymentList()
    })

    $('#ewallet-radio-button').click(()=>{
        $('#card-radio-button').prop("checked",false)
        selectedPaymentType = paymentType.ewallet
        refreshPaymentList()
    })

    refreshPaymentList()
</script>
<script>
    $(document).ready(function(){
        $('.input-sellvana').attr('autocomplete','off');
        $('#expiryDateSellvana').attr('placeholder',"mm/yy")
    })

    $('#nameOnCardSellvana').on('input',()=>{
        checkFormContent()
        var result = checkName($('#nameOnCardSellvana'))
        if (result){
            $('#nameOnCardSellvana').removeClass('error')
            $('#tooltip-nameOnCardSellvana').removeClass('tooltip-show')
        }else {
            $('#nameOnCardSellvana').addClass('error')
            $('#tooltip-nameOnCardSellvana').addClass('tooltip-show')
        }
    })

    function formatCardNumber(event) {
        var input = event.target.value.replace(/\D/g, '');
        if (input.length > 16) {
            input = input.slice(0, 16);
        }
        var groups = input.match(/.{1,4}/g);
        if (groups) {
            event.target.value = groups.join('-');
        }else{
            event.target.value = input;
        }
    }


    $('#cardNumberSellvana').on('input',(event)=>{
        formatCardNumber(event)
        checkFormContent()
        var result = checkCardNumber($('#cardNumberSellvana'))
        if (result){
            $('#cardNumberSellvana').removeClass('error')
            $('#tooltip-cardNumberSellvana').removeClass('tooltip-show')
        }else {
            $('#cardNumberSellvana').addClass('error')
            $('#tooltip-cardNumberSellvana').addClass('tooltip-show')
        }
    })

    $('#expiryDateSellvana').on('keydown',(event)=>{
        var inputValue = $('#expiryDateSellvana').val();

        // Get the key code of the pressed key
        var keyCode = event.which || event.keyCode;

        // Check if the pressed key is a digit
        if ((keyCode >= 48 && keyCode <= 57) || keyCode === 8) {
            if (keyCode >= 48 && keyCode <= 57){
                if (inputValue.length >= 5) {
                    event.preventDefault();
                    return;
                }

                // If the input value is empty or contains 2 digits, add a slash after the second digit
                if (inputValue.length === 1) {
                    $('#expiryDateSellvana').val(inputValue + String.fromCharCode(keyCode) + '/');
                    event.preventDefault();
                } else {
                    // Otherwise, just add the digit to the input value
                    $('#expiryDateSellvana').val(inputValue + String.fromCharCode(keyCode));
                    event.preventDefault();
                }
            } else {
                if (inputValue.length > 0 && inputValue[inputValue.length-1] == "/") {
                    $('#expiryDateSellvana').val(inputValue.slice(0, -1));
                }
            }
        } else {
            // If the pressed key is not a digit, prevent the default behavior
            event.preventDefault();
        }
    })

    $('#expiryDateSellvana').on('input',(event)=>{
        checkFormContent()
        var result = checkCardExpiryDate($('#expiryDateSellvana'))
        if (result){
            $('#expiryDateSellvana').removeClass('error')
            $('#tooltip-expiryDateSellvana').removeClass('tooltip-show')
        }else {
            $('#expiryDateSellvana').addClass('error')
            $('#tooltip-expiryDateSellvana').addClass('tooltip-show')
        }
    })

    function formatCVV(event){
        var input = event.target.value.replace(/\D/g, '');
        if (input.length > 3) {
            input = input.slice(0, 3);
        }
        event.target.value = input;
    }

    $('#cvvSellvana').on('input',(event)=>{
        formatCVV(event)
        checkFormContent()
        var result = checkCardCVV($('#cvvSellvana'))
        if (result){
            $('#cvvSellvana').removeClass('error')
            $('#tooltip-cvvSellvana').removeClass('tooltip-show')
        }else {
            $('#cvvSellvana').addClass('error')
            $('#tooltip-cvvSellvana').addClass('tooltip-show')
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

    function checkFormContent(){
        switch (selectedPaymentType){
            case paymentType.card:
                if (checkName("#nameOnCardSellvana") && checkCardNumber($("#cardNumberSellvana")) && checkCardExpiryDate($('#expiryDateSellvana')) && checkCardCVV($('#cvvSellvana'))){
                    $('.next-button-sellvana').css('display','block')
                }else {
                    $('.next-button-sellvana').css('display','none')
                }
                break;
            case paymentType.ewallet:
                console.log(checkTelephoneNumber('#telephoneNumberSellvana'))
                if (checkTelephoneNumber('#telephoneNumberSellvana')){
                    $('.next-button-sellvana').css('display','block')
                }else{
                    $('.next-button-sellvana').css('display','none')
                }
                break;
            default:
                $('.next-button-sellvana').css('display','none')
                break;
        }
    }
</script>
<script>
    // Reactive Page Script
    var currentPage = 1;

    function refreshPage(isBack){
        switch (currentPage){
            case 1:
                $('.next-button-sellvana').css('display','block')
                $('.previous-button-sellvana').css('display','none')
                //
                $('#checkout-content-1').css("display","flex")
                $('#checkout-content-2').css("display","none")
                $('#checkout-content-3').css("display","none")
                //
                if (isBack){
                    $('#slick-bar-1').addClass('slick-return');
                }
                //
                $('.title-checkout-sellvana').html("Shipping Address")
                $('.description-checkout-sellvana').html("Please select your desired shipping address for this order")
                break;
            case 2:
                $('.next-button-sellvana').css('display','none')
                $('.previous-button-sellvana').css('display','block')
                //
                $('#checkout-content-1').css("display","none")
                $('#checkout-content-2').css("display","flex")
                $('#checkout-content-3').css("display","none")
                //
                $('#slick-bar-1').addClass('slick-completed');
                $('#slick-bar-1').removeClass('slick-return');
                if (isBack){
                    $('#slick-bar-2').addClass('slick-return');
                    $('#slick-bar-2').removeClass('slick-completed');
                }else{
                    $('#slick-bar-2').removeClass('slick-return');
                    $('#slick-bar-2').removeClass('slick-completed');
                }
                //
                $('.title-checkout-sellvana').html("Payment Information")
                $('.description-checkout-sellvana').html("Select a payment method for this order")
                checkFormContent()
                break;
            case 3:
                $('.next-button-sellvana').css('display','block')
                $('.previous-button-sellvana').css('display','block')
                //
                $('#checkout-content-1').css("display","none")
                $('#checkout-content-2').css("display","none")
                $('#checkout-content-3').css("display","flex")
                //
                $('#slick-bar-2').addClass('slick-completed');
                $('#slick-bar-2').removeClass('slick-return');
                //
                $('.title-checkout-sellvana').html("Order Confirmation")
                $('.description-checkout-sellvana').html("Review your final order detail")
                break;
        }
    }

    $('.next-button-sellvana').click(()=>{
        currentPage += 1;
        refreshPage(false);
    })

    $('.previous-button-sellvana').click(()=>{
        currentPage -= 1;
        refreshPage(true);
    })

    // refreshPage(false)
</script>
<script>
    function refreshList(addressID){
        $('#checkout-content-1').children('.address-list-sellvana').each(function (){
            var elementID =  $(this).children('.meta-addressID').html()
            if (elementID != addressID){
                $(this).children('input').prop("checked",false)
                refreshListStyle($(this),false)
            }else {
                refreshListStyle($(this),true)
            }
        })
    }
</script>
<style>
    .payment-form-container-sellvana{
        display: flex;
        flex-direction: column;
        gap: 20px;
        margin-top: 20px;
    }

    .payment-form-input-container-sellvana{
        display: flex;
        flex-direction: row;
        width: 400px;
        justify-content: space-between;
    }

    .payment-method-selection-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        margin-top: 30px;
    }

    .payment-method-selection-sellvana h3{
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 18px;
        color: #4C4C4C;
    }

    .payment-method-selection-sellvana img{
        width: 50px;
        object-fit: contain;
        margin: 0px 17px 0px 14px;
    }

    .checkout-button-container-sellvana{
        display: flex;
        flex-direction: row;
        position: absolute;
        margin-left: 920px;
        margin-top: 110px;
        gap: 10px;
        justify-content: flex-end;
        width: 80px;
    }

    .checkout-button-container-sellvana button i{
        color: white;
        font-size: 18px;
    }

    .checkout-button-container-sellvana button:hover{
        background-color: <%=appAccentHover%>;
    }

    .checkout-button-container-sellvana button{
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
        width: 35px;
        height: 35px;
        border-radius: 6px;
        background-color: <%=appAccent%>;
        transition: all 0.2s ease-in;
    }

    #checkout-content-1{
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        gap: 30px;
    }

    .checkout-input-container-sellvana{
        width: 100%;
        margin-top: 30px;
        padding-bottom:  130px;
    }

    .description-checkout-sellvana{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 18.0498px;
        color: #2D3748;
        margin-top: 10px;
    }

    .title-checkout-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 25.8434px;
        color: #1A202C;
        margin-top: 90px;
    }

    .checkout-main-content-sellvana{
        width: 1000px;
        margin: 0 auto;
    }

    .checkout-label-container-sellvana{
        margin-top: 70px;
        display: flex;
        flex-direction: column;
    }
</style>
<style>
    .slick-label-3{
        margin-left: 530px;
    }

    .slick-label-1{
        margin-left: -530px;
    }

    .slick-dots h4{
        position: absolute;
        margin-top: 15px;
        white-space: nowrap;
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 16px;
        color: #525252;
    }

    .slick-dots {
        list-style-type: none;
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
        border-radius: 2px;
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
        border-radius: 2px;
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
        border-radius: 2px;
    }
</style>
</html>
