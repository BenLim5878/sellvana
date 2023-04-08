<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
    String appAccentLight = application.getInitParameter("appAccentLight");
%>
<html>
<head>
    <title>Review Feedback</title>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/sellerNavBar.jsp">
        <jsp:param name="menuLocation" value="product"/>
    </jsp:include>
    <div class="reviewFeedback-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/sellerBreadcrumb.jsp">
                <jsp:param name="crumb" value="Product"/>
                <jsp:param name="link" value="/app/seller/product"/>
                <jsp:param name="crumb" value="Detail"/>
                <jsp:param name="link" value="/app/seller/product/detail"/>
                <jsp:param name="crumb" value="Feedback"/>
            </jsp:include>
        </div>
        <h1 class="reviewFeedback-page-title-sellvana">Review Feedback</h1>
        <div class="order-list-product-sellvana">
            <div class="order-list-product-container-sellvana">
                <img src="/app/img/productSampleImage1.png">
                <div class="order-list-product-description-container-sellvana">
                    <h4>adidas Unisex D.O.N. Issue #3 Basketball Shoe (GW2945) Sport Plane fadsfsdsdfasdft</h4>
                    <h4 class="order-list-product-total-price-sellvana">RM 249.90</h4>
                </div>
            </div>
        </div>
        <div class="feedback-id-container">
            <i class="fa-solid fa-circle-info"></i>
            <h6>Feedback #023432442</h6>
        </div>
        <section class="rating-container">
            <div class="product-rating-card-sellvana">
                <%--Rating Head--%>
                <div class="product-rating-card-header-sellvana">
                    <div class="product-rating-card-header-left-sellvana">
                        <img src="/app/img/avatar-img.png">
                        <div>
                            <h4 class="product-rating-card-header-username-sellvana">Sheila</h4>
                            <h4 class="product-rating-card-header-createdDate-sellvana">February 2020</h4>
                        </div>
                    </div>
                    <div class="product-rating-card-header-rating-star-sellvana">
                        <jsp:include page="/WEB-INF/jsp/component/productRating.jsp">
                            <jsp:param name="ratingValue" value="4"/>
                            <jsp:param name="ratingName" value="sheila"/>
                            <jsp:param name="ratingSize" value="16px"/>
                        </jsp:include>
                    </div>
                </div>
                <%--Rating Content--%>
                <h3 class="product-rating-card-content-sellvana">
                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                </h3>
            </div>
        </section>
        <div class="text-area-container-sellvana">
            <textarea class="review-feedback-text-area" placeholder="Type something here..."></textarea>
            <button>Submit Feedback</button>
        </div>
    </div>
</body>
<style>
    .text-area-container-sellvana button:hover{
        background-color: <%=appAccentHover%>;
    }

    .text-area-container-sellvana button{
        width: 200px;
        align-self: flex-end;
        padding: 11.5px 0px;
        background-color: <%=appAccent%>;
        color: white;
        outline: none;
        border: none;
        border-radius: 6px;
        font-family: Inter;
        font-weight: 500;
        font-size: 15px;
        cursor: pointer;
        transition: all 0.2s ease-in;
    }

    .text-area-container-sellvana{
        position: fixed;
        right: 300px;
        top: 225px;
        display: flex;
        flex-direction: column;
        gap: 30px;
    }

    .review-feedback-text-area{
        outline: none;
        border: none;
        border-radius: 8px;
        padding: 30px;
        width: 550px;
        height: 450px;
        font-family: Inter;
        font-weight: 400;
        font-size: 16.5px;
        line-height: 22px;
        resize: none;
        border: 1px solid #eaeaea;
    }

    .rating-container{
        display: flex;
        flex-direction: row;
        margin-top: 40px;
        width: 1000px;
        gap: 100px;
    }

    .feedback-id-container h6{
        font-family: 'Inter';
        font-weight: 400;
        font-size: 15px;
        color: #a1a1a1;
    }

    .feedback-id-container i{
        color: #a1a1a1;
    }

    .feedback-id-container{
        display: flex;
        flex-direction: row;
        gap: 10px;
        align-items: center;
        margin-top: 30px;
    }

    .reviewFeedback-page-title-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 600;
        font-size: 30px;
        color: #333333;
        margin-top: 30px;
    }

    .reviewFeedback-main-content-sellvana{
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
        width: 700px;
        backdrop-filter: blur(8.2px);
        -webkit-backdrop-filter: blur(8.2px);
        background: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
        margin-top: 30px;
    }

    .order-list-product-description-container-sellvana h4{
        font-family:Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 15.5px;
        color: #252525;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .order-list-product-description-container-sellvana{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        gap: 5px;
        width: 520px;
        overflow: hidden;
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
<style>
    .product-rating-card-sellvana{
        width: 500px;
    }

    .product-rating-card-header-left-sellvana div{
        display:flex;
        flex-direction: column;
        gap: 2px;
    }

    .product-rating-card-header-username-sellvana{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 17.8925px;
        color: #222222;
    }

    .product-rating-card-header-createdDate-sellvana{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 15.406px;
        color: #717171;
    }

    .product-rating-card-header-left-sellvana img{
        width: 55px;
        height: 55px;
        object-fit: contain;
    }

    .product-rating-card-header-left-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 15px;
    }

    .product-rating-card-content-sellvana{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 16.8925px;
        color: #222222;
        line-height: 30px;
        margin-top:20px;
    }

    .product-rating-card-header-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        width: 100%;
    }
</style>
</html>
