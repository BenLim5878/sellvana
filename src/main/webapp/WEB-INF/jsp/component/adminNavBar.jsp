<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ServletContext context = getServletConfig().getServletContext();
    String appAccent =context.getInitParameter("appAccent");
    String appAccentHover = context.getInitParameter("appAccentHover");
%>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style>
    @import url(https://unpkg.com/@webpixels/css@1.1.5/dist/index.css);
    @import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css");

    body{
        font-family: Inter;
    }

    button{
        outline: none;
        border:none;
        cursor: pointer;
    }

    .navbar-brand{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
    }

    .navbar-collapse{
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .navbar-brand h2{
        font-family: 'Poppins';
        font-style: normal;
        font-weight: 400;
        font-size: 17.5658px;
        color: <%=appAccent%>;
    }

    #navbarVertical{
        position: fixed;
        top:0px;
        left: 0px;
    }

    *{
        padding: 0px;
        margin: 0px;
    }

    body{
        background-color: #F5F9FC;
    }

    input[type="search"]::-webkit-search-decoration,
    input[type="search"]::-webkit-search-cancel-button,
    input[type="search"]::-webkit-search-results-button,
    input[type="search"]::-webkit-search-results-decoration {
        -webkit-appearance:none;
    }

</style>
<nav class="navbar show navbar-vertical h-lg-screen navbar-expand-lg px-0 py-3 navbar-light bg-white border-bottom border-bottom-lg-0 border-end-lg" id="navbarVertical">
    <div class="container-fluid">
        <!-- Brand -->
        <div class="navbar-brand py-lg-2 mb-lg-5 px-lg-6 me-0" href="#">
            <jsp:include page="/WEB-INF/jsp/component/appLogo.jsp">
                <jsp:param name="size" value="40"/>
            </jsp:include>
            <h2>Sellvana</h2>
        </div>
        <div class="collapse navbar-collapse" id="sidebarCollapse">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/app/admin/home">
                        <i class="bi bi-house"></i> Dashboard
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/app/admin/manage/admin">
                        <i class="bi bi-person-circle"></i> Admin
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/app/admin/manage/seller">
                        <i class="bi bi-person-bounding-box"></i> Seller
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/app/admin/manage/customer">
                        <i class="bi bi-people-fill"></i> Customer
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/app/admin/feedback">
                        <i class="bi bi-star"></i> Rating & Feedback
                    </a>
                </li>
            </ul>
            <ul class="navbar-nav bottom">
                <li class="nav-item">
                    <a class="nav-link" href="/app/admin/account">
                        <i class="bi bi-person"></i> Account
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/app">
                        <i class="bi bi-box-arrow-left"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

