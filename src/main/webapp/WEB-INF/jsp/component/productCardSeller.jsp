<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String productName = request.getParameter("productName");
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
<div class="product-card-sellvana">
  <div class="product-image-card-wrapper-sellvana">
    <img src="/app/img/productSampleImage1.png"/>
    <div class="seller-product-manage-container-sellvana">
      <button id="button-<%=productName%>" class="seller-button-sellvana" ><i class="fa-solid fa-ellipsis"></i></button>
      <span id="menu-<%=productName%>" class="seller-button-menu-container-sellvana">
        <button>
          <i class="fa-solid fa-eye"></i>
          <h5>View Product</h5>
        </button>
        <button>
          <i class="fa-solid fa-pen"></i>
          <h5>Edit Product Information</h5>
        </button>
        <button>
          <i class="fa-solid fa-trash red"></i>
          <h5 class="red">Remove Product</h5>
        </button>
      </span>
    </div>
  </div>
  <div class="product-content-card-sellvana">
    <div>
      <h3 class="product-title-card-sellvana">Vintage Typewriter</h3>
      <h4 class="product-price-card-sellvana">RM 23.50</h4>
      <h5 class="product-description-card-sellvana">A mechanical writing device that was popularized during the late 19th century and throughout the 20th century. It uses a set of keys that, when pressed, strike a ribbon with ink to transfer letters and symbols onto paper. Vintage typewriters were often made of durable metal and had intricate designs, ranging from sleek and modern to ornate and decorative. These machines were widely used for personal and professional communication, such as letter writing, document preparation, and journalism, before they were gradually replaced by electronic word processors and computers. Today, vintage typewriters are often sought after by collectors, artists, and writers for their aesthetic appeal, nostalgia, and mechanical intricacy.</h5>
    </div>
    <div class="product-footer-card-sellvana">
      <div class="product-card-rating-sellvana">
        <jsp:include page="/WEB-INF/jsp/component/productRating.jsp">
          <jsp:param name="ratingValue" value="3.4"/>
          <jsp:param name="productID" value="abc"/>
        </jsp:include>
        <h4 class="product-rating-value-card-sellvana">3.6 (200)</h4>
      </div>
    </div>
  </div>
</div>
<script>
  $('.seller-button-menu-container-sellvana').css('display','none');

  $('#button-<%=productName%>').click(function (){
    var menu = $('#menu-<%=productName%>')
    if (menu.css('display') == 'none'){
      $('.seller-button-menu-container-sellvana').css('display','none');
      $('.seller-button-sellvana').css('background-color','white')
      $(this).css('background-color','#e0e0e0')
      $('#menu-<%=productName%>').css('display','flex');
    }else{
      $(this).css('background-color','white')
      $('#menu-<%=productName%>').css('display','none');
    }
  })
</script>
<style>
  .seller-button-menu-container-sellvana .red{
    color: #ff0e4d;
  }

  .seller-button-menu-container-sellvana button i{
    color: #19191D;
  }

  .seller-button-menu-container-sellvana button h5{
    font-family: 'Inter';
    font-style: normal;
    font-weight: 400;
    font-size: 14.6923px;
    color: #19191D;
    white-space: nowrap;
  }

  .seller-button-menu-container-sellvana button:hover{
    background-color: #e0e0e0;
  }

  .seller-button-menu-container-sellvana button{
    background-color: transparent;
    outline: none;
    border:none;
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 15px;
    padding: 15px;
    transition: all 0.2s ease-in;
    cursor:pointer;
  }

  .seller-button-menu-container-sellvana{
    position: absolute;
    display: flex;
    flex-direction: column;
    border-radius: 7px;
    background-color: white;
    box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
    margin-top: 8px;
    margin-left: -200px;
    overflow: hidden;
  }

  .seller-product-manage-container-sellvana{
    position: absolute;
    margin-left: 310px;
    margin-top: -100px;
  }

  .seller-button-sellvana i{
    color: #282828;
  }

  .seller-button-sellvana:hover{
    background-color: #d5d5d5;

  }

  .seller-button-sellvana{
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 9px 10px;
    box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
    background-color: white;
    outline: none;
    border:none;
    border-radius: 50%;
    transition: all 0.2s ease-in;
    cursor: pointer;
  }

  .product-footer-card-sellvana{
    display: flex;
    flex-direction: column;
    width: 100%;
    gap:20px;
  }

  .product-rating-value-card-sellvana{
    font-family: 'Inter';
    font-style: normal;
    font-weight: 400;
    font-size: 15px;
    color: rgba(63, 63, 63, 0.87);
  }

  .product-card-rating-sellvana{
    display: flex;
    flex-direction: row;
    gap:8px;
    align-items: center;
    align-self: flex-start;
  }

  *{
    padding: 0px;
    margin:0px;
  }

  .product-content-card-sellvana{
    display: flex;
    flex-direction: column;
    padding: 15px 32px 20px;
    justify-content: space-between;
    align-items: flex-start;
    height: 100%;
    height: 100%;
  }

  .product-image-card-wrapper-sellvana img{
    width: 100%;
    height: 100%;
    object-fit: contain;
  }

  .product-image-card-wrapper-sellvana{
    height: 165px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom: 1px solid #F6F6F9;
  }

  .product-card-sellvana{
    width: 100%;
    height: 475px;
    background: #FFFFFF;
    border: 0.5px solid #EAEAEF;
    box-shadow: 0px 1px 4px rgba(26, 26, 67, 0.1);
    border-radius: 7px;
    display: flex;
    flex-direction: column;
    align-items: center;
    overflow: hidden;
  }

  .product-title-card-sellvana{
    display: -webkit-box;
    -webkit-box-orient: vertical;
    overflow: hidden;
    font-family: 'Inter';
    font-style: normal;
    font-weight: 400;
    font-size: 16.6923px;
    color: #19191D;
    -webkit-line-clamp: 3;
    line-clamp: 3;
    max-height: 77px;
    text-overflow: ellipsis;
  }

  .product-price-card-sellvana{
    font-family: 'Inter';
    font-style: normal;
    font-weight: 700;
    font-size: 25.0385px;
    color: rgba(0, 0, 0, 0.87);
    margin: 7px 0px 9px;
  }

  .product-description-card-sellvana{
    display: -webkit-box;
    -webkit-box-orient: vertical;
    overflow: hidden;
    font-family: 'Inter';
    font-style: normal;
    font-weight: 400;
    font-size: 14.6058px;
    color: #787885;
    margin-bottom: 10px;
    -webkit-line-clamp: 7;
    line-clamp: 7;
  }
</style>