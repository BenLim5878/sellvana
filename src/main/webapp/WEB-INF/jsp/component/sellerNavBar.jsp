<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ServletContext context = getServletConfig().getServletContext();
    String appAccent =context.getInitParameter("appAccent");
%>
<%
    String menuLocation = request.getParameter("menuLocation");
%>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<div class="card">
    <div class="content">
        <img src="/app/img/avatar-img.png">
        <div class="details">
            <span class="name">John Wick</span>
            <p>Seller</p>
        </div>
    </div>
    <a href="#">Logout</a>
</div>
<div class="sidebar">
    <div class="logo-details">
        <jsp:include page="/WEB-INF/jsp/component/appLogo.jsp">
            <jsp:param name="size" value="43"/>
        </jsp:include>
    </div>
    <ul class="nav-links">
        <li>
            <a href="/app/seller/home">
                <i id="dashboard" class="fa-solid fa-table-columns"></i>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="/app/seller/home">Dashboard</a></li>
            </ul>
        </li>
        <li>
            <a href="/app/seller/product">
                <i id="product" class="fa-solid fa-box"></i>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="/app/seller/product">Product</a></li>
            </ul>
        </li>
        <li>
            <a href="/app/seller/order">
                <i id="order" class="fa-solid fa-tags"></i>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="/app/seller/order">Order</a></li>
            </ul>
        </li>
        <li>
            <a href="/app/seller/wallet">
                <i id="wallet" class="fa-solid fa-wallet"></i>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="/app/seller/wallet">Wallet</a></li>
            </ul>
        </li>
        <li>
            <a href="/app/seller/setting">
                <i id="setting" class="fa-solid fa-gear"></i>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="/app/seller/setting">Setting</a></li>
            </ul>
        </li>
    </ul>
</div>
<script>
    $('#<%=menuLocation%>').css('color','#3EB193')
</script>
<style>
    button{
        cursor: pointer;
        outline: none;
        border:none;
    }

    .link_name{
        font-family: Inter;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    .sidebar {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 260px;
        background: #ffff;
        z-index: 1000;
        transition: all 0.5s ease;
        padding-top: 20px;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.11);
    }
    .sidebar.show {
        width: 78px;
    }
    .sidebar .logo-details {
        height: 60px;
        width: 100%;
        display: flex;
        align-items: center;
        margin-left: 15px;
    }
    .sidebar .logo-details i {
        font-size: 30px;
        color: #4d4d4d;
        height: 50px;
        min-width: 78px;
        text-align: center;
        line-height: 50px;
    }
    .sidebar .nav-links {
        height: 100%;
        padding: 30px 0 150px 0;
        overflow: auto;
    }
    .sidebar.show .nav-links {
        overflow: visible;
    }
    .sidebar .nav-links::-webkit-scrollbar {
        display: none;
    }
    .sidebar .nav-links li {
        position: relative;
        list-style: none;
        transition: all 0.4s ease;
        padding: 10px 0px;
    }
    .sidebar .nav-links li:hover i{
        color: white;
    }
    .sidebar .nav-links li:hover {
        background: <%=appAccent%>;
    }
    .sidebar .sub-menu li:hover {
        background: none;
        color: #4d4d4d;
    }
    .sidebar .nav-links li i {
        height: 50px;
        min-width: 78px;
        text-align: center;
        line-height: 50px;
        color: #4d4d4d;
        font-size: 20px;
        cursor: pointer;
        transition: all 0.3s ease;
    }
    .sidebar .nav-links li a {
        display: flex;
        align-items: center;
        text-decoration: none;
    }
    .sidebar .nav-links li a .link_name {
        font-size: 18px;
        font-weight: 400;
        color: #4d4d4d;
        transition: all 0.4s ease;
    }
    .sidebar.show .nav-links li a .link_name {
        opacity: 0;
        pointer-events: none;
    }
    .sidebar .nav-links li .sub-menu {
        padding: 6px 6px 14px 80px;
        margin-top: 0px;
        background: #fff;
        display: none;
    }
    .sidebar .nav-links li.showMenu .sub-menu {
        display: block;
    }
    .sidebar .nav-links li .sub-menu a {
        color: #4d4d4d;
        font-size: 15px;
        padding: 5px 0;
        white-space: nowrap;
        opacity: 0.6;
        transition: all 0.3s ease;
    }
    .sidebar .nav-links li .sub-menu a:hover {
        opacity: 1;
    }
    .sidebar.show .nav-links li .sub-menu {
        position: absolute;
        left: 100%;
        top: -10px;
        margin-top: 0;
        padding: 10px 20px;
        border-radius: 0 6px 6px 0;
        opacity: 0;
        display: block;
        pointer-events: none;
        transition: 0s;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.11);
    }
    .sidebar.show .nav-links li:hover .sub-menu {
        top: 0;
        opacity: 1;
        pointer-events: auto;
        transition: all 0.4s ease;
    }
    .sidebar .nav-links li .sub-menu .link_name {
        display: none;
    }
    .sidebar.show .nav-links li .sub-menu .link_name {
        font-size: 18px;
        opacity: 1;
        display: block;
    }
    .sidebar .nav-links li .sub-menu.blank {
        opacity: 1;
        pointer-events: auto;
        padding: 3px 20px 6px 16px;
        opacity: 0;
        pointer-events: none;
    }
    .sidebar .nav-links li:hover .sub-menu.blank {
        top: 50%;
        transform: translateY(-50%);
    }
</style>
<style>
    .card .content {
        display: flex;
        align-items: center;
    }
    .card img {
        height: 60px;
        width: 60px;
        position: absolute;
        border-radius: 50%;
        filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
        object-fit: cover;
    }
    .card .details {
        margin-left: 80px;
    }
    .details span {
        font-weight: 500;
        font-size: 18px;
        font-family: Inter;
        color: #2a2a2a;
    }
    .details p{
        font-weight: 400;
        font-size: 15px;
        font-family: Inter;
        color:<%=appAccent%>;
        margin-top: 4px;
    }
    .card a {
        text-decoration: none;
        padding: 7px 18px;
        border-radius: 7px;
        color: #fff;
        background: <%=appAccent%>;
        transition: all 0.3s ease;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.25);
        cursor: pointer;
        font-weight: 500;
        font-size: 15px;
        font-family: Inter;
    }
    .card a:hover {
        transform: scale(1.05);
    }

    .card {
        width: 370px;
        display: flex;
        align-items: center;
        padding: 20px;
        opacity: 100;
        position: fixed;
        justify-content: space-between;
        border-radius: 13px;
        animation: animate 15s linear infinite;
        margin-left: 78%;
        margin-top: 1%;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.11);
        z-index: 10000;
        backdrop-filter: blur(8.2px);
        -webkit-backdrop-filter: blur(8.2px);
        background: rgba(255,255,255,0.6);
    }
</style>
<script>
    $('.sidebar').addClass('show')
</script>