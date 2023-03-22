<!DOCTYPE html>
<%
    ServletContext context = getServletConfig().getServletContext();
    String appAccent = context.getInitParameter("appAccent");
    String appAccentHover = context.getInitParameter("appAccentHover");
    String appName = context.getInitParameter("appName");
%>
<html>
<head>
    <title>OpenSea - Marketplace for Crypto Collectibles</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@500&family=Poppins:wght@500;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <style>
        @keyframes scale-up-center-fadeIn {
            0% {
                -webkit-transform: scale(0.3);
                transform: scale(0.3);
                opacity: 0%;
            }
            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                opacity: 100%;
            }
        }

        @keyframes scale-down-center-fadeOut {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                opacity: 100%;
            }
            100% {
                -webkit-transform: scale(0.3);
                transform: scale(0.3);
                opacity: 0%;
            }
        }


        @keyframes fadeOut {
            0%{
                opacity: 100%;
            }
            100%{
                opacity: 0%;
            }
        }

        @keyframes fadeIn{
            0%{
                opacity: 0%;
            }
            100%{
                opacity: 100%;
            }
        }

        .main-content-product-list-header-filter-menu-content-sellvana{
            display: flex;
            flex-direction: column;
        }

        .main-content-product-list-header-filter-menu-sellvana h4{
            font-family: Inter;
            font-style: normal;
            font-weight: 600;
            font-size: 16px;
            color: #222222;
        }

        .main-content-product-list-header-filter-menu-sellvana{
            display: none;
            flex-direction: column;
            align-items: center;
            padding:15px 0px 18px;
            background-color: white;
            box-shadow: 0px 2.5px 25px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            gap:10px;
            position: absolute;
            top:265px;
            left:460px;
        }

        .main-content-product-list-header-filter-list-sellvana:hover h5{
            color: white;
            font-weight: 500;
        }

        .main-content-product-list-header-filter-list-sellvana h5{
            font-size: 16px;
            color: #222222;
            transition: all 0.2s ease-in;
            font-family:Inter;
            font-style: normal;
            font-weight: 400;
            transition: all 0.2s ease-in;
        }

        .main-content-product-list-header-filter-list-sellvana:hover i{
            color: white !important;
        }

        .main-content-product-list-header-filter-list-sellvana i{
            font-size: 16px;
            color: #222222;
            transition: all 0.2s ease-in;
            width: 18px;
            transition: all 0.2s ease-in;
        }

        .main-content-product-list-header-filter-list-sellvana:hover{
            background-color: <%=appAccent%>;
        }

        .main-content-product-list-header-filter-list-sellvana{
            display: flex;
            flex-direction: row;
            align-items: center;
            gap:15px;
            width: 250px;
            padding: 13px 30px 13px 22px;
            transition: all 0.2s ease-in;
            cursor:pointer;
        }

        .main-content-product-list-content-container-sellvana{
            display: grid;
            margin-top: 30px;
            grid-template-columns: repeat(4, 1fr);
            grid-row-gap:32px;
            grid-column-gap:19px;
        }

        .main-content-product-list-header-filter-button-sellvana i{
            font-size: 20px;
            color: #222222;
            transition: all 0.2s ease-in;
        }

        .main-content-product-list-header-filter-button-sellvana h4{
            font-family:Inter;
            font-style: normal;
            font-weight: 400;
            font-size: 15.137px;
            color: #222222;
            transition: all 0.2s ease-in;
        }

        .main-content-product-list-header-filter-button-sellvana:hover .fa-arrow-up-wide-short{
            color:<%=appAccent%> !important;
        }

        .main-content-product-list-header-filter-button-sellvana:hover .filter-description{
            color:<%=appAccent%> !important;
        }

        .main-content-product-list-header-filter-button-sellvana{
            background-color: transparent;
            cursor: pointer;
            display: flex;
            flex-direction: row;
            align-items: center;
            gap: 8px;
        }

        .main-content-product-list-header-container-sellvana h2{
            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 26px;
            color: #32324D;
        }

        .main-content-product-list-header-container-sellvana{
            display: flex;
            flex-direction: row;
            align-items: center;
            gap: 50px;
        }

        .main-content-product-list-container-sellvana{
            display: flex;
            flex-direction: column;
            width:1550px;
            margin:0px auto;
            padding-bottom: 100px;
        }

        .main-content-category-list-content-sellvana h3{
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 13.6362px;
            color: #787885;
            transition: all 0.2s ease-in;
        }

        .main-content-category-list-content-sellvana i{
            font-size: 17px;
            color: #9696A0;
            transition: all 0.2s ease-in;
        }

        .main-content-category-list-content-sellvana:hover h3{
            color: <%=appAccentHover%>
        }

        .main-content-category-list-content-sellvana:hover i{
            color: <%=appAccentHover%>
        }

        .main-content-category-container-sellvana{
            display: flex;
            flex-direction: row;
            justify-content: space-evenly;
            align-items: center;
            background-color: white;
            box-shadow: 0px 4.19403px 4.19403px rgba(0, 0, 0, 0.25);
            border-radius: 10.4851px;
            width: 700px;
            margin: 40px auto 35px;
            padding: 16px 10px;
        }

        .main-content-category-list-content-sellvana{
            gap:9px;
            padding: 5px 0px;
            display: flex;
            min-width: 62px;
            max-width: 140px;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: transparent;
        }

        html{
            scroll-behavior: smooth;
        }

        body{
            width: 100%;
            scroll-behavior: smooth;
            overflow-x:hidden;
        }

        .main-content{
            width: 100vw;
            background-color:#FBFBFB;
            position: sticky;
            top:0px;
            left:0px;
            display: none;
        }

        .zoom{
            overflow: hidden;
            padding-bottom: 50%;
            z-index: 3;
            animation: scale-up-center-fadeIn;
            animation-duration: 300ms;
        }

        .zoom .hero{
            position: fixed;
            top: -5%;
            left: 50%;
            max-width: 200%;
            width: 100%;
            transform: translateX(-50%);
        }

        #Map-svg {
            width: 100%;
            height: 400px;
            margin-top:70px;
            margin-bottom: 30px;
        }

        .hero {
            display: flex;
            align-items: center;
            flex-direction: column;
            justify-content: center;
            height: 100%;
            background: white;
        }

        .hero-text {
            position: relative;
            text-align: center;
            z-index: 1;
        }

        .hero h1 {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-size: 35px;
            color: #313131;
            margin-bottom: 20px;
        }

        .hero p {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-size: 33px;
            font-size: 24px;
            color: #525252;
            margin-bottom: 30px;
        }

        .hero h2{
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-size: 20px;
            color: #2DB396;
            margin-bottom: 40px;
        }

        .hero a {
            background-color: #2DB396;
            color: white;
            border: none;
            padding: 15px 20px;
            font-size: 18px;
            border-radius: 6px;
            cursor: pointer;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 500;
            transition: all 0.2s ease-in;
            text-decoration: none;
        }

        .hero a:hover{
            background-color: #21816e;
        }

    </style>
</head>
<body>
    <div class="zoom" id="zoom-sellvana">
        <div class="hero">
        <div class="Map-container">
            <svg id="Map-svg" viewBox="0 0 670.2 432.4" style="enable-background:new 0 0 670.2 432.4;" xml:space="preserve" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <defs>
          <linearGradient id="Map-gradient" x1="0%" y1="0%" x2="0%" y2="100%">
              <stop offset="0%" stop-color="#fff" stop-opacity="0.10" />
              <stop offset="100%" stop-color="#fff" stop-opacity="0.35" />
          </linearGradient>
          <clipPath id="Map-mask">
              <use xlink:href="#Map-globe"></use>
          </clipPath>
      </defs>
                <g clip-path="url(#Map-mask)" fill="rgba(224, 224, 224, 0.88)" id="Map-shape">
                    <path id="Map-globe" d="M338,49.3l7.5-0.6l7.7-6.7h10.6l6.2-2.4v5l-2.9,5.5l1.5,0.1l-3.5,4.1l5.2,5.7l-14.8,13.8l-3.4,0.2l-6.2-4.7l0,0
          v-3.9l-4-4.4v-7.5l-4-3.4L338,49.3L338,49.3z M312,166v9.1l10.7,10.9H320l-0.6,9H296v-20.7l12.5-12.8L312,166z M134,26.4l20.5-7.4h7
          l12.8-13h22.9H197v8.6l-15,15v18.1l-12,12.6V79h-11.6l-5.1-7l4.2-9.1L134,42.7V26.4z M201.4,132.1l-7.4,6.5V160h-0.6L180,143.2
          v-17.4l-17.6-17.7l-9,8.6l-7.2-6.9l-5.3,4.4L125.2,101h53.3l13.5,12v8.4L201.4,132.1z M123.1,57.1l14.5-0.1l6.8,5.1l-4.6,3.3
          L157.3,86h12.5l6.3,5H140l-17-17.8L123.1,57.1z M107.5,73l6.5,7.3V93h-4.5L94.1,77.8L93.8,73H107.5z M78,95h21.2l6.3,6h8l22.2,22.7
          l-1.5,2.3h-7.8l-4.2-4.2L118,126h-10.3l-10.5-11h-5.8L78,101.6V95z M247,315v18.3L219,362v7l-27,28.7V409l-5,3.7v19.7l-10-10.7v-32
          l3-3.3v-20l2-3.7V345l-21-21.3v-21.3l5.8-5.3l-12.1-13h-15.2l-11-12h-3.7L96,243.3v-6.7l-15-14v-29L53.8,165H40.2l-15.4,9.6L7,157.3
          v-14.7L0,136v-16.3l18.5-4.6h12.7l5,5h14.7l5.7,4h41.1l9.6,11h11l4.3-4.3l4.3,4.3h12l7.3-11.5l6.1,3.5l6.3-8.1l4.4,7.4v8.7l-22,22.3
          V180h14.5l13.5,11.6v-12.9l7-7l-5-5V157h12.2l34,34.3L191.8,217H182l-8,8v5.3l-13.7,13v3.3l2.1,3.4l-0.1,6.4l-3,0.1l-3.6-6.5
          l-23.8,0.3v12L142,273l9.9-2v1.6l17.8,17.4h46.7l23.3,25H247L247,315z M262.3,131l-22.3,8.7v2.7l-6,6.2V166l-16-15v-37.2l-10-9.6
          V86.4l-6.4-7.4H181V59.6l6-7.2V31.1l18.1-0.1l15.3-15h9.5l16.2-16h17.1l15.9,13.1l-4.4,1.7l5.9,7.7l6.8-3.5h6l8.6,8.5l-20,13.1v25.3
          l-3,3.9v19.7l-2,6.9l3.2,20.3L269.7,131H262.3z M272,145.1v-6.4l12.5-0.8h7.5v2.7l-0.5,13.3h-10.8L272,145.1z M412,339.8l-6,5.5V361
          h-5v-25.7l11-11.4V339.8z M395,309.2v24.3l-11,9.3v8.6l-4,4.3v7l-4.1,17.3h-13.7L343,361.5v-16l-5-4.9v-28.9l-5-5V301h-28.6
          L285,282.3V255l28.7-15h7.1l4.8-5H337v6h12.1l5.9,7v-3h18.8l13.2,15v8.3l21.5,20.7h6.7L395,309.2z M525.3,322.6H509v-3.2L498.7,309
          v-6.7l12.2,12.2h12.5l4.2,4.2L525.3,322.6z M600.3,400l-3.2-4.3l0.3-3.1h4.3L600.3,400z M591.6,388l-2.8-2.7l0.2-6.3h-7.3l-5.3-6
          H564l-4.6,6h-8.6l-2.8,1h-12v-16.2l-0.6-2l2.9-9l6.5-2.9h5.2l15.2-15H576v-3.1l10,10.6V331h3l6,4v3.8l10,12.2l0.1,37.1h-13.5V388z
           M533.6,313.8L552,298l-1.3,23.3l-7.6,2.7L533.6,313.8z M590.3,219.3h-5.5l-2.3,3.2l2.4,3.5l0.1,9l-10.3,7.7v2l-2.1,1.3l-3.4-2.7
          l0.1-6.5l10.5-8.2l-0.1-11.3l6.8-7.8l8,4.7L590.3,219.3z M600.8,327h-16.3l-8.2-8.6l3-3.4h18.6l3.1,2.4L600.8,327z M654,142.2v4.1
          L612.7,190l1.9-16.4l8.7-11.5l-10.6,9h-19l-13.5,14h3.8v14.3l-21.2,24.4l6.6,4.7l-7.1,5.7l-6.3-3.6v-2.8l-7.2-6.2l-5.8,4.9v6.2l5,4
          v12.9l-4.5,17.6h-14.6l-8.3,1.8l8.4,9.4v3.8l-6.8,11.5L516,286v9.3l2.1,3.2l-0.6,6l-5.8-0.5l-2-7.5l-0.2-16.4L495.9,266h-4
          l-15.3,12.7l-0.3,4l-5.1,6.2l-8.4-8.1l-0.2-9.7L449.2,261h-15.3l6,5.8L422.5,284h-11.7L392,266.1v-7.9l-15.3-16l7.4-6.2h-8.6
          l-22.2-25.1l-4.4-2.9v4.6l6.3,6.6v4.7l-3.8,2l-10.1-6.9h-7l-16.1,16h-8.5L299,224.2V219h16v-15.6l20.9-16.4h21.6l4.6-17.4v-9.3h-3
          v-11.8l3-3.7l-12,3.5V181H341v-8h-14v-27.6l42.2-29.4h12.6l13.2,13.7v3.8l-6.5,5.9l-8.5-7.8v6.1l12.1,11.2l28.3-21.9h16.1l21-20h12
          l25.7-25h15.9l12.5-13.1l5.7,6.1h8.2l-0.1,16.5l-8.9,9.5h30.2l8.8,9h44l14.3,14h16.3l2.3-3h15.5l10.3,11.4L654,142.2z"></path>
                    <g data-location="TR">
                        <circle class="Pin-back" cx="160" cy="210" r="2.5" fill="#2DB396" fill-opacity="0.5" />
                        <circle class="Pin-front" cx="160" cy="210" r="2.5" fill="#2DB396" />
                    </g>
                    <g data-location="NY">
                        <circle class="Pin-back" cx="174" cy="222" r="2.5" fill="#2DB396" fill-opacity="0.5" />
                        <circle class="Pin-front" cx="174" cy="222" r="2.5" fill="#2DB396" />
                    </g>
                    <g data-location="SF">
                        <circle class="Pin-back" cx="94.5" cy="229.5" r="2.5" fill="#2DB396" fill-opacity="0.5" />
                        <circle class="Pin-front" cx="94.5" cy="229.5" r="2.5" fill="#2DB396" />
                    </g>
                    <g data-location="AM">
                        <circle class="Pin-back" cx="353" cy="190" r="2.5" fill="#2DB396" fill-opacity="0.5" />
                        <circle class="Pin-front" cx="353" cy="190" r="2.5" fill="#2DB396" />
                    </g>
                    <g data-location="LN">
                        <circle class="Pin-back" cx="317" cy="186" r="2.5" fill="#2DB396" fill-opacity="0.5" />
                        <circle class="Pin-front" cx="317" cy="186" r="2.5" fill="#2DB396" />
                    </g>
                    <g data-location="FR">
                        <circle class="Pin-back" cx="364" cy="200" r="2.5" fill="#2DB396" fill-opacity="0.5" />
                        <circle class="Pin-front" cx="364" cy="200" r="2.5" fill="#2DB396" />
                    </g>
                    <g data-location="SP">
                        <circle class="Pin-back" cx="515" cy="301" r="2.5" fill="#2DB396" fill-opacity="0.5" />
                        <circle class="Pin-front" cx="515" cy="301" r="2.5" fill="#2DB396" />
                    </g>
                    <g data-location="BLR">
                        <circle class="Pin-back" cx="474" cy="277" r="2.5" fill="#2DB396" fill-opacity="0.5" />
                        <circle class="Pin-front" cx="474" cy="277" r="2.5" fill="#2DB396" />
                    </g>
                </g>
            </svg>
        </div>
        <div class="hero-text">
            <h1>The top-notch online marketplace</h1>
            <p>Explore, purchase, and sell goods on the biggest e-commerce platform.</p>
            <h2>123 Items Added to this Platform</h2>
            <a id="get-started-button-sellvana">Get Started</a>
        </div>
    </div>
    </div>
    <div id="main-content-sellvana" class="main-content">
        <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
            <jsp:param name="hasInitialShadow" value="true"/>
        </jsp:include>
        <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp">
            <jsp:param name="menuLocation" value="home"/>
        </jsp:include>
        <div class="main-content-category-container-sellvana">
            <button id="category-clothing" class="main-content-category-list-content-sellvana">
                <i class="fa-solid fa-shirt"></i>
                <h3>Clothing & Apparel</h3>
            </button>
            <button id="category-footwear" class="main-content-category-list-content-sellvana">
                <i class="fa-solid fa-shoe-prints"></i>
                <h3>Shoe & Footwear</h3>
            </button>
            <button id="category-electronic" class="main-content-category-list-content-sellvana">
                <i class="fa-solid fa-mobile-screen"></i>
                <h3>Electronic & Gadget</h3>
            </button>
            <button id="category-game" class="main-content-category-list-content-sellvana">
                <i class="fa-solid fa-gamepad"></i>
                <h3>Toy & Game</h3>
            </button>
            <button id="category-pet" class="main-content-category-list-content-sellvana">
                <i class="fa-solid fa-paw"></i>
                <h3>Pet</h3>
            </button>
            <button id="category-stationary" class="main-content-category-list-content-sellvana">
                <i class="fa-solid fa-book-open"></i>
                <h3>Stationary</h3>
            </button>
        </div>
        <div class="main-content-product-list-container-sellvana">
            <div class="main-content-product-list-header-container-sellvana">
                <h2>All (23 Products)</h2>
                <button class="main-content-product-list-header-filter-button-sellvana">
                    <i class="fa-solid fa-arrow-up-wide-short"></i>
                    <h4 class="filter-description">Price: lowest to high</h4>
                </button>
                <%--Sort by--%>
                <div class="main-content-product-list-header-filter-menu-sellvana">
                    <h4>Sort by</h4>
                    <div class="main-content-product-list-header-filter-menu-content-sellvana">
                        <div class="main-content-product-list-header-filter-list-sellvana">
                            <i class="fa-solid fa-fire"></i>
                            <h5>Popular</h5>
                        </div>
                        <div class="main-content-product-list-header-filter-list-sellvana">
                            <i class="fa-solid fa-star"></i>
                            <h5>Customer Review</h5>
                        </div>
                        <div class="main-content-product-list-header-filter-list-sellvana">
                            <i class="fa-solid fa-arrow-trend-up"></i>
                            <h5>Price: lowest to highest</h5>
                        </div>
                        <div class="main-content-product-list-header-filter-list-sellvana">
                            <i class="fa-solid fa-arrow-trend-down"></i>
                            <h5>Price: highest to lowest</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-content-product-list-content-container-sellvana">
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
    </div>
</body>
<script>
    if(!document.cookie.match(/^(.*;)?\s*app\s*=\s*[^;]+(.*)?$/)) {
        // user is visiting the site for the first time
        document.cookie = "app=<%=appName%>";
        $('#zoom-sellvana').css('display','block')
    } else {
        $('#zoom-sellvana').css('display','none')
        $('#main-content-sellvana').css('display','block')
        $('body').css("background-color","#FBFBFB")
    }
</script>
<script>
    $('.main-content-product-list-header-filter-button-sellvana').click(()=>{
        var filterMenu =  $('.main-content-product-list-header-filter-menu-sellvana');
        if (filterMenu.css("display") == 'flex'){
            filterMenu.css("animation-name",'fadeOut')
            filterMenu.css("animation-duration",'0.2s')
            setTimeout(()=>{
                filterMenu.css("display",'none')
            },200)
        }else{
            filterMenu.css("display",'flex')
            filterMenu.css("animation-name",'fadeIn')
            filterMenu.css("animation-duration",'0.2s')
        }
    })
</script>
<script>
    $('#get-started-button-sellvana').click(()=>{
        $('#zoom-sellvana').css('animation','scale-down-center-fadeOut')
        $('#zoom-sellvana').css('animation-duration','500ms')
        setTimeout(()=>{
            $('#zoom-sellvana').remove();
            $('#main-content-sellvana').css('display','block');
            $('#main-content-sellvana').css('animation','scale-up-center-fadeIn');
            $('#main-content-sellvana').css('animation-duration','500ms');
            $('body').css('overflow-y','auto')
            $('body').css("background-color","#FBFBFB")
        },500)
    })
</script>
<script>
    $(document).ready(()=>{
        var forEach = function(array, callback, scope) {
            for (var i = 0; i < array.length; i++) {
                callback.call(scope, i, array[i]); // passes back stuff we need
            }
        };

        var randomIntFromInterval = function(min,max) {
            return Math.floor(Math.random()*(max-min+1)+min);
        }

        var mapPins = document.querySelectorAll('#Map-shape g');

        forEach(mapPins, function(index, value) {
            // Group opacity timeline
            value.groupTimeline = new TimelineMax({
                paused: true
            });

            value.groupTimeline
                .to(value, 0.25, {
                    opacity: 0
                });

            // Pulse animation
            var pinTimeline = new TimelineMax({
                repeat: -1,
                delay: randomIntFromInterval(1,3),
                repeatDelay: randomIntFromInterval(0, 1)
            });

            pinTimeline.to(value.querySelector('.Pin-back'), 3, {
                scale: 50,
                transformOrigin: 'center center',
                opacity: 0
            });
        });
    })
</script>
</html>