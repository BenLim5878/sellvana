<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
    String appAccentLight = application.getInitParameter("appAccentLight");
%>
<%
    Boolean isEdit = true;
    if (request.getParameter("isEdit") != null){
        isEdit = Boolean.parseBoolean(request.getParameter("isEdit"));
    }

%>
<html>
<head>
    <title>Homepage</title>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/sellerNavBar.jsp">
        <jsp:param name="menuLocation" value="product"/>
    </jsp:include>
    <div class="productSpecification-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/sellerBreadcrumb.jsp">
                <jsp:param name="crumb" value="Product"/>
                <jsp:param name="link" value="/app/seller/product"/>
                <jsp:param name="crumb" value="Detail"/>
                <jsp:param name="link" value="/app/seller/product/detail"/>
                <jsp:param name="crumb" value="Edit"/>
            </jsp:include>
        </div>
        <h1 class="productSpecification-page-title-sellvana">Product Specification</h1>
        <div class="main-content-wrapper">
            <div class="tab-container">
                <button class="tab selected" id="one-tab">Product Information</button>
                <button class="tab" id="two-tab">Variation</button>
            </div>
            <div id="product-information-form" class="product-form-sellvana">
                <div class="product-image-manage-container-sellvana">
                    <div class="input-section-header">
                        <i class="fa-solid fa-image"></i>
                        <h3>Product Image</h3>
                    </div>
                    <img class="product-image-sellvana" src="/app/img/productSampleImage1.png">
                    <div class="manage-image-button-container-sellvana">
                        <button class="clear-image-button">
                            Clear Image
                        </button>
                        <button class="add-new-image-button">
                            Add New Image
                        </button>
                    </div>
                </div>
                <div class="product-info-manage-container-sellvana">
                    <div class="product-category-selectBox">
                        <h3>Product Category</h3>
                        <div class="product-category-select-box-input-container-sellvana">
                            <jsp:include page="/WEB-INF/jsp/component/selectBox.jsp">
                                <jsp:param name="option" value="Clothing & Apparel"/>
                                <jsp:param name="option" value="Shoe & Footwear"/>
                                <jsp:param name="option" value="Electronic & Gadget"/>
                                <jsp:param name="option" value="Toy & Game"/>
                                <jsp:param name="option" value="Pet"/>
                                <jsp:param name="option" value="Stationary"/>
                                <jsp:param name="defaultOption" value="1"/>
                                <jsp:param name="selectBoxFontSize" value="18px"/>
                            </jsp:include>
                        </div>
                    </div>
                    <jsp:include page="/WEB-INF/jsp/component/inputField.jsp">
                        <jsp:param name="title" value="Product Name"/>
                        <jsp:param name="inputType" value="text"/>
                        <jsp:param name="inputName" value="productNameSellvana"/>
                        <jsp:param name="inputWidth" value="500px"/>
                        <jsp:param name="inputHeight" value="56px"/>
                        <jsp:param name="inputFontSize" value="19px"/>
                    </jsp:include>
                    <div>
                        <h5 class="input-title-sellvana">Product Description</h5>
                        <textarea id="productDescriptionSellvana" class="input-sellvana product-description-text-area" placeholder="Type something here..."></textarea>
                    </div>
                </div>
            </div>
            <div style="display: none" id="product-variation-form" class="product-form-sellvana">
                <div class="input-section-header">
                    <i class="fa-solid fa-layer-group"></i>
                    <h3>Variation</h3>
                </div>
                <section class="variation-table-sellvana">
                    <div class="variation-table-content header">
                        <h4 class="column-main">Title</h4>
                        <h4 class="column-sub">Price</h4>
                    </div>
                    <div class="seperator-thick"></div>
                    <div id="variation-container" style="display: flex;flex-direction: column;align-items: center">
                        <jsp:include page="/WEB-INF/jsp/component/productVariationList.jsp">
                            <jsp:param name="isDefault" value="true"/>
                            <jsp:param name="variationName" value="1"/>
                            <jsp:param name="variationTitle" value="Red"/>
                            <jsp:param name="variationPrice" value="RM 888.88"/>
                        </jsp:include>
                        <jsp:include page="/WEB-INF/jsp/component/productVariationList.jsp">
                            <jsp:param name="isDefault" value="false"/>
                            <jsp:param name="variationName" value="2"/>
                            <jsp:param name="variationTitle" value="Red"/>
                            <jsp:param name="variationPrice" value="RM 888.88"/>
                        </jsp:include>
                        <jsp:include page="/WEB-INF/jsp/component/productVariationList.jsp">
                            <jsp:param name="isDefault" value="false"/>
                            <jsp:param name="variationName" value="3"/>
                            <jsp:param name="variationTitle" value="Red"/>
                            <jsp:param name="variationPrice" value="RM 888.88"/>
                        </jsp:include>
                        <button class="add-new-variation-button">Add new variation</button>
                    </div>
                </section>
            </div>
        </div>
        <div class="setting-profile-popup-window-sellvana">
            <div class="popup-window-close-area"></div>
            <div class="drop-area-profile-sellvana">
                <input id="upload-file-profile-sellvana" type="file" accept="image/*" style="display: none">
                <img src="/app/img/image-icon.png">
                <h3>Drag your image here, or <a id="browse-upload-image-profile-sellvana">browse</a></h3>
                <h3 style="color: #6b6b6b; font-size: 17px">Recommended image size is 350px x 350px</h3>
                <h6 class="image-upload-support-profile-sellvana">Supports JPG, PNG</h6>
                <h6 class="image-upload-error-profile-sellvana">Uploaded item is not a valid image file. Please try again.</h6>
            </div>
        </div>
        <button class="save-button-sellvana" disabled>
            <i class="fa-solid fa-floppy-disk"></i>
            <h4>Save</h4>
        </button>
    </div>
</body>
<script>
    var variationCount = 3;
    var newVariationID = variationCount+1;

    $(document).ready(()=>{
        if (<%=isEdit%>){
            $('.breadcrumb-sellvana').load('/app/component/sellerBreadcrumb.jsp?crumb=Product&crumb=Detail&crumb=Edit&link=/app/seller/product&link=/app/seller/product/detail')
        }else{
            $('.breadcrumb-sellvana').load('/app/component/sellerBreadcrumb.jsp?crumb=Product&crumb=Detail&crumb=New&link=/app/seller/product&link=/app/seller/product/detail')
            //
            hasImage = false;
            $('.product-image-sellvana').attr('src', '/app/img/image-empty.png');
            refreshManageImageButton()
            $('#upload-file-profile-sellvana').val("")
            checkProductForm();
            //
            $('#productNameSellvana').val()
            $('#productDescriptionSellvana').val()
            $('#variation-container').children('.variation-table-content').each(function (){
                $(this).remove();
            })
            addNewVariation(true)
        }
    })
</script>
<script>
    $('input, textarea').on('input',()=>{
        checkProductForm();
    })



    function checkValidInput(val){
        if (val.length > 0){
            return true;
        }
        return false;
    }

    function checkProductForm(){
        var productName = $('#productNameSellvana').val().trim();
        var productDescription = $('#productDescriptionSellvana').val().trim();
        var isValidVariation = true;
        $('#variation-container').children().each(function(){
            var metaContent = $(this).find('meta[name="variation-name"]').attr('content');
            if (metaContent){
                var variationTitle = $('#variation-title-'+metaContent).val().trim();
                var variationPrice = $('#variation-price-'+metaContent).val().trim();
                if (!checkValidInput(variationTitle) || !checkValidInput(variationPrice)){
                    isValidVariation = false;
                }
            }
        })
        if (checkValidInput(productName) && checkValidInput(productDescription) && isValidVariation && hasImage){
            $('.save-button-sellvana').attr('disabled',false)
        }else{
            $('.save-button-sellvana').attr('disabled',true)
        }
    }

</script>
<script>
    function setDefault(variationName){
        console.log($('#variation-container').children().length)
        $('#variation-container').children().each(function(){
            var metaContent = $(this).find('meta[name="variation-name"]').attr('content');
            refreshButton(metaContent,false)
        })
        refreshButton(variationName,true)
    }

    function addNewVariation(isDefault){
        variationCount++;
        var div = $('<div style="width: 100%"></div>')
        var url = '/app/component/productVariationList.jsp?isDefault='+isDefault+'&variationName='+(newVariationID)+"&variationTitle=&variationPrice=RM%200.00";
        newVariationID ++;
        div.load(url)
        $('#variation-container').children().last().before(div);
    }

    $('.add-new-variation-button').click(()=>{
      addNewVariation(false);
    })
</script>
<script>
    $('#one-tab').click(function (){
        $(this).addClass("selected")
        $('#two-tab').removeClass("selected")
        $('#product-information-form').css('display','flex')
        $('#product-variation-form').css('display','none')
    })

    $('#two-tab').click(function (){
        $(this).addClass("selected")
        $('#one-tab').removeClass("selected")
        $('#product-information-form').css('display','none')
        $('#product-variation-form').css('display','flex')
    })
</script>
<script>
    var hasImage = true;
    function refreshManageImageButton(){
        if (hasImage){
            $('.clear-image-button').css('display','block')
            $('.add-new-image-button').css('width','auto')
        }else{
            $('.clear-image-button').css('display','none')
            $('.add-new-image-button').css('width','100%')
        }
    }

    function closePopupWindow(){
        $('.setting-profile-popup-window-sellvana').css('animation','fadeOut')
        $('.setting-profile-popup-window-sellvana').css('animation-duration','200ms')
    }

    $('.add-new-image-button').click(()=>{
        $('.setting-profile-popup-window-sellvana').css('display','flex');
        $('.image-upload-error-profile-sellvana').css('display','none')
        $('.drop-area-profile-sellvana').css('animation','scale-up-center-fadeIn')
        $('.drop-area-profile-sellvana').css('animation-duration','200ms')
        $('.setting-profile-popup-window-sellvana').css('animation','fadeIn')
        $('.setting-profile-popup-window-sellvana').css('animation-duration','200ms')
    })

    $('.clear-image-button').click(()=>{
        hasImage = false;
        $('.product-image-sellvana').attr('src', '/app/img/image-empty.png');
        refreshManageImageButton()
        $('#upload-file-profile-sellvana').val("")
        checkProductForm();
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
                    hasImage =true;
                    refreshManageImageButton()
                    $('.product-image-sellvana').attr('src', event.target.result);
                    $('.image-upload-error-profile-sellvana').css('display','none')
                    closePopupWindow()
                    checkProductForm();
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
                    hasImage =true;
                    refreshManageImageButton()
                    $('.product-image-sellvana').attr('src', event.target.result);
                    $('.image-upload-error-profile-sellvana').css('display','none');
                    closePopupWindow()
                    checkProductForm();
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
<style>
    #product-variation-form{
        display: flex;
        flex-direction: column;
        gap: 0px;
    }

    .tab-container{
        display: flex;
        flex-direction: row;
        gap: 30px;
    }

    .tab-container .tab.selected:hover{
        background-color: white;
    }

    .tab-container .tab.selected{
        background-color: white;
        border-bottom: 3px solid <%=appAccent%>
    }

    .tab-container .tab:hover{
        background-color: white;
    }

    .tab-container button{
        outline: none;
        border: none;
        padding:15px 20px;
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 15.5px;
        color: #3b3b3b;
        background-color: #e5e5e5;
        border-radius: 5px 5px 0px 0px;
        cursor: pointer;
        transition: background-color 0.2s ease-in;
    }
</style>
<style>
    .save-button-sellvana:disabled:hover{
        background-color: grey;
    }

    .save-button-sellvana:disabled{
        background-color: grey;
        cursor: default;
    }

    .save-button-sellvana:hover{
        background-color: #00804d;;
    }

    .save-button-sellvana h4{
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 16.0498px;
    }

    .save-button-sellvana i{
        font-size: 15px;
    }

    .save-button-sellvana{
        position: absolute;
        outline: none;
        cursor: pointer;
        border:none;
        border-radius: 5px;
        background-color: #00ad66;
        display: flex;
        flex-direction: row;
        align-items: center;
        padding: 10px 20px;
        color: white;
        gap: 10px;
        box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
        transition: all 0.2s ease-in;
        right: 340px;
        top: 160px;
    }

    .main-content-wrapper{
        margin: 50px 0px 50px 30px;
    }

    .product-description-text-area{
        width: 900px;
        resize: none;
        padding: 15px;
        height: 300px;
        font-size: 17px;
        line-height: 22px;
    }

    .product-category-selectBox .product-category-select-box-input-container-sellvana{
        height: 56px;
        border-radius: 5px;
        border: 1.13px solid #BDBDBD;
        background-color: white;
    }

    .product-category-selectBox h3{
        font-family: Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 18.0498px;
        color: #4A5568;
    }

    .product-category-selectBox{
        width: 350px;
        height: 90px;
        display: flex;
        flex-direction: column;
        gap: 12px;
    }

    .product-info-manage-container-sellvana{
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .input-section-header h3{
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 19px;
        color: #3d3d3d;
    }

    .input-section-header i{
        font-size: 19px;
        color: <%=appAccent%>;
    }

    .input-section-header{
        display: flex;
        flex-direction: row;
        gap: 10px;
        align-items: center;
        margin-bottom: 20px;
    }

    .product-form-sellvana{
        display: flex;
        flex-direction: row;
        gap: 70px;
        background-color: white;
        padding: 30px 40px;
        width: fit-content;
        border-radius: 0px 0px 10px 10px;
        border: 1px solid #f1f1f1;
    }

    .productSpecification-page-title-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 600;
        font-size: 30px;
        color: #333333;
        margin-top: 30px;
    }

    .productSpecification-main-content-sellvana{
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
    .product-image-manage-container-sellvana{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }

    .clear-image-button:hover{
        background-color: #545454;
    }

    .clear-image-button{
        background-color:gray;
    }

    .add-new-image-button:hover{
        background-color: <%=appAccentHover%>;
    }

    .add-new-image-button{
        background-color: <%=appAccent%>;
    }

    .manage-image-button-container-sellvana button{
        outline: none;
        border:none;
        color: white;
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 13.5px;
        cursor: pointer;
        padding: 10px 15px;
        border-radius: 6px;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
        transition: all 0.2s ease-in;
    }

    .manage-image-button-container-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        margin-top: 20px;
        width: 350px;
        justify-content: space-between;
    }

    .product-image-sellvana{
        width: 350px;
        height: 350px;
        object-fit: contain;
        border: 1px solid #e3e3e3;
    }
</style>
<style>
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
</style>
<style>
    .add-new-variation-button:hover{
        background-color: #20ab6a;
    }

    .add-new-variation-button{
        align-items: center;
        padding: 12px;
        width: 95%;
        margin-bottom: 20px;
        margin-top: 20px;
        cursor: pointer;
        background-color: #26d281;
        border-radius: 7px;
        outline:none;
        border:none;
        color: white;
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 15.2px;
        transition: all 0.2s ease-in;
        box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
    }

    .default-label{
        padding: 7px;
        background-color: <%=appAccentLight%>;
        color:<%=appAccent%>;
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 14px;
        border-radius: 3px;
        box-shadow: 0 1px 2px 0 rgb(0 0 0 / 0.05);
        margin-left: 10px;
    }

    .variation-table-sellvana .seperator-thick{
        border: 1.1px solid #f1f1f1;
    }

    .variation-table-content.content h4{
        font-family: 'Inter';
        font-weight: 500;
        font-size: 15.5px;
        color: #5d5d5d;
    }

    .variation-table-content.header h4{
        font-family: 'Inter';
        font-weight: 600;
        font-size: 16px;
        color: #2D3748;
    }

    .variation-table-content .column-sub{
        justify-self: center;
    }

    .variation-table-content{
        display: grid;
        grid-template-columns: 3fr 2fr 1fr 0.5fr;
        grid-gap: 10px;
        align-items: center;
        padding: 20px 30px;
        width: 100%;
    }

    .variation-table-sellvana{
        border-radius: 6px;
        background-color: white;
        width: 1200px;
        box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
        margin-top: 20px;
    }
</style>
</html>
