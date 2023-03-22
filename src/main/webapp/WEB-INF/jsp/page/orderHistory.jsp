<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
    <title>Order History</title>
    <script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
        <jsp:param name="hasInitialShadow" value="true"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp">
        <jsp:param name="menuLocation" value="order"/>
    </jsp:include>
    <div class="order-main-content-wrapper-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/breadcrumb.jsp">
                <jsp:param name="crumb" value="Home"/>
                <jsp:param name="link" value="/app"/>
                <jsp:param name="crumb" value="Order"/>
            </jsp:include>
        </div>
        <div class="order-header-container-sellvana">
            <h1>Your Orders</h1>
            <div class="order-header-button-container-sellvana">
                <div class="order-type-header-button-container-sellvana">
                    <button class="order-type-header-button-sellvana" id="order-type-all" >All</button>
                    <button class="order-type-header-button-sellvana" id="order-type-pending">Pending</button>
                    <button class="order-type-header-button-sellvana" id="order-type-confirmed">Confirmed</button>
                    <button class="order-type-header-button-sellvana" id="order-type-cancelled">Cancelled</button>
                </div>
                <button class="order-header-filter-button-sellvana">
                    <i class="fa-solid fa-arrow-up-wide-short"></i>
                    <h4 class="filter-description">Sort by: Latest</h4>
                    <div class="order-header-filter-menu-sellvana">
                        <div class="main-content-product-list-header-filter-menu-content-sellvana">
                            <div class="order-header-filter-menu-list-sellvana">
                                <i class="fa-solid fa-arrow-rotate-right"></i>
                                <h5>Latest</h5>
                            </div>
                            <div class="order-header-filter-menu-list-sellvana">
                                <i class="fa-solid fa-arrow-rotate-left"></i>
                                <h5>Oldest</h5>
                            </div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
        <div class="order-list-container-sellvana">
            <div class="order-list-sellvana">
                <div class="order-list-header-sellvana">
                    <div class="order-list-header-seller-container-sellvana">
                        <i class="fa-solid fa-box"></i>
                        <h3>Order #230315GPHMPGU1</h3>
                    </div>
                    <div class="order-list-header-status-container-sellvana">
                        <h4>Confirmed</h4>
                        <i class="fa-solid fa-circle-question"></i>
                    </div>
                </div>
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
                </div>
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
                    <button class="order-list-footer-cancel-button-sellvana">Cancel Order</button>
                </div>
            </div>
            <div class="order-list-sellvana">
                <div class="order-list-header-sellvana">
                    <div class="order-list-header-seller-container-sellvana">
                        <i class="fa-solid fa-box"></i>
                        <h3>Order #230315GPHMPGU1</h3>
                    </div>
                    <div class="order-list-header-status-container-sellvana">
                        <h4>Confirmed</h4>
                        <i class="fa-solid fa-circle-question"></i>
                    </div>
                </div>
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
                </div>
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
                    <button class="order-list-footer-cancel-button-sellvana">Cancel Order</button>
                </div>
            </div>
            <div class="order-list-sellvana">
                <div class="order-list-header-sellvana">
                    <div class="order-list-header-seller-container-sellvana">
                        <i class="fa-solid fa-box"></i>
                        <h3>Order #230315GPHMPGU1</h3>
                    </div>
                    <div class="order-list-header-status-container-sellvana">
                        <h4>Confirmed</h4>
                        <i class="fa-solid fa-circle-question"></i>
                    </div>
                </div>
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
                    <button class="order-list-footer-cancel-button-sellvana">Cancel Order</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        $("#order-type-all").css("background",'<%=appAccent%>')
        $('#order-type-all').css("color",'white')

        $('.order-type-header-button-sellvana').on('click',function (){
            $('.order-type-header-button-sellvana').css("background","white");
            $('.order-type-header-button-sellvana').css("color","#1A202C");
            $(this).css("background",'<%=appAccent%>')
            $(this).css("color",'white')
        })

        $('.order-header-filter-button-sellvana').click(function (){
            var filterMenu =  $('.order-header-filter-menu-sellvana');
            if (filterMenu.css('display') == 'none'){
                filterMenu.css('display','flex')
            } else {
                filterMenu.css('display','none')
            }
        })

        $('.order-header-filter-menu-list-sellvana').click(function(){
            var buttonText =  $(this).find('h5').html()
            $(".filter-description").html('Sort by: '+buttonText)
        })
    </script>
    <style>
        .breadcrumb-sellvana{
            padding-bottom: 30px;
        }

        .order-list-footer-cancel-button-sellvana:hover{
            background-color: <%=appAccentHover%> ;
        }

        .order-list-footer-cancel-button-sellvana{
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
            width: 100%;
            margin-top: 25px;
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
            border-top: 1px solid #d7d7d7;
            border-bottom: 1px solid #d7d7d7;
            padding: 20px 20px 10px 20px;
        }

        .order-list-header-seller-container-sellvana i{
            color: <%=appAccent%>;
            font-size:16px;
        }

        .order-list-header-seller-container-sellvana h3{
            font-family:Inter;
            font-style: normal;
            font-weight: 500;
            font-size: 15.5px;
            color: #262626;
        }

        .order-list-header-seller-container-sellvana{
            display: flex;
            flex-direction: row;
            align-items: center;
            gap: 15px;
        }

        .order-list-header-sellvana{
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
        }

        .order-list-header-status-container-sellvana h4{
            font-family:Inter;
            font-style: normal;
            font-weight: 500;
            font-size: 14.5px;
            color: #262626;
        }

        .order-list-header-status-container-sellvana i{
            color: <%=appAccent%>;
            font-size: 14.5px;
        }

        .order-list-header-status-container-sellvana{
            display: flex;
            flex-direction: row;
            align-items: center;
            gap:20px;
        }

        .order-list-sellvana{
            display: flex;
            flex-direction: column;
            width: 100%;
            padding: 18px 20px 20px;
            background: #FFFFFF;
            box-shadow: 0px 1.0814px 8px rgba(0, 0, 0, 0.12);
            border-radius: 8.65116px;
        }

        .order-list-container-sellvana{
            display: flex;
            flex-direction: column;
            width: 100%;
            margin-top:30px;
            padding-top:20px;
            padding-bottom: 100px;
            gap: 50px;
        }

        .order-header-filter-menu-sellvana h4{
            font-family: Inter;
            font-style: normal;
            font-weight: 600;
            font-size: 16px;
            color: #222222;
        }

        .order-header-filter-menu-sellvana{
            display: none;
            flex-direction: column;
            align-items: center;
            padding:15px 0px 15px;
            background-color: white;
            box-shadow: 0px 2.5px 25px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            gap:10px;
            position: absolute;
            margin-top:170px;
            margin-left: -10px;
        }

        .order-header-filter-menu-list-sellvana:hover h5{
            color: white;
            font-weight: 500;
        }

        .order-header-filter-menu-list-sellvana h5{
            font-size: 15.5px;
            color: #222222;
            transition: all 0.2s ease-in;
            font-family:Inter;
            font-style: normal;
            font-weight: 400;
            transition: all 0.2s ease-in;
        }

        .order-header-filter-menu-list-sellvana:hover i{
            color: white !important;
        }

        .order-header-filter-menu-list-sellvana i{
            font-size: 15.5px;
            color: #222222;
            transition: all 0.2s ease-in;
            width: 18px;
            transition: all 0.2s ease-in;
        }

        .order-header-filter-menu-list-sellvana:hover{
            background-color: <%=appAccent%>;
        }

        .order-header-filter-menu-list-sellvana{
            display: flex;
            flex-direction: row;
            align-items: center;
            gap:15px;
            width: 125px;
            padding: 13px 30px 13px 22px;
            transition: all 0.2s ease-in;
            cursor:pointer;
        }

        .order-header-filter-button-sellvana i{
            font-size: 18px;
            color: #222222;
            transition: all 0.2s ease-in;
        }

        .order-header-filter-button-sellvana h4{
            font-family:Inter;
            font-style: normal;
            font-weight: 500;
            font-size: 15px;
            color: #222222;
            transition: all 0.2s ease-in;
        }

        .order-header-filter-button-sellvana:hover .fa-arrow-up-wide-short{
            color:<%=appAccent%> !important;
        }

        .order-header-filter-button-sellvana:hover .filter-description{
            color:<%=appAccent%> !important;
        }

        .order-header-filter-button-sellvana{
            background-color: transparent;
            cursor: pointer;
            display: flex;
            flex-direction: row;
            align-items: center;
            gap: 8px;
        }

        .order-header-button-container-sellvana{
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
            margin-top:35px;
        }

        .order-type-header-button-container-sellvana{
            display: flex;
            flex-direction: row;
            align-items: center;
            gap:15px;
        }

        .order-header-container-sellvana h1{
            font-family: Inter;
            font-style: normal;
            font-weight: 600;
            font-size: 25px;
            color: #2c2c2c;
        }

        .order-header-container-sellvana{
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            position: sticky;
            width:1140px;
        }

        .order-main-content-wrapper-sellvana{
            width: 1100px;
            margin: 40px auto 80px;
            display: flex;
            flex-direction: column;
        }

        .order-type-header-button-container-sellvana button:hover{
            background-color: <%=appAccent%>;
            color:white;
        }

        .order-type-header-button-container-sellvana button{
            align-items: center;
            background: #FFFFFF;
            border: 0 solid #E2E8F0;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            box-sizing: border-box;
            color: #1A202C;
            display: inline-flex;
            font-family: Inter;
            font-size: 15px;
            font-weight: 500;
            height: 50px;
            justify-content: center;
            line-height: 24px;
            overflow-wrap: break-word;
            padding: 20px;
            text-decoration: none;
            width: auto;
            border-radius: 8px;
            cursor: pointer;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            transition: all 0.2s ease-in;
        }
    </style>
</body>
</html>
