<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
    <title>Order Detail</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
        <jsp:param name="hasInitialShadow" value="true"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp">
        <jsp:param name="menuLocation" value="order"/>
    </jsp:include>
    <div class="order-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/breadcrumb.jsp">
                <jsp:param name="crumb" value="Home"/>
                <jsp:param name="link" value="/app"/>
                <jsp:param name="crumb" value="Order"/>
                <jsp:param name="link" value="/app/order"/>
                <jsp:param name="crumb" value="Detail"/>
            </jsp:include>
        </div>
        <div class="order-main-content-header-sellvana">
            <div class="order-id-wrapper-sellvana">
                <i class="fa-solid fa-box"></i>
                <h2>Order #230315GPHMPGU1</h2>
            </div>
            <div class="order-status-wrapper-sellvana">
                <i class="fa-solid fa-circle-question"></i>
                <h4>Confirmed</h4>
            </div>
        </div>
        <div class="order-content-wrapper-sellvana">
            <div class="order-content-header-container-sellvana">
                <h3>Product List</h3>
            </div>
            <div class="order-header-seperator-sellvana"></div>
            <div class="order-list-sellvana">
                <div class="order-list-content-container-sellvana">
                    <div class="order-list-product-sellvana">
                        <div class="order-list-product-container-sellvana">
                            <img src="/app/img/productSampleImage1.png">
                            <div class="order-list-product-description-container-sellvana">
                                <h4>adidas Unisex D.O.N. Issue #3 Basketball Shoe (GW2945) Sport Planet 8-3</h4>
                                <h5>Type: GW2945,UK 9</h5>
                                <h4 class="quantity">x1</h4>
                            </div>
                        </div>
                        <h5 class="order-list-product-total-price-sellvana">RM 249.90</h5>
                    </div>
                    <div class="order-list-product-sellvana">
                        <div class="order-list-product-container-sellvana">
                            <img src="/app/img/productSampleImage1.png">
                            <div class="order-list-product-description-container-sellvana">
                                <h4>adidas Unisex D.O.N. Issue #3 Basketball Shoe (GW2945) Sport Planet 8-3</h4>
                                <h5>Type: GW2945,UK 9</h5>
                                <h4 class="quantity">x1</h4>
                            </div>
                        </div>
                        <h5 class="order-list-product-total-price-sellvana">RM 249.90</h5>
                    </div>
                    <div class="order-list-product-sellvana">
                        <div class="order-list-product-container-sellvana">
                            <img src="/app/img/productSampleImage1.png">
                            <div class="order-list-product-description-container-sellvana">
                                <h4>adidas Unisex D.O.N. Issue #3 Basketball Shoe (GW2945) Sport Planet 8-3</h4>
                                <h5>Type: GW2945,UK 9</h5>
                                <h4 class="quantity">x1</h4>
                            </div>
                        </div>
                        <h5 class="order-list-product-total-price-sellvana">RM 249.90</h5>
                    </div>
                </div>
            </div>
            <div class="order-header-seperator-sellvana price-seperator"></div>
            <div class="order-list-footer-container-sellvana">
                <div class="order-list-footer-price-line-sellvana">
                    <div>
                        <h5 class="price-title subtext">Subtotal :</h5>
                        <h5 class="price-text subprice">RM 111.11</h5>
                    </div>
                    <div>
                        <h5 class="price-title subtext">Shipping fee :</h5>
                        <h5 class="price-text subprice">RM 5.55</h5>
                    </div>
                    <div>
                        <h4 class="price-title maintext">Order Total :</h4>
                        <h3 class="price-text mainprice">RM 222.22</h3>
                    </div>
                </div>
                <div class="order-list-footer-button-container-sellvana">
                    <button class="order-list-footer-button-sellvana">Write a review</button>
                    <button class="order-list-footer-button-sellvana" id="cancel-order-button">Cancel Order</button>
                </div>
            </div>
        </div>

        <div class="order-flex-row-wrapper-sellvana">
            <div class="order-content-wrapper-sellvana payment-wrapper">
                <div class="order-content-header-container-sellvana">
                    <h3>Payment Information</h3>
                </div>
                <div class="order-header-seperator-sellvana"></div>
                <div class="order-payment-sellvana">
                    <div class="order-payment-list-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Payment method: </h5>
                        <div class="order-payment-description-sellvana">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 -9 58 58" fill="none">
                                <rect x="0.5" y="0.5" width="57" height="39" rx="3.5" fill="white" stroke="#F3F3F3"/>
                                <path d="M34.3102 28.9765H23.9591V10.5122H34.3102V28.9765Z" fill="#FF5F00"/>
                                <path d="M24.6223 19.7429C24.6223 15.9973 26.3891 12.6608 29.1406 10.5107C27.1285 8.93843 24.5892 7.99998 21.8294 7.99998C15.2961 7.99998 10 13.2574 10 19.7429C10 26.2283 15.2961 31.4857 21.8294 31.4857C24.5892 31.4857 27.1285 30.5473 29.1406 28.975C26.3891 26.8249 24.6223 23.4884 24.6223 19.7429" fill="#EB001B"/>
                                <path d="M48.2706 19.7429C48.2706 26.2283 42.9745 31.4857 36.4412 31.4857C33.6814 31.4857 31.1421 30.5473 29.1293 28.975C31.8815 26.8249 33.6483 23.4884 33.6483 19.7429C33.6483 15.9973 31.8815 12.6608 29.1293 10.5107C31.1421 8.93843 33.6814 7.99998 36.4412 7.99998C42.9745 7.99998 48.2706 13.2574 48.2706 19.7429" fill="#F79E1B"/>
                            </svg>
                            <h5>**** **** **** 3947</h5>
                        </div>
                    </div>
                    <div class="order-payment-list-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Status: </h5>
                        <div class="order-payment-description-sellvana">
                            <h5>Paid</h5>
                        </div>
                    </div>
                    <div class="order-payment-list-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Type: </h5>
                        <div class="order-payment-description-sellvana">
                            <h5>Credit Card</h5>
                        </div>
                    </div>
                    <div class="order-payment-list-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Amount: </h5>
                        <div class="order-payment-description-sellvana">
                            <h5>RM 222.22</h5>
                        </div>
                    </div>
                    <div class="order-payment-list-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Paid On: </h5>
                        <div class="order-payment-description-sellvana">
                            <h5>26 Febuary 2022 12:51:09</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="order-content-wrapper-sellvana delivery-wrapper">
                <div class="order-content-header-container-sellvana">
                    <h3>Delivery Information</h3>
                </div>
                <div class="order-header-seperator-sellvana"></div>
                <div class="order-payment-sellvana">
                    <div class="order-payment-list-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Customer: </h5>
                        <div class="order-payment-description-sellvana">
                            <h5>Ben Lim</h5>
                        </div>
                    </div>
                    <div class="order-payment-list-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Type: </h5>
                        <div class="order-payment-description-sellvana">
                            <i class="fa-solid fa-truck"></i>
                            <h5>Default</h5>
                        </div>
                    </div>
                    <div class="order-payment-list-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Cost: </h5>
                        <div class="order-payment-description-sellvana">
                            <h5>RM 5.55</h5>
                        </div>
                    </div>
                    <div class="order-header-seperator-sellvana address-seperator"></div>
                    <div class="order-payment-list-sellvana order-delivery-address-sellvana">
                        <h5 class="order-payment-list-label-sellvana">Address: </h5>
                        <div class="order-payment-description-sellvana address">
                            <a id="order-delivery-address-sellvana">3 Newbridge Court ,Chino Hills,
                                CA 91709, United States</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    $('#order-delivery-address-sellvana').click(()=>{
        window.open('https://maps.google.com/?q='+"3 Newbridge Court ,Chino Hills,CA 91709, United States");
    })


</script>
<style>
    .breadcrumb-sellvana{
        padding-top: 30px;
    }

    .order-status-wrapper-sellvana h4{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 15.5px;
        color: #262626;
    }

    .order-status-wrapper-sellvana  i{
        color: <%=appAccent%>;
        font-size: 16.5px;
    }

    .order-status-wrapper-sellvana {
        display: flex;
        flex-direction: row;
        align-items: center !important;
        gap:20px;
    }

    .order-main-content-header-sellvana{
        display: flex;
        flex-direction: row;
        padding: 50px 0px 30px;
        justify-content: space-between;
    }

    #cancel-order-button:hover{
        background-color: #ff3d6b;
        color:white;
    }

    #cancel-order-button{
        background-color: white;
        border: 1px solid #ff3d6b;
        color: #ff3d6b;
        display:none;
    }

    .order-list-footer-button-sellvana:hover{
        background-color: <%=appAccentHover%> ;
    }

    .order-list-footer-button-sellvana{
        background-color: <%=appAccent%> ;
        padding: 9px 20px;
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 15px;
        color: white;
        margin-top: 30px;
        border-radius: 5px;
        transition: all 0.2s ease-in;
    }

    .order-list-footer-price-line-sellvana{
        display: flex;
        flex-direction: column !important;
        gap: 10px;
    }

    .order-list-footer-container-sellvana .mainprice{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 20px;
        color: <%=appAccent%>;
    }

    .order-list-footer-container-sellvana .maintext{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 16px;
        color: #3f3f3f;
    }

    .order-list-footer-container-sellvana .subprice{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 15.5px;
        color: #3f3f3f;
    }

    .order-list-footer-container-sellvana .subtext{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 14.5px;
        color: #808080;
    }

    .order-list-footer-container-sellvana .price-text{
        width: 150px;
        display: flex;
        justify-content: flex-end;
    }

    .order-list-footer-container-sellvana .price-title{
        width: 200px;
    }

    .order-list-footer-container-sellvana div{
        display: flex;
        flex-direction: row;
    }

    .order-list-footer-container-sellvana{
        display: flex;
        flex-direction: column;
        align-items: flex-end;
        padding-right: 30px;
        padding-bottom: 20px;
    }

    .price-seperator{
        margin: 0px 0px 25px;
    }

    .order-delivery-address-sellvana{
        height: auto !important;
        align-items: center !important;
        padding:  30px 0px 20px;
    }

    .address-seperator{
        margin-top: 15px;
    }

    #order-delivery-address-sellvana:hover{
        text-decoration-line: underline;
    }

    #order-delivery-address-sellvana{
        white-space: normal;
        text-align: end;
        color:<%=appAccentHover%>;
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 15px;
        cursor:pointer;
    }

    .order-payment-description-sellvana i{
        font-size: 15px;
        color:<%=appAccentHover%>;
    }

    .delivery-wrapper{
        width: 450px !important;
    }

    .order-payment-list-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        width:100%;
        height: 40px;
    }

    .order-payment-list-sellvana .order-payment-description-sellvana h5{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 15px;
        color: #222222;
        white-space: nowrap;
    }


    .order-payment-list-sellvana .order-payment-description-sellvana svg{
        width: 50px;
        height: 50px;
    }

    .order-payment-list-sellvana .order-payment-description-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: flex-end;
        gap:15px;
    }

    .order-payment-list-sellvana .order-payment-list-label-sellvana{
        font-family: Inter;
        font-weight: 400;
        font-size: 16px;
        color: #626262;
    }

    .order-payment-list-label-sellvana{
        width: 100%;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: flex-start;
    }

    .payment-wrapper{
        width: 500px !important;
    }

    .order-flex-row-wrapper-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        margin-top: 50px;
        justify-content: space-between;
    }

    .order-payment-sellvana{
        padding: 10px 25px 20px 25px;
    }

    .order-id-wrapper-sellvana h2{
        font-family: Inter;
        font-weight: 500;
        font-size: 22px;
        color: #4f4f4f;
    }

    .order-id-wrapper-sellvana i{
        font-size: 21px;
        color: #2AA952;
    }

    .order-id-wrapper-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        align-items: center;
        gap: 20px;
    }

    .order-list-content-container-sellvana .order-list-product-sellvana:not(:first-child){
        padding-top:30px;
    }

    .order-list-content-container-sellvana .order-list-product-sellvana:not(:last-child){
        border-bottom: 1px solid #e1e1e1;
    }

    .order-list-product-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        width: 100%;
    }

    .order-list-product-description-container-sellvana h5{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 13.5px;
        color: #808080;
    }

    .order-list-product-description-container-sellvana .quantity{
        font-size:14.5px;
    }

    .order-list-product-description-container-sellvana h4{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 15.5px;
        color: #252525;
    }

    .order-list-product-description-container-sellvana{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        gap: 5px;
    }

    .order-list-product-container-sellvana img{
        width: 100px;
        height: 100px;
        object-fit: contain;
    }

    .order-list-product-container-sellvana{
        display: flex;
        flex-direction: row;
        align-items: flex-start;
        gap:20px;
    }

    .order-list-product-total-price-sellvana{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 15.5px;
        color: <%=appAccent%>;
    }

    .order-list-content-container-sellvana{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        margin-top:15px;
        width: 100%;
    }

    .order-list-sellvana{
        display: flex;
        flex-direction: column;
        padding: 18px 20px 20px;
        align-items: center;
        justify-content: center;
    }

    .order-header-seperator-sellvana{
        border-top:1px solid #e3e3e3;
    }

    .order-content-wrapper-sellvana{
        display: flex;
        flex-direction: column;
        width: 100%;
        box-shadow: 0px 1.0814px 10.9535px rgba(0, 0, 0, 0.12);
        border-radius: 8.65116px;
        padding-top: 10px;
    }

    .order-main-content-sellvana{
        width: 1000px;
        margin:0px auto;
        padding-bottom:100px;
    }

    .order-content-header-container-sellvana h3{
        font-family: Inter;
        font-weight: 500;
        font-size: 17px;
        color:<%=appAccent%>;
    }

    .order-content-header-container-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        padding: 5px 25px 10px;
    }
</style>
</html>
