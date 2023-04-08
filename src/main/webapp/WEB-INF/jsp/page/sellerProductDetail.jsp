<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
    String appAccentLight = application.getInitParameter("appAccentLight");
%>
<html>
<html>
<head>
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="/app/js/utility.js"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/sellerNavBar.jsp">
        <jsp:param name="menuLocation" value="product"/>
    </jsp:include>
    <div class="seller-productDetail-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/sellerBreadcrumb.jsp">
                <jsp:param name="crumb" value="Product"/>
                <jsp:param name="link" value="/app/seller/product"/>
                <jsp:param name="crumb" value="Detail"/>
            </jsp:include>
        </div>
        <div class="product-detail-wrapper">
            <div class="product-detail-header-sellvana">
                <h1 class="product-detail-header-title-sellvana">Shaver For Men Mesin Gunting Rambut GM-6005/GM-6008 Professional Hair & Beard Trimmer-Premium Quality</h1>
                <div class="product-detail-header-content-sellvana">
                    <div class="product-detail-header-rating-content-sellvana">
                        <jsp:include page="/WEB-INF/jsp/component/productRating.jsp">
                            <jsp:param name="ratingValue" value="4"/>
                            <jsp:param name="ratingSize" value="16px"/>
                            <jsp:param name="ratingName" value="abc"/>
                        </jsp:include>
                        <h4>3.4 . 200 reviews</h4>
                    </div>
                    <div class="product-detail-header-location-content-sellvana">
                        <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" viewBox="0 0 34 34" fill="none">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.20933 6.84813C11.3228 4.73468 14.1892 3.54736 17.1781 3.54736C20.1669 3.54736 23.0334 4.73468 25.1468 6.84813C27.2603 8.96158 28.4476 11.828 28.4476 14.8169C28.4476 17.8057 27.2603 20.6722 25.1468 22.7856L17.1781 30.7544L9.20933 22.7856C8.16279 21.7392 7.33262 20.4969 6.76623 19.1296C6.19984 17.7623 5.90833 16.2968 5.90833 14.8169C5.90833 13.3369 6.19984 11.8715 6.76623 10.5042C7.33262 9.13689 8.16279 7.89456 9.20933 6.84813ZM17.1781 18.0366C18.032 18.0366 18.8509 17.6974 19.4548 17.0936C20.0586 16.4897 20.3978 15.6708 20.3978 14.8169C20.3978 13.963 20.0586 13.144 19.4548 12.5402C18.8509 11.9364 18.032 11.5972 17.1781 11.5972C16.3242 11.5972 15.5052 11.9364 14.9014 12.5402C14.2976 13.144 13.9584 13.963 13.9584 14.8169C13.9584 15.6708 14.2976 16.4897 14.9014 17.0936C15.5052 17.6974 16.3242 18.0366 17.1781 18.0366Z" fill="#718096"/>
                        </svg>
                        <h4>Kuala Lumpur</h4>
                    </div>
                </div>
            </div>
            <div class="product-detail-content-sellvana">
                <img class="product-detail-image-sellvana" src="/app/img/productSampleImage1.png">
                <section class="product-detail-card-wrapper-sellvana">
                    <div class="product-detail-stat-container-sellvana">
                        <div class="stat-header">
                            <i class="fa-solid fa-gauge-simple"></i>
                            <h4>Average Price:</h4>
                        </div>
                        <h5>RM 350.00</h5>
                    </div>
                    <div class="product-manage-button-container-sellvana">
                        <button class="edit-button">
                            <i class="fa-solid fa-pen"></i>
                            <h4>Edit Product Information</h4>
                        </button>
                        <button class="remove-button">
                            <i class="fa-solid fa-trash"></i>
                            <h4>Remove Product</h4>
                        </button>
                    </div>
                </section>
            </div>
            <div class="product-detail-description-sellvana">
                <div class="section-header">
                    <i class="fa-solid fa-circle-chevron-down"></i>
                    <h3 class="description-header-title">Description</h3>
                </div>
                <div class="description-content-container-sellvana">
                    <h3 class="description-content">
                        Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                    </h3>
                </div>
            </div>
            <div class="product-detail-variation-sellvana">
                <div class="variation-header">
                    <i class="fa-solid fa-circle-chevron-down"></i>
                    <h3 class="variation-header-title">Variation</h3>
                </div>
                <section class="variation-table-sellvana">
                    <div class="variation-table-content header">
                        <h4 class="column-main">Number</h4>
                        <h4 class="column-main">Title</h4>
                        <h4 class="column-sub">Price</h4>
                    </div>
                    <div class="seperator-thick"></div>
                    <div>
                        <div class="variation-table-content content">
                            <h4 class="column-main">1</h4>
                            <h4 class="column-main">Red <span class="default-label">Default</span></h4>
                            <h4 class="column-sub">RM 888.88</h4>
                        </div>
                        <div class="variation-table-content content">
                            <h4 class="column-main">2</h4>
                            <h4 class="column-main">Black</h4>
                            <h4 class="column-sub">RM 777.77</h4>
                        </div>
                        <div class="variation-table-content content">
                            <h4 class="column-main">3</h4>
                            <h4 class="column-main">Yellow</h4>
                            <h4 class="column-sub">RM 666.66</h4>
                        </div>
                    </div>
                </section>
            </div>
            <div class="product-detail-rating-sellvana">
                <div class="section-header">
                    <i class="fa-solid fa-circle-chevron-down"></i>
                    <h3 class="description-header-title">Rating</h3>
                </div>
                <section class="rating-table-sellvana">
                    <div class="rating-table-content header">
                        <h4 class="column-sub">Customer</h4>
                        <h4 class="column-sub">Rating</h4>
                        <h4 class="column-main">Review</h4>
                        <h4 class="column-sub">Timestamp</h4>
                    </div>
                    <div class="seperator-thick"></div>
                    <div>
                        <div class="rating-table-content content">
                            <div class="column-sub user">
                                <img src="/app/img/avatar-img.png">
                                <h4>Alan Walker</h4>
                            </div>
                            <div class="column-sub">
                                <jsp:include page="/WEB-INF/jsp/component/productRating.jsp">
                                    <jsp:param name="ratingValue" value="3"/>
                                    <jsp:param name="ratingName" value="abc123"/>
                                    <jsp:param name="ratingSize" value="15px"/>
                                </jsp:include>
                            </div>
                            <h4 class="column-main">
                                Very de good this product. 100% recommended!
                            </h4>
                            <h4 class="column-sub">
                                26 February 2022 10:00:01
                            </h4>
                            <button class="column-sub reply-button">
                                Reply
                            </button>
                        </div>
                        <div class="rating-table-content content">
                            <div class="column-sub user">
                                <img src="/app/img/avatar-img.png">
                                <h4>Alan Walker</h4>
                            </div>
                            <div class="column-sub">
                                <jsp:include page="/WEB-INF/jsp/component/productRating.jsp">
                                    <jsp:param name="ratingValue" value="3"/>
                                    <jsp:param name="ratingName" value="abc123"/>
                                    <jsp:param name="ratingSize" value="15px"/>
                                </jsp:include>
                            </div>
                            <h4 class="column-main">
                                Very de good this product. 100% recommended!
                            </h4>
                            <h4 class="column-sub">
                                26 February 2022 10:00:01
                            </h4>
                            <button class="column-sub view-button">
                                View
                            </button>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</body>
<style>
    .seller-productDetail-main-content-sellvana{
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
    .remove-button h4{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 13.5px;
        color: white;
    }

    .remove-button i{
        font-size: 13.5px;
        color: white;
    }

    .remove-button:hover{
        background-color: #d20b40;
    }

    .remove-button{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
        padding: 10px 20px;
        background-color: #ff0e4d;
        outline: none;
        border:none;
        border-radius: 5px;
        box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
        transition: all 0.2s ease-in;
        cursor: pointer;
    }

    .edit-button h4{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 13.5px;
        color: white;
    }

    .edit-button i{
        font-size: 13.5px;
        color: white;
    }

    .edit-button:hover{
        background-color: <%=appAccentHover%>;
    }

    .edit-button{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
        padding: 10px 20px;
        background-color: <%=appAccent%>;
        outline: none;
        border:none;
        border-radius: 5px;
        box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
        transition: all 0.2s ease-in;
        cursor: pointer;
    }


    .product-detail-card-wrapper-sellvana .product-manage-button-container-sellvana{
        display: flex;
        flex-direction: row;
        gap: 20px;
        align-items: center;
    }

    .product-detail-rating-sellvana{
        margin-top: 40px;
    }

    .variation-header i{
        font-size: 20px;
        color: <%=appAccent%>
    }

    .variation-header{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
    }

    .variation-header-title{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 20px;
        color: #2D3748;
    }

    .column-main{
        align-items: center;
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

    .description-content-container-sellvana{
        margin-top: 20px;
        padding: 20px;
        background-color: white;
        border-radius: 6px;
        width: 1000px;
        box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
        margin-bottom: 40px;
    }

    .description-content-container-sellvana .description-content{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 16.5px;
        line-height: 30px;
        color: #2D3748;
    }

    .section-header i{
        font-size: 20px;
        color: <%=appAccent%>
    }

    .section-header{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
    }

    .description-header-title{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 20px;
        color: #2D3748;
    }

    .product-detail-stat-container-sellvana h5{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 18px;
        color: <%=appAccent%>;
    }

    .product-detail-stat-container-sellvana .stat-header h4{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 16px;
        color: #2D3748;
    }

    .product-detail-stat-container-sellvana .stat-header i{
        font-size: 16px;
        color: #2D3748;
    }

    .product-detail-stat-container-sellvana .stat-header{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
    }

    .product-detail-stat-container-sellvana{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        gap: 10px;
    }

    .product-detail-card-wrapper-sellvana{
        display: flex;
        flex-direction: column;
        gap: 30px;
    }

    .product-detail-content-sellvana{
        margin-top: 40px;
        display: flex;
        flex-direction: row;
        align-items: flex-start;
        gap: 40px;
        padding-bottom: 60px;
    }

    .product-detail-image-sellvana{
        border-radius: 10px;
        box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
        height: 150px;
        object-fit: contain;
    }

    .product-detail-wrapper{
        margin-top: 40px;
        display: flex;
        flex-direction: column;
        height: auto;
        padding-bottom: 100px;
    }

    .product-detail-header-location-content-sellvana h4{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 16px;
        color: #2D3748;
    }

    .product-detail-header-location-content-sellvana{
        display: flex;
        flex-direction: row;
        gap:12px;
    }

    .product-detail-header-rating-content-sellvana h4{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 16px;
        color: #2D3748;
        text-align: center;
        margin-left: 15px;
    }

    .product-detail-header-sellvana{
        display: flex;
        flex-direction: column;
        gap:11px;
    }

    .product-detail-header-title-sellvana{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 600;
        font-size: 21px;
        color: #2D3748;
        line-height: 30px;
    }

    .product-detail-header-content-sellvana{
        display: flex;
        flex-display: row;
        gap: 20px;
    }

    .product-detail-header-content-sellvana div{
        display: flex;
        flex-display: row;
        align-items: center;
    }
</style>
<style>
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
        grid-template-columns: 1fr 2fr 1fr;
        grid-gap: 10px;
        align-items: center;
        padding: 20px 30px;
        width: 100%;
    }

    .variation-table-sellvana{
        border-radius: 6px;
        background-color: white;
        width: 500px;
        box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
        margin-top: 20px;
    }
</style>
<style>
    .view-button:hover{
        transform: scale(1.05);
    }

    .view-button{
        font-family: 'Inter';
        font-weight: 400;
        font-size: 13px;
        background-color: gray;
        color:white;
        padding:8px 10px;
        outline: none;
        border: none;
        border-radius: 5px;
        box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
        cursor: pointer;
        transition: all 0.2s ease-in;
    }

    .reply-button:hover{
        transform: scale(1.05);
    }

    .reply-button{
        font-family: 'Inter';
        font-weight: 400;
        font-size: 13px;
        background-color: <%=appAccent%>;
        color:white;
        padding:8px 10px;
        outline: none;
        border: none;
        border-radius: 5px;
        box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
        cursor: pointer;
        transition: all 0.2s ease-in;
    }

    .rating-table-content .column-sub.user{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
    }

    .rating-table-content .column-sub img{
        object-fit: contain;
        width: 25px;
        filter: drop-shadow(0px 1px 2px rgba(0, 0, 0, 0.25));
        border-radius: 50%;
    }

    .rating-table-sellvana .seperator-thick{
        border: 1.1px solid #f1f1f1;
    }

    .rating-table-content.content h4{
        font-family: 'Inter';
        font-weight: 500;
        font-size: 15.5px;
        color: #5d5d5d;
    }

    .rating-table-content.header h4{
        font-family: 'Inter';
        font-weight: 600;
        font-size: 16px;
        color: #2D3748;
    }

    .rating-table-content .column-main{
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
    }

    .rating-table-content .column-sub{
        justify-self: center;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
    }

    .rating-table-content{
        display: grid;
        grid-template-columns: 1.5fr 2fr 5fr 2fr 2fr;
        grid-gap: 30px;
        align-items: center;
        padding: 20px 30px;
        width: 100%;
    }

    .rating-table-sellvana{
        border-radius: 6px;
        background-color: white;
        width: 1200px;
        box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
        margin-top: 20px;
    }
</style>
</html>
