<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
    <title>Seller</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
        <jsp:param name="hasInitialShadow" value="true"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp">
        <jsp:param name="menuLocation" value="none"/>
    </jsp:include>
    <div class="seller-main-content">
        <div class="product-list-container-sellvana">
            <h2 class="product-list-title-sellvana">By iBeli Online (23 Products)</h2>
            <div class="product-list-content-container-sellvana">
                <jsp:include page="/WEB-INF/jsp/component/productCard.jsp"></jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/productCard.jsp"></jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/productCard.jsp"></jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/productCard.jsp"></jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/productCard.jsp"></jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/productCard.jsp"></jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/productCard.jsp"></jsp:include>
                <jsp:include page="/WEB-INF/jsp/component/productCard.jsp"></jsp:include>
            </div>
        </div>
        <div class="seller-detail-container-sellvana">
            <div class="seller-detail-card-sellvana">
                <img src="/app/img/avatar-img.png">
                <div>
                    <h3>iBeli Online</h3>
                    <h5>Joined on 12 December 2021</h5>
                </div>
            </div>
            <div id="seller-detail-seperator-sellvana"></div>
            <div class="seller-statistic-container-sellvana">
                <div class="seller-statistic-container-row-sellvana">
                    <div class="seller-statistic-list-sellvana">
                        <div class="seller-statistic-label-container-sellvana">
                            <i class="fa-solid fa-box"></i>
                            <h4>Products: </h4>
                        </div>
                        <h5 class="seller-statistic-value-sellvana">100</h5>
                    </div>
                    <div class="seller-statistic-list-sellvana">
                        <div class="seller-statistic-label-container-sellvana">
                            <i class="fa-solid fa-calendar"></i>
                            <h4>Joined: </h4>
                        </div>
                        <h5 class="seller-statistic-value-sellvana">5 months ago</h5>
                    </div>
                </div>
                <div class="seller-statistic-list-sellvana">
                    <div class="seller-statistic-label-container-sellvana">
                        <i class="fa-solid fa-star"></i>
                        <h4>Average Rating: </h4>
                    </div>
                    <h5 class="seller-statistic-value-sellvana">3.5</h5>
                </div>
                <div class="seller-statistic-list-sellvana">
                    <div class="seller-statistic-label-container-sellvana">
                        <i class="fa-solid fa-envelope"></i>
                        <h4>Email: </h4>
                    </div>
                    <a href="mailto:limzhengwei1002@gmail.com">
                        <h5 class="seller-statistic-value-sellvana">limzhengwei1002@gmail.com</h5>
                    </a>
                </div>
                <div class="seller-statistic-list-sellvana">
                    <div class="seller-statistic-label-container-sellvana">
                        <i class="fa-solid fa-phone"></i>
                        <h4>Number: </h4>
                    </div>
                    <a href="tel:+601123777331">
                        <h5 class="seller-statistic-value-sellvana">+601123777331</h5>
                    </a>
                </div>
                <div id="seller-address-list" class="seller-statistic-list-sellvana">
                    <div class="seller-statistic-label-container-sellvana">
                        <i class="fa-solid fa-location-dot"></i>
                        <h4>Location: </h4>
                    </div>
                    <a href="">
                        <h5 class="seller-statistic-value-sellvana location">12, 11B Taman Sungai Kapar Indah, 42200 Klang, Selangor, Malaysia</h5>
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    var prevScrollpos = window.scrollY;
    var fixedDiv = $('.seller-detail-container-sellvana');

    window.addEventListener('scroll', function() {
        var currentScrollPos = window.scrollY;

        fixedDiv.animate({marginTop: 60+currentScrollPos+'px'},Math.log(Math.abs(currentScrollPos-prevScrollpos)))

        prevScrollpos = currentScrollPos;
    });

    $('.location').click(()=>{
        window.open('https://maps.google.com/?q='+"12, 11B Taman Sungai Kapar Indah, 42200 Klang, Selangor, Malaysia");
    })
</script>
<style>
    body{
        background-color: #FBFBFB;
    }

    .product-list-content-container-sellvana{
        display: grid !important;
        margin-top: 30px;
        grid-template-columns: repeat(3, 0.5fr);
        grid-row-gap:32px;
        grid-column-gap:30px;
        width: 920px;
        padding-bottom: 90px;
    }

    .product-list-title-sellvana{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 700;
        font-size: 26px;
        color: #32324D;
    }

    #seller-address-list{
        display: flex;
        flex-direction: column !important;
        align-items: flex-start !important;
    }

    .seller-statistic-list-sellvana a{
        color: <%=appAccent%>;
        transition: all 0.2s ease-in;
    }

    .seller-statistic-list-sellvana a:hover{
        color: <%=appAccentHover%>;
    }

    .seller-statistic-list-sellvana a:hover .seller-statistic-value-sellvana{
        color: <%=appAccentHover%>;
    }

    .seller-statistic-list-sellvana a .seller-statistic-value-sellvana{
        transition: all 0.2s ease-in;
        color: <%=appAccent%>
    }

    .location{
        display: flex;
        width: 338px;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
        line-height: 23px;
    }

    .seller-statistic-container-row-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        gap: 20px;
    }

    .seller-statistic-container-sellvana{
        display: flex;
        flex-direction: column;
        gap: 25px;
        justify-content: flex-start;
    }

    .seller-statistic-value-sellvana{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 15.5px;
        color: <%=appAccent%>;
    }

    .seller-statistic-label-container-sellvana h4{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 15.5px;
        color: #5d5d5d;
    }

    .seller-statistic-label-container-sellvana i{
        font-size: 16px;
        color: #5d5d5d;
    }

    .seller-statistic-label-container-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        gap: 10px;
    }

    .seller-statistic-list-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
    }

    #seller-detail-seperator-sellvana{
        margin: 20px 0px;
        border-top: 1px solid #e1e1e1;
    }

    .seller-detail-card-sellvana div{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        justify-content: center;
        gap: 5px;
    }

    .seller-detail-card-sellvana h5{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 15.5px;
        color: #a4a4a4;
    }

    .seller-detail-card-sellvana h3{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 600;
        font-size: 21px;
        color: #32324D;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        max-width: 240px;
    }

    .seller-detail-card-sellvana img{
        width: 80px;
        height: 80px;
        object-fit: cover;
        border-radius: 50%;
        filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
    }

    .seller-detail-card-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        gap: 20px;
    }

    .seller-detail-container-sellvana{
        display: flex;
        flex-direction: column;
        padding: 30px 40px;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.15);
        border-radius: 12px;
        margin-top: 60px;
        background-color: white;
        animation-duration: 0.2s;
    }

    .product-list-container-sellvana{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }

    .seller-main-content{
        width: 1400px;
        margin:0px auto;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: flex-start;
        padding-top: 70px;
    }
</style>
</html>
