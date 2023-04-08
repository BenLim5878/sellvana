<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
  String appAccentLight = application.getInitParameter("appAccentLight");
%>
<%
  String orderName = request.getParameter("orderName");
  String orderID = request.getParameter("orderID");
  String orderPrice = request.getParameter("orderPrice");
  String orderQuantity = request.getParameter("orderQuantity");
  String orderCreationDate = request.getParameter("orderCreationDate");
  String orderStatus = request.getParameter("orderStatus");
%>
<div id="order-list-<%=orderName%>" class="order-table-content content">
  <h4 class="column-sub">#<%=orderID%></h4>
  <div class="column-main order-list-product-container-sellvana">
    <img src="/app/img/productSampleImage1.png">
    <div class="order-list-product-description-container-sellvana">
      <h4 class="product-name">adidas Unisex D.O.N. Issue #3 Basketball Shoe (GW2945) Sport Plane</h4>
      <h4 class="product-variation">Type: GW2945,UK 9</h4>
      <h4 class="order-list-product-total-price-sellvana"><%=orderPrice%></h4>
    </div>
  </div>
  <h4 class="column-sub"><%=orderQuantity%></h4>
  <div class="column-sub user">
    <img src="/app/img/avatar-img.png">
    <h4>Alan Walker</h4>
  </div>
  <h4><%=orderCreationDate%></h4>
  <div class="column-sub">
    <h4 id="pending-status-<%=orderName%>" class="pending-status">Pending</h4>
    <h4 id="confirm-status-<%=orderName%>" class="confirm-status">Confirmed</h4>
    <h4 id="cancel-status-<%=orderName%>" class="cancel-status">Cancelled</h4>
  </div>
  <div class="column-sub">
    <button id="approve-button-<%=orderName%>" class="approve-button">Approve</button>
  </div>
</div>
<script>
  var orderStatus = "<%=orderStatus%>";

  function refreshOrderList(){
    switch (orderStatus){
      case "Pending":
        $('#pending-status-<%=orderName%>').css('display','flex')
        $('#confirm-status-<%=orderName%>').css('display','none')
        $('#cancel-status-<%=orderName%>').css('display','none')
        $('#approve-button-<%=orderName%>').css('display','block')
        break;
      case "Confirmed":
        $('#pending-status-<%=orderName%>').css('display','none')
        $('#confirm-status-<%=orderName%>').css('display','flex')
        $('#cancel-status-<%=orderName%>').css('display','none')
        $('#approve-button-<%=orderName%>').css('display','none')
        break;
      case "Cancelled":
        $('#pending-status-<%=orderName%>').css('display','none')
        $('#confirm-status-<%=orderName%>').css('display','none')
        $('#cancel-status-<%=orderName%>').css('display','flex')
        $('#approve-button-<%=orderName%>').css('display','none')
        break;
    }
  }

  refreshOrderList()
</script>
<style>
  .order-table-content.content{
    background-color: white;
    transition: all 0.2s ease-in;
    cursor: pointer;
  }

  .order-table-content.content:hover{
    background-color: #eeeeee;
  }

  .cancel-status{
    padding: 5px 10px;
    background-color: #f8d9e1;
    color: #f30b4f !important;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .confirm-status{
    padding: 5px 10px;
    background-color: #d4f5e6;
    color: #03b967 !important;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .pending-status{
    padding: 5px 10px;
    background-color: <%=appAccentLight%>;
    color: <%=appAccent%> !important;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .cancel-button:hover{
    background-color: #c54463;
  }

  .cancel-button{
    background-color: #ff3971;
  }

  .approve-button:hover{
    background-color: <%=appAccentHover%>;
  }

  .approve-button{
    background-color: <%=appAccent%>;
  }

  .column-sub button{
    padding: 10px 20px;
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 13.5px;
    border-radius: 5px;
    box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
    color:white;
    transition: all 0.2s ease-in;
  }

  .column-sub img{
    object-fit: contain;
    width: 30px;
    filter: drop-shadow(0px 1px 2px rgba(0, 0, 0, 0.25));
    border-radius: 50%;
  }

  .column-sub.user{
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 10px;
  }

  .order-list-product-description-container-sellvana .product-variation{
    color:grey !important;
    font-size: 14.5px !important;
  }

  .order-list-product-description-container-sellvana .product-name{
    font-weight: 500 !important;
    font-size: 16.5px !important;
  }

  .order-list-product-description-container-sellvana h4{
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 15.5px;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  .order-list-product-description-container-sellvana{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    gap: 5px;
    overflow: hidden;
    width: 300px;
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
    color: <%=appAccent%> !important;
  }
</style>