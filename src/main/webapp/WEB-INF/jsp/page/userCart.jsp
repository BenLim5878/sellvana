<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/alphardex/aqua.css/dist/aqua.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="/app/js/utility.js"></script>
</head>
<body>
  <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
    <jsp:param name="hasInitialShadow" value="true"/>
  </jsp:include>
  <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp"></jsp:include>
  <div class="cart-main-content-sellvana">
    <div class="breadcrumb-sellvana">
      <jsp:include page="/WEB-INF/jsp/component/breadcrumb.jsp">
        <jsp:param name="crumb" value="Home"/>
        <jsp:param name="link" value="/app"/>
        <jsp:param name="crumb" value="Cart"/>
      </jsp:include>
    </div>
    <h2 class="cart-title-sellvana">Shopping Cart</h2>
    <div style="display: none" class="cart-list-table-sellvana">
      <div class="cart-list-table-content-sellvana header">
        <input id="form-checkAll-input" type="checkbox" class="form-check-input" id="anime" name="hobby" />
        <h4 class="column-main">Product</h4>
        <h4 class="column-sub">Price</h4>
        <h4 class="column-sub">Quantity</h4>
        <h4 class="column-sub">Total</h4>
        <h4 class="column-sub">Action</h4>
      </div>
      <div class="cart-list-table-main-content">
        <jsp:include page="/WEB-INF/jsp/component/cartListItem.jsp">
          <jsp:param name="productName" value="abc12345"/>
        </jsp:include>
        <jsp:include page="/WEB-INF/jsp/component/cartListItem.jsp">
          <jsp:param name="productName" value="abc54321"/>
        </jsp:include>
      </div>
      <div class="cart-footer-container-sellvana">
        <div class="cart-footer-content-sellvana">
          <div class="cart-footer-price-content-sellvana">
            <h3 class="total-item">Total (0 item):</h3>
            <h3 class="total-price">RM 0.00</h3>
          </div>
          <button class="cart-footer-checkout-button-sellvana">Check Out</button>
        </div>
      </div>
    </div>
    <div class="cart-noItem-container-sellvana">
      <img src="/app/img/overwhelmed-rafiki.png">
      <h4>Your shopping cart is empty :(</h4>
    </div>
  </div>
</body>
<script>
  checkoutButtonValidation()
  itemCartValidation()

  function itemCartValidation(){
    if ($('.cart-list-table-main-content').children('.cart-product-list-sellvana').length == 0){
      $('.cart-list-table-sellvana').css('display','none')
      $('.cart-noItem-container-sellvana').css('display','flex')
    } else {
      $('.cart-list-table-sellvana').css('display','block')
      $('.cart-noItem-container-sellvana').css('display','none')
    }
  }

  $('#form-checkAll-input').change(function (){
    $('.cart-list-table-main-content').children('div').children('.meta-cart-product-list-sellvana').each(function (){
      var productName = $(this).html();
      if ($('#form-checkAll-input').is(":checked")){
        $('#checkbox-product-'+productName).prop('checked',true)
      } else {
        $('#checkbox-product-'+productName).prop('checked',false)
      }
    })
    updateTotalCartPrice()
  })

  function checkoutButtonValidation(){
     var totalCartPriceValue =  $('.cart-footer-price-content-sellvana .total-price').html();
     var totalPrice = parseFloat(totalCartPriceValue.replace(/[^0-9.-]+/g,""));
     if (totalPrice > 0){
       $('.cart-footer-checkout-button-sellvana').prop('disabled',false)
     } else {
       $('.cart-footer-checkout-button-sellvana').prop('disabled',true)
     }
  }
  function updateTotalCartPrice(){
    var totalCartPrice = 0;
    var totalCartItemQuantity = 0;
    $('.cart-list-table-main-content').children('div').children('.meta-cart-product-list-sellvana').each(function (){
      var productName = $(this).html();
      var isProductTicked = $('#checkbox-product-'+productName).is(':checked')
      if (isProductTicked){
        totalCartPrice += getTotalPrice(productName);
        totalCartItemQuantity += getTotalItem(productName);
      }
      $('.cart-footer-price-content-sellvana .total-price').html("RM "+ formatDecimals(totalCartPrice,2))
      $('.cart-footer-price-content-sellvana .total-item').html("Total ("+totalCartItemQuantity+" item):")
      checkoutButtonValidation()
    })
  }
</script>
<style>
  .cart-noItem-container-sellvana h4{
    font-family: Inter;
    font-weight: 400;
    font-size: 17px;
  }

  .cart-noItem-container-sellvana{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 30px;
  }

  .cart-footer-container-sellvana{
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: flex-end;
  }

  .cart-footer-checkout-button-sellvana:disabled:hover{
    background-color: grey;
  }

  .cart-footer-checkout-button-sellvana:disabled{
    background-color: grey;
    cursor: default;
  }

  .cart-footer-checkout-button-sellvana:hover{
    background-color: <%=appAccentHover%>;
  }

  .cart-footer-checkout-button-sellvana{
    background-color: <%=appAccent%>;
    color: white;
    font-family: Inter;
    font-weight: 400;
    padding: 10px 20px;
    font-size: 14.5px;
    border-radius: 5px;
    box-shadow: 0px 5.71429px 5px rgba(192, 192, 192, 0.25);
    transition: all 0.2s ease-in;
  }

  .cart-footer-price-content-sellvana{
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 20px;
  }

  .cart-footer-price-content-sellvana .total-price{
    font-family: Inter;
    font-weight: 500;
    color: <%=appAccent%>;
    font-size: 17.5px;
  }

  .cart-footer-price-content-sellvana .total-item{
    font-family: Inter;
    font-weight: 400;
    font-size: 16.5px;
    color: #424242;
  }

  .cart-footer-content-sellvana{
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    margin-top: 25px;
    padding: 20px 30px;
    box-shadow: 0px 2px 2px rgba(61, 61, 61, 0.25);
    border-radius: 6px;
    gap: 20px;
    width: 290px;
  }

  .cart-list-table-main-content{
    margin-top:35px !important;
    display: flex;
    flex-direction: column;
    padding: 20px 30px;
    box-shadow: 0px 2px 2px rgba(61, 61, 61, 0.25);
    border-radius: 6px;
    gap: 20px;
  }

  .form-check-input:checked{
    background-color: #4DC860 !important;
  }

  .cart-list-table-content-sellvana h4{
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 15px;
    color: #525252;
  }

  .column-sub{
    justify-self: center;
  }
  
  .cart-list-table-content-sellvana{
    display: grid;
    grid-template-columns: 0.8fr 5fr 2fr 2fr 2fr 1fr;
    grid-gap: 10px;
    align-items: center;
    padding: 20px 30px;
    box-shadow: 0px 2px 2px rgba(61, 61, 61, 0.25);
    border-radius: 6px;
  }

  .cart-title-sellvana{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 24px;
    color: #262626;
    padding: 30px 0px;
  }

  .breadcrumb-sellvana{
    padding-top:40px;
  }

  .cart-main-content-sellvana{
    width: 1200px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
  }
</style>
</html>
