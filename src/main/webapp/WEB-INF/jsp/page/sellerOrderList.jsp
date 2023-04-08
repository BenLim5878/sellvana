<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
    String appAccentLight = application.getInitParameter("appAccentLight");
%>
<html>
<head>
    <title>Order</title>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/sellerNavBar.jsp">
        <jsp:param name="menuLocation" value="order"/>
    </jsp:include>
    <div class="sellerOrder-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/sellerBreadcrumb.jsp">
                <jsp:param name="crumb" value="Order"/>
            </jsp:include>
        </div>
        <h1 class="sellerOrder-page-title-sellvana">Order</h1>
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
        <section class="order-table-sellvana">
            <div class="order-table-content header">
                <h4 class="column-sub">Order</h4>
                <h4 class="column-main">Product</h4>
                <h4 class="column-sub">Quantity</h4>
                <h4 class="column-sub">User</h4>
                <h4 class="column-sub">Placed on</h4>
                <h4 class="column-sub">Status</h4>
                <h4 class="column-sub">Action</h4>
            </div>
            <div class="seperator-thick"></div>
            <div id="order-container" style="display: flex;flex-direction: column;align-items: center">
                <jsp:include page="/WEB-INF/jsp/component/sellerOrderList.jsp">
                    <jsp:param name="orderName" value="1"/>
                    <jsp:param name="orderID" value="123456"/>
                    <jsp:param name="orderPrice" value="RM 249.90"/>
                    <jsp:param name="orderQuantity" value="2"/>
                    <jsp:param name="orderCreationDate" value="20 January 2022 18:03:24"/>
                    <jsp:param name="orderStatus" value="Pending"/>
                </jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/sellerOrderList.jsp">
                    <jsp:param name="orderName" value="2"/>
                    <jsp:param name="orderID" value="234123"/>
                    <jsp:param name="orderPrice" value="RM 949.90"/>
                    <jsp:param name="orderQuantity" value="5"/>
                    <jsp:param name="orderCreationDate" value="22 January 2022 18:03:24"/>
                    <jsp:param name="orderStatus" value="Confirmed"/>
                </jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/sellerOrderList.jsp">
                    <jsp:param name="orderName" value="3"/>
                    <jsp:param name="orderID" value="434554"/>
                    <jsp:param name="orderPrice" value="RM 449.90"/>
                    <jsp:param name="orderQuantity" value="3"/>
                    <jsp:param name="orderCreationDate" value="23 January 2022 18:03:24"/>
                    <jsp:param name="orderStatus" value="Cancelled"/>
                </jsp:include>
            </div>
        </section>
    </div>
</body>
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
    .sellerOrder-page-title-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 600;
        font-size: 30px;
        color: #333333;
        margin-top: 30px;
    }

    .sellerOrder-main-content-sellvana{
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
        width: 145px;
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

    .order-header-button-container-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        margin-top:35px;
        width: 1500px;
    }
</style>
<style>
    .order-table-sellvana .seperator-thick{
        border: 1.1px solid #f1f1f1;
    }

    .order-table-content.content h4{
        font-family: 'Inter';
        font-weight: 500;
        font-size: 15.5px;
        color: #5d5d5d;
    }

    .order-table-content.header h4{
        font-family: 'Inter';
        font-weight: 600;
        font-size: 16px;
        color: #2D3748;
    }

    .order-table-content .column-sub{
        justify-self: center;
    }

    .order-table-content{
        display: grid;
        grid-template-columns: 1.5fr 4fr 1fr 2fr 2fr 1.5fr 1.5fr;
        grid-gap: 10px;
        align-items: center;
        padding: 20px 30px;
        width: 100%;
    }

    .order-table-sellvana{
        border-radius: 6px;
        background-color: white;
        width: 1500px;
        box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
        margin-top: 50px;
    }
</style>
</html>
