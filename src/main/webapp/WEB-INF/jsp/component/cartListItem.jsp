<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
%>
<%
  String productName = request.getParameter("productName");
%>
<script src="/app/js/utility.js"></script>
<div class="cart-product-list-sellvana" id="cart-product-list-<%=productName%>">
  <h6 style="display: none" class="meta-cart-product-list-sellvana"><%=productName%></h6>
  <input type="checkbox" class="form-check-input" id="checkbox-product-<%=productName%>" name="product-tick" />
  <div class="cart-product-list-product-sellvana">
    <img src="/app/img/productSampleImage1.png">
    <div>
      <h4>adidas Unisex D.O.N. Issue #3 Basketball Shoe (GW2945) Sport Planet 8-3</h4>
      <h5>Type: GW2945,UK 9</h5>
    </div>
  </div>
  <h4 id="product-price-label-product-<%=productName%>" class="column-price column-sub">RM 222.22</h4>
  <div class="column-sub number-wrapper-sellvana">
    <button id="minus-button-product-<%=productName%>" class="minus-button">
      <i class="fa-solid fa-minus"></i>
    </button>
    <input id="quantity-input-product-<%=productName%>" class="quantity-input" type="text" value="1" disabled="disabled"/>
    <button id="plus-button-product-<%=productName%>" class="plus-button">
      <i class="fa-solid fa-plus"></i>
    </button>
  </div>
  <h4 id="total-label-product-<%=productName%>" class="column-sub">RM 0.00</h4>
  <button id="delete-button-product-<%=productName%>" class="column-sub">Delete</button>
</div>
<script>
  $('#delete-button-product-<%=productName%>').click(()=>{
      $('#cart-product-list-<%=productName%>').remove();
      updateTotalCartPrice();
      itemCartValidation();
  })

  $('#checkbox-product-<%=productName%>').change(()=>{
    updateTotalCartPrice();
  })

  function getTotalPrice(name){
    var inputName = '#quantity-input-product-'+name;
    var labelName = '#product-price-label-product-'+name;
    var quantity = $(inputName).val();
    var priceWithCurrency = $(labelName).html();
    var price = parseFloat(parsePriceLabel(priceWithCurrency));
    return (price*quantity);
  }

  function getTotalItem(name){
    return parseInt($("#quantity-input-product-"+name).val());
  }

  $(document).ready(()=>{
    function showTotalPrice(){
      $("#total-label-product-<%=productName%>").html('RM '+(getTotalPrice("<%=productName%>")).toFixed(2));
    }

    function validateButton(element){
      var quantity = parseInt($('#quantity-input-product-<%=productName%>').val())
      if (quantity <= 0){
        $(element).prop('disabled',true)
      } else if(quantity >= 10){
        $(element).prop('disabled',true)
      }else {
        $('#minus-button-product-<%=productName%>').prop('disabled',false)
        $('#plus-button-product-<%=productName%>').prop('disabled',false)
      }
    }

    showTotalPrice();

    $('#minus-button-product-<%=productName%>').click(function(){
      var quantity = parseInt($('#quantity-input-product-<%=productName%>').val())
      if (quantity > 0){
        $('#quantity-input-product-<%=productName%>').val(quantity-1)
      }
      validateButton(this)
      showTotalPrice();
      updateTotalCartPrice();
    })

    $('#plus-button-product-<%=productName%>').click(function(){
      var quantity = parseInt($('#quantity-input-product-<%=productName%>').val())
      if (quantity < 10){
        $('#quantity-input-product-<%=productName%>').val(quantity+1)
      }
      validateButton(this)
      showTotalPrice();
      updateTotalCartPrice();
    })
  }
  )
</script>
<style>
  #delete-button-product-<%=productName%>:hover{
    color: #a61338;
  }

  #delete-button-product-<%=productName%>{
    padding: 5px 8px;
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 14.5px;
    color: #ff265e;
    background-color: transparent;
    transition: all 0.2s ease-in;
  }

  #total-label-product-<%=productName%>{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 15.5px;
    color: #2c2c2c;
  }

  .number-wrapper-sellvana button:disabled{
    background-color: #b9b9b9;
    cursor: default;
  }

  .number-wrapper-sellvana button:disabled:hover{
    background-color: #b9b9b9;
  }

  .number-wrapper-sellvana button{
    width: 40px;
    padding: 7px 0px;
    transition: all 0.2s ease-in;
    background-color: <%=appAccent%>;
  }

  .number-wrapper-sellvana button:hover{
    background-color: <%=appAccentHover%>;
  }

  .number-wrapper-sellvana button i{
    font-size: 16.5px;
    color:white;
  }

  .number-wrapper-sellvana input{
    width: 40px;
    padding: 5px 0px;
    text-align: center;
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 16.5px;
    color: #2c2c2c;
    border:1px solid #d0d0d0;
    border-left: none !important;
    border-right: none !important;
    outline: none;
    text-align: center;
  }

  .number-wrapper-sellvana{
    display: flex;
    flex-direction: row;
    align-items: center;
  }

  .column-price{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 16.3801px;
    color: #2c2c2c;
  }

  .cart-product-list-product-sellvana div{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    gap:5px;
  }

  .cart-product-list-product-sellvana h5{
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 15.3801px;
    color: #2c2c2c;
    /*Maximum Text Line*/
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    line-clamp: 2;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }

  .cart-product-list-product-sellvana h4{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 17.3801px;
    color: #2c2c2c;
    /*Maximum Text Line*/
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    line-clamp: 2;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }

  .cart-product-list-product-sellvana img{
    width: 125px;
    height: 125px;
    object-fit: contain;
  }

  .cart-product-list-product-sellvana{
    display: flex;
    flex-direction: row;
    align-items: flex-start;
    gap:20px;
  }

  .cart-product-list-sellvana{
    display: grid;
    grid-template-columns: 0.8fr 5fr 2fr 2fr 2fr 1fr;
    align-items: center;
    grid-gap:10px;
  }

  #minus-button-product-<%=productName%>{
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
  }

  #plus-button-product-<%=productName%>{
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
  }
</style>
