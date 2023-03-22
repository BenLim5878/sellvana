<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/app/css/productDetail.css">
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
        <jsp:param name="hasInitialShadow" value="true"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp"></jsp:include>
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
            <div class="product-detail-card-wrapper-sellvana">
                <div class="product-detail-card-header-sellvana">
                    <div>
                        <div class="product-detail-card-header-price-sellvana">
                            <h2 id="product-price-tag">RM 250 </h2>
                            <h3>/ per item</h3>
                        </div>
                        <div class="product-detail-card-header-rating-sellvana">
                            <i id="rating-star" class="fa fa-star"></i>
                            <h5>3.4 . 200 reviews</h5>
                        </div>
                    </div>
                    <img class="seller-avatar-img-sellvana" src="/app/img/avatar-img.png" />
                </div>
                <div class="product-detail-input-content-sellvana">
                    <div class="product-detail-input-sellvana">
                        <label for="product-type">Select Product Type:</label>
                        <jsp:include page="/WEB-INF/jsp/component/selectBox.jsp">
                            <jsp:param name="selectBoxFontSize" value="16px"/>
                        </jsp:include>
                    </div>
                    <div class="product-detail-input-sellvana">
                        <label for="product-quantity">Quantity</label>
                        <input id="product-quantity" name="product-quantity" type="number">
                    </div>
                </div>
                <button class="add-to-cart-button-sellvana">
                    Add to cart
                </button>
                <div class="total-value-product-content-sellvana">
                    <h4>Total</h4>
                    <h5 id="product-subtotal-price">RM 0 (approx.)</h5>
                </div>
            </div>
        </div>
        <div class="product-detail-description-sellvana">
            <div class="product-detail-description-header-sellvana">
            <h2>Product Description</h2>
            <div class="product-detail-description-created-by-container-sellvana">
                <h3 class="product-detail-description-created-by-sellvana">Created by</h3>
                <div class="product-detail-description-seller-container-sellvana">
                    <img src="/app/img/avatar-img.png">
                    <h3>Lazar Nikolov</h3>
                </div>
            </div>
            </div>
            <h3 class="product-detail-description-content-sellvana">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

                The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</h3>
        </div>
        <div class="product-detail-rating-sellvana">
                <div class="product-detail-rating-header-sellvana">
                    <i class="fa fa-star" style="color: #4C4C4C; font-size: 16px"></i>
                    <h4 class="product-detail-rating-header-description-sellvana">3.4 . 200 reviews</h4>
                </div>
                <div class="product-detail-rating-content-sellvana">
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
                            The tiny bungalow offers a simple, compact space close to the beach, restaurants and shopping. Since there are bars in the area some nights you will hear the beat of distant music all...
                        </h3>
                    </div>
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
                            The tiny bungalow offers a simple, compact space close to the beach, restaurants and shopping. Since there are bars in the area some nights you will hear the beat of distant music all...
                        </h3>
                    </div>
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
                            The tiny bungalow offers a simple, compact space close to the beach, restaurants and shopping. Since there are bars in the area some nights you will hear the beat of distant music all...
                        </h3>
                    </div>
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
                            The tiny bungalow offers a simple, compact space close to the beach, restaurants and shopping. Since there are bars in the area some nights you will hear the beat of distant music all...
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    function calTotalPrice(){
        var quantity = $('#product-quantity').val();
        var priceWithCurrency = $("#product-price-tag").html();
        var price = parseFloat(priceWithCurrency.replace(/[^0-9.-]+/g,""));
        $("#product-subtotal-price").html('RM '+(price * quantity).toFixed(2) + ' (ex. delivery fee)');
    }

    $(document).ready(()=>{
        $('#product-quantity').val(1);
        calTotalPrice()
        $("#product-quantity").on("input", function() {
            var inputVal = $(this).val();

            if (inputVal.length > 1 && inputVal.charAt(0) == "0") {
                $(this).val(parseInt(inputVal));
            }

            if (inputVal == "" || inputVal < 0 ) {
                $(this).val(0)
            } else if (inputVal > 10){
                $(this).val(10)
            }
            calTotalPrice()
            if (inputVal < 1){
                $('.add-to-cart-button-sellvana').prop('disabled',true);
                $('.add-to-cart-button-sellvana').addClass('add-to-cart-button-sellvana-disabled')
            }else {
                $('.add-to-cart-button-sellvana').prop('disabled',false);
                $('.add-to-cart-button-sellvana').removeClass('add-to-cart-button-sellvana-disabled')
            }
        });

        $("#product-quantity").on("keypress keydown", function(event) {
            // Allow: backspace, delete, tab, escape, and enter
            if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 ||
                // Allow: Ctrl+A
                (event.keyCode == 65 && event.ctrlKey === true) ||
                // Allow: home, end, left, right
                (event.keyCode >= 35 && event.keyCode <= 39)) {
                // let it happen, don't do anything
                return;
            }
            else {
                // Ensure that it is a number and stop the keypress
                if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
                    event.preventDefault();
                }
            }
        });
    })
</script>
</html>
