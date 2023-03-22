<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ServletContext context = getServletConfig().getServletContext();

    Boolean hasInitialShadow = false;
    String appAccent =context.getInitParameter("appAccent");
    String appAccentHover=context.getInitParameter("appAccentHover");
    hasInitialShadow = Boolean.parseBoolean(request.getParameter("hasInitialShadow"));
%>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<div class="top-navbar-user-sellvana">
    <div class="app-logo-sellvana">
        <jsp:include page="appLogo.jsp">
            <jsp:param name="size" value="42"/>
        </jsp:include>
    </div>
    <div class="country-description-container-sellvana">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="17" viewBox="0 0 16 17" fill="none">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M2.82617 7.42768C2.83578 4.60062 5.13535 2.31663 7.9624 2.3262C10.7895 2.33584 13.0735 4.63541 13.0639 7.46246V7.52043C13.0291 9.35812 12.003 11.0567 10.745 12.3842C10.0256 13.1313 9.22218 13.7927 8.35081 14.3552C8.11781 14.5568 7.77221 14.5568 7.53922 14.3552C6.24022 13.5097 5.10013 12.4422 4.1711 11.2016C3.34307 10.1197 2.87295 8.80664 2.82617 7.44507V7.42768Z" stroke="#001C55" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M7.94487 9.16659C8.85098 9.16659 9.58553 8.43203 9.58553 7.52592C9.58553 6.6198 8.85098 5.88525 7.94487 5.88525C7.03875 5.88525 6.3042 6.6198 6.3042 7.52592C6.3042 8.43203 7.03875 9.16659 7.94487 9.16659Z" stroke="#001C55" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
        <h4 class="country-name-sellvana">Malaysia</h4>
    </div>
    <div class="search-product-wrapper-sellvana">
        <input type="text" name="searchProduct" class="search-product-input-sellvana">
        <button id="search-product-clear-button-sellvana">
            <img src="<%
            out.println(context.getContextPath() + "/img/clear-input.png");
            %>">
        </button>
        <button class="search-product-button-sellvana">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                <path d="M2.56693 10.6252C3.54778 11.6075 4.85397 12.1971 6.23942 12.2831C7.62487 12.3691 8.99395 11.9454 10.0887 11.092L13.8556 14.8589C13.9892 14.988 14.1682 15.0594 14.3539 15.0577C14.5396 15.0561 14.7173 14.9816 14.8486 14.8503C14.9799 14.719 15.0544 14.5413 15.056 14.3556C15.0576 14.1699 14.9862 13.9909 14.8572 13.8573L11.0903 10.0904C11.9816 8.94658 12.403 7.50582 12.2685 6.06197C12.1341 4.61812 11.4539 3.27994 10.3667 2.32034C9.27955 1.36074 7.86727 0.851997 6.4179 0.897873C4.96853 0.943749 3.59124 1.54078 2.56693 2.56722C2.03766 3.09622 1.61781 3.72431 1.33135 4.41562C1.0449 5.10693 0.897461 5.84791 0.897461 6.59622C0.897461 7.34453 1.0449 8.0855 1.33135 8.77681C1.61781 9.46812 2.03766 10.0962 2.56693 10.6252V10.6252ZM3.56851 3.57022C4.26875 2.86999 5.19011 2.43422 6.17562 2.33715C7.16113 2.24008 8.14981 2.48771 8.97321 3.03785C9.79661 3.588 10.4038 4.40662 10.6913 5.35424C10.9788 6.30186 10.9289 7.31985 10.55 8.23478C10.1711 9.1497 9.48666 9.90495 8.61335 10.3718C7.74005 10.8387 6.73188 10.9884 5.76061 10.7953C4.78934 10.6022 3.91506 10.0783 3.28673 9.31292C2.65841 8.5475 2.31491 7.58791 2.31476 6.59763C2.31282 6.03492 2.42264 5.47741 2.63787 4.95748C2.85309 4.43754 3.16942 3.96552 3.56851 3.5688V3.57022Z" fill="white"/>
            </svg>
        </button>
        <div class="product-search-menu-sellvana">
            <a>
                <p class="search-result-text-sellvana">Electronics</p>
                <h4>Category</h4>
            </a>
            <a>
                <p class="search-result-text-sellvana">Shaver For Men Mesin Gunting Rambut GM-6005/GM-6008 Professional Hair & Beard Trimmer-Premium Quality</p>
                <h4>Product</h4>
            </a>
            <a>
                <p class="search-result-text-sellvana">Xiaomi Mi Portable Bluetooth Speaker 16W IPX7 Waterproof Bluetooth 5.0 Built-in Microphone</p>
                <h4>Product</h4>
            </a>
        </div>
    </div>
    <svg class="country-flag-logo-sellvana" xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 19 19" fill="none">
        <g clip-path="url(#clip0_603_2200)">
            <path d="M19 14.2498C19 14.8097 18.7776 15.3467 18.3817 15.7426C17.9858 16.1385 17.4488 16.3609 16.8889 16.3609H2.11111C1.55121 16.3609 1.01424 16.1385 0.61833 15.7426C0.22242 15.3467 0 14.8097 0 14.2498V4.74978C0 4.18988 0.22242 3.65291 0.61833 3.257C1.01424 2.86109 1.55121 2.63867 2.11111 2.63867H16.8889C17.4488 2.63867 17.9858 2.86109 18.3817 3.257C18.7776 3.65291 19 4.18988 19 4.74978V14.2498Z" fill="#DD2E44"/>
            <path d="M0.292917 15.3054H18.7076C18.897 14.9858 18.9979 14.6215 19 14.2499H0C0 14.6362 0.111361 14.9935 0.292917 15.3054ZM0 12.1388H19V13.1943H0V12.1388ZM0 10.0277H19V11.0832H0V10.0277ZM0 7.91656H19V8.97211H0V7.91656ZM0 5.80545H19V6.861H0V5.80545ZM0.292917 3.69434C0.103047 4.01384 0.00192563 4.37824 0 4.74989H19C19 4.36356 18.8886 4.00572 18.7071 3.69434H0.292917Z" fill="#EEEEEE"/>
            <path d="M9.5 2.63867H2.11111C1.55121 2.63867 1.01424 2.86109 0.61833 3.257C0.22242 3.65291 0 4.18988 0 4.74978L0 10.0276H9.5V2.63867Z" fill="#010066"/>
            <path d="M5.03194 9.09503C4.3088 9.08096 3.62002 8.78384 3.11356 8.26747C2.60709 7.75111 2.32335 7.05671 2.32328 6.33343C2.32322 5.61015 2.60682 4.91569 3.11319 4.39923C3.61955 3.88278 4.30827 3.58552 5.03141 3.57131C5.40878 3.57131 5.76872 3.64837 6.09647 3.78506C5.55432 3.38309 4.89724 3.16622 4.22233 3.1665C3.38248 3.1665 2.57702 3.50013 1.98316 4.094C1.38929 4.68786 1.05566 5.49332 1.05566 6.33317C1.05566 7.17302 1.38929 7.97848 1.98316 8.57234C2.57702 9.16621 3.38248 9.49984 4.22233 9.49984C4.89724 9.50012 5.55432 9.28325 6.09647 8.88128C5.75936 9.02258 5.39746 9.09524 5.03194 9.09503Z" fill="#FFCC4D"/>
            <path d="M6.81986 4.65967L6.99614 5.51467L7.5255 4.82064L7.31333 5.6672L8.0918 5.27189L7.53289 5.9427L8.40583 5.92422L7.61153 6.28628L8.40583 6.64833L7.53289 6.62986L8.0918 7.30067L7.31333 6.90536L7.5255 7.75245L6.99614 7.05789L6.81986 7.91342L6.64358 7.05789L6.11422 7.75245L6.32639 6.90536L5.54791 7.30067L6.1063 6.62986L5.23389 6.64833L6.02819 6.28628L5.23389 5.92422L6.1063 5.9427L5.54791 5.27189L6.32639 5.6672L6.11422 4.82064L6.64358 5.51467L6.81986 4.65967Z" fill="#FFCC4D"/>
        </g>
        <defs>
            <clipPath id="clip0_603_2200">
                <rect width="19" height="19" fill="white"/>
            </clipPath>
        </defs>
    </svg>
    <div style="display: none" class="public-button-container-sellvana">
        <button class="register-button-homepage-sellvana">
            Register
        </button>
        <button class="login-button-homepage-sellvana">
            Sign in
        </button>
    </div>
    <div class="private-topNavBar-container-sellvana">
        <button class="private-topNavBar-container-cart-button-sellvana">
            <div class="private-topNavBar-container-cart-icon-container-sellvana">
                <i class="fa-solid fa-cart-shopping"></i>
                <h6>12</h6>
            </div>
        </button>
        <button class="private-topNavBar-container-user-button-sellvana">
            <img src="/app/img/avatar-img.png">
            <div class="private-topNavBar-container-user-menu-container-sellvana">
                <div class="private-topNavBar-container-user-menu-list-container-sellvana">
                    <i class="fa-solid fa-circle-info"></i>
                    <h4>Account</h4>
                </div>
                <div class="private-topNavBar-container-user-menu-list-container-sellvana">
                    <i class="fa-solid fa-right-from-bracket"></i>
                    <h4>Logout</h4>
                </div>
            </div>
        </button>
    </div>
</div>
<script>
    $('.private-topNavBar-container-cart-button-sellvana').click(()=>{
        window.location.href='/app/cart'
    })

    $('#search-product-clear-button-sellvana').click(()=>{
        $('.search-product-input-sellvana').val("");
        $('#search-product-clear-button-sellvana').css('display','none');
        $('.product-search-menu-sellvana').css('display','none');

    })

    $('.search-product-input-sellvana').on('input',()=>{
        var searchValue = $('.search-product-input-sellvana').val().toLowerCase();
        if (searchValue.length > 0){
            $('#search-product-clear-button-sellvana').css('display','block');
            $('.product-search-menu-sellvana').css('display','flex');
            $('.search-result-text-sellvana').each(function() {
                var itemText = $(this).text();
                var regex = new RegExp(searchValue, 'gi')
                if (itemText.match(regex)) {
                    var highlightedText = itemText.replace(regex, function(match) {
                        return '<span class="highlight">' + match + '</span>';
                    });
                    $(this).html(highlightedText);
                } else {
                    $(this).html(itemText);
                }
            });

        } else{
            $('#search-product-clear-button-sellvana').css('display','none');
            $('.product-search-menu-sellvana').css('display','none');
        }
    })

    window.addEventListener('scroll', function() {
        const header = $('.top-navbar-user-sellvana');
        const scrollPosition = window.scrollY;
        if (scrollPosition > 0) {
            header.addClass('shadow');
        } else {
            if (!<%=hasInitialShadow%>){
                header.removeClass('shadow');
            }
        }
    });

    if (<%=hasInitialShadow%>){
        $(".top-navbar-user-sellvana").addClass('shadow');
    }

    $('.app-logo-sellvana').click(()=>{
        window.location.href = "/app";
    })

    $('.private-topNavBar-container-user-button-sellvana').click(()=>{
        var userMenu = $('.private-topNavBar-container-user-menu-container-sellvana');
        if (userMenu.css('display') == 'none'){
            userMenu.css("display",'flex')
            userMenu.css("animation","fadeIn")
            userMenu.css("animation-duration","200ms")
        } else {
            userMenu.css("animation","fadeOut")
            userMenu.css("animation-duration","200ms")
            setTimeout(()=>{
                userMenu.css("display",'none')
            },100)
        }
    })
</script>
<style>
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

    .private-topNavBar-container-user-menu-container-sellvana{
        display: none;
        flex-direction: column;
        align-items: flex-start;
        position: absolute;
        margin-top: 150px;
        margin-left: -100px;
        padding: 20px 20px;
        background-color: white;
        box-shadow: 0px 1.5px 15px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        gap: 10px;
        width: 120px;
        gap:20px;
    }

    .private-topNavBar-container-user-menu-list-container-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap:20px;
        width: 100%;
    }

    .private-topNavBar-container-user-menu-list-container-sellvana:hover h4{
        color: <%=appAccent%>;
    }

    .private-topNavBar-container-user-menu-list-container-sellvana h4{
        font-size: 16px;
        font-family: Inter;
        font-weight: 500;
        color: #4f4f4f;
        transition: all 0.2s ease-in;
    }

    .private-topNavBar-container-user-menu-list-container-sellvana:hover i{
        color: <%=appAccent%>;
    }

    .private-topNavBar-container-user-menu-list-container-sellvana i{
        font-size: 20px;
        color: #4f4f4f;
        width:26px;
        transition: all 0.2s ease-in;
    }

    .private-topNavBar-container-cart-icon-container-sellvana {
        display: flex;
        justify-content: center;
        margin-left: 50px;
    }

    .private-topNavBar-container-cart-icon-container-sellvana i{
        font-size: 20px;
        color: #6b6b6b;
        transition: all 0.2s ease-in;
        align-self: flex-end;
    }

    .private-topNavBar-container-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        width: 430px;
        padding-right: 20px;
    }

    .private-topNavBar-container-cart-button-sellvana h6{
        align-self: flex-start;
        margin-top:-5px;
        margin-left:-4px;
        text-align: center;
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 10px;
        color:white;
        background-color: <%=appAccent%>;
        border-radius: 50%;
        width: 18px;
        height: 18px;
        display:flex;
        justify-content: center;
        align-items: center;
    }


    .private-topNavBar-container-cart-button-sellvana div{
        height: 30px;
    }

    .private-topNavBar-container-cart-button-sellvana:hover .private-topNavBar-container-cart-icon-container-sellvana i{
        color: <%=appAccent%> !important;
    }

    .private-topNavBar-container-cart-button-sellvana{
        display: flex;
        flex-direction: row;
        align-items: flex-end;
        background-color: transparent;
    }

    .private-topNavBar-container-user-button-sellvana{
        background-color: transparent;
        cursor: pointer;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 6px;
    }
    .private-topNavBar-container-user-button-sellvana img{
        width:35px;
        height: 35px;
        border-radius: 50%;
        filter: drop-shadow(0px 2px 2px rgba(0, 0, 0, 0.25));
    }

    .highlight{
        font-weight: 600;
        color: <%=appAccentHover%>;
    }

    .product-search-menu-sellvana a:hover{
        background: #e7e7e7;
    }

    .product-search-menu-sellvana p{
        font-family: Inter;
        font-weight: 500;
        font-size: 16.0658px;
        color: #343434;
        width: 550px;
        text-overflow:clip;
        overflow: hidden;
        white-space:nowrap;
    }

    .product-search-menu-sellvana h4{
        max-width: 718px;
    }

    .product-search-menu-sellvana a{
        padding: 10px 20px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        cursor: pointer;
        text-overflow:ellipsis ellipsis;
        transition: all 0.2s ease-in;
    }

    .product-search-menu-sellvana a h4{
        font-family: Inter;
        font-weight: 400;
        font-size: 16.0658px;
        color: #787878;
    }

    .product-search-menu-sellvana{
        display: none;
        flex-direction: column;
        background-color: white;
        position: absolute;
        top: 65px;
        width: 770px;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.15);
        border-radius: 3px;
        max-height: 454px;
        min-height: 30px;
        padding:15px 0px;
        overflow: hidden;
    }

    *{
        padding:0px;
        margin:0px;
    }

    .app-logo-sellvana{
        margin-left: 15px;
        cursor: pointer;
    }

    .top-navbar-user-sellvana{
        width: 100%;
        position: sticky;
        top:0px;
        left: 0px;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        background: #fff;
        padding: 10px 0px;
        z-index: 9999;
        transition: all 0.1s ease-in;
    }

    .shadow{
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.15);
    }

    .country-description-container-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 5px;
        margin-left: 35px;
    }

    .country-name-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 14px;
        color: #001C55;
    }

    #search-product-clear-button-sellvana{
        position:relative;
        background:none;
        border-radius: 50%;
        border:none;
        width: 0px;
        height: 0px;
        left:-27px;
        top:13px;
        display: none;
    }

    .search-product-wrapper-sellvana{
        display: flex;
        flex-direction: row;
        width: auto;
        margin-left: 350px;
        height: 40px;
    }

    .search-product-input-sellvana{
        width: 719px;
        border:none;
        outline: none;
        background: #F4F4F4;
        border-radius: 4px 0px 0px 4px;
        font-family: Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 16.3538px;
        padding:5px 40px 5px 15px;
        color: #2c2c2c;
    }

    button{
        outline: none;
        cursor: pointer;
        border:none;
    }

    .search-product-button-sellvana{
        width: 45px;
        height: 40px;
        background: #52BAFF;
        border-radius: 0px 4px 4px 0px;
        position: relative;
        margin-right: 30px;
        transition: all 0.2s ease-in;
    }

    .search-product-button-sellvana:hover{
        background: <%=appAccentHover%>;
    }

    .country-flag-logo-sellvana{
        margin-right: 36px;
    }

    .login-button-homepage-sellvana{
        width: 136px;
        height: 36px;
        font-size: 16px;
        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        border: none;
    }

    .register-button-homepage-sellvana{
        font-size: 16px;
        width: 115px;
        height: 37px;
        border: 1px solid <%=appAccent%>;
    }

    .register-button-homepage-sellvana:hover{
        background: <%=appAccent%>;
        color:white;
    }

    .login-button-homepage-sellvana:hover{
        background: #f6f6f6;
    }

    .public-button-container-sellvana{
        display: flex;
        flex-direction: row;
        justify-content: flex-end;
        gap:24px;
        width: 450px;
    }

    .public-button-container-sellvana button{
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        color: <%=appAccent%>;
        background: #FFFFFF;
        border-radius: 5.42763px;
        transition: all 0.2s ease-in;
    }
</style>
