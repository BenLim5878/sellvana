<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
    String appAccentLight = application.getInitParameter("appAccentLight");
%>
<html>
<head>
    <title>Homepage</title>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/sellerNavBar.jsp">
        <jsp:param name="menuLocation" value="dashboard"/>
    </jsp:include>
    <div class="sellerHome-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/sellerBreadcrumb.jsp">
                <jsp:param name="crumb" value="Home"/>
            </jsp:include>
        </div>
        <h1 class="sellerHome-page-title-sellvana">Dashboard</h1>
        <section class="sellerHome-statistic-container-sellvana">
            <div class="statistic-list-sellvana">
                <div class="list-top">
                    <div class="list-top-left">
                        <h5>37</h5>
                        <h4>Total pending order</h4>
                    </div>
                    <div class="list-top-right">
                        <i class="fa-solid fa-tag"></i>
                    </div>
                </div>
                <div class="list-bottom">
                    <h3>View all pending order</h3>
                    <i class="fa-solid fa-up-right-from-square"></i>
                </div>
            </div>
            <div class="statistic-list-sellvana">
                <div class="list-top">
                    <div class="list-top-left">
                        <h5>RM 888.88</h5>
                        <h4>Total sales (This month)</h4>
                    </div>
                    <div class="list-top-right">
                        <i class="fa-solid fa-money-check-dollar"></i>
                    </div>
                </div>
                <div class="list-bottom">
                    <h3>View all sales</h3>
                    <i class="fa-solid fa-up-right-from-square"></i>
                </div>
            </div>
            <div class="statistic-list-sellvana">
                <div class="list-top">
                    <div class="list-top-left">
                        <h5>12</h5>
                        <h4>Total sold product</h4>
                    </div>
                    <div class="list-top-right">
                        <i class="fa-solid fa-boxes-stacked"></i>
                    </div>
                </div>
                <div class="list-bottom">
                    <h3>View all sold products</h3>
                    <i class="fa-solid fa-up-right-from-square"></i>
                </div>
            </div>
            <div class="statistic-list-sellvana">
                <div class="list-top">
                    <div class="list-top-left">
                        <h5>4.5</h5>
                        <h4>Average customer rating</h4>
                    </div>
                    <div class="list-top-right">
                        <i class="fa-solid fa-star"></i>
                    </div>
                </div>
                <div class="list-bottom">
                    <h3>View all product ratings</h3>
                    <i class="fa-solid fa-up-right-from-square"></i>
                </div>
            </div>
        </section>
        <h1 class="sellerHome-page-title-sellvana">Activity</h1>
        <section class="sellerHome-activity-container-sellvana">
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/avatar-img.png">
                    <h4><strong class="list-name">Ben Lim</strong> purchased <strong class="list-product-name">Shavsin Gunting Rambut GM-6005/GM-6008 Professional Hair & Beard Trimmer-Premium Quality</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/male-avatar.png">
                    <h4><strong class="list-name">Jinn Hou</strong> purchased <strong class="list-product-name">Xiaomi Soundbar Mi Soundbar - Bluetooth playback, 8 Sound Unit TV Speaker Sound Bar</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/avatar-img.png">
                    <h4><strong class="list-name">Ben Lim</strong> purchased <strong class="list-product-name">Shavsin Gunting Rambut GM-6005/GM-6008 Professional Hair & Beard Trimmer-Premium Quality</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/male-avatar.png">
                    <h4><strong class="list-name">Jinn Hou</strong> purchased <strong class="list-product-name">Xiaomi Soundbar Mi Soundbar - Bluetooth playback, 8 Sound Unit TV Speaker Sound Bar</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/avatar-img.png">
                    <h4><strong class="list-name">Ben Lim</strong> purchased <strong class="list-product-name">Shavsin Gunting Rambut GM-6005/GM-6008 Professional Hair & Beard Trimmer-Premium Quality</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/male-avatar.png">
                    <h4><strong class="list-name">Jinn Hou</strong> purchased <strong class="list-product-name">Xiaomi Soundbar Mi Soundbar - Bluetooth playback, 8 Sound Unit TV Speaker Sound Bar</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/avatar-img.png">
                    <h4><strong class="list-name">Ben Lim</strong> purchased <strong class="list-product-name">Shavsin Gunting Rambut GM-6005/GM-6008 Professional Hair & Beard Trimmer-Premium Quality</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/male-avatar.png">
                    <h4><strong class="list-name">Jinn Hou</strong> purchased <strong class="list-product-name">Xiaomi Soundbar Mi Soundbar - Bluetooth playback, 8 Sound Unit TV Speaker Sound Bar</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/avatar-img.png">
                    <h4><strong class="list-name">Ben Lim</strong> purchased <strong class="list-product-name">Shavsin Gunting Rambut GM-6005/GM-6008 Professional Hair & Beard Trimmer-Premium Quality</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
            <div class="activity-list-sellvana">
                <div>
                    <img src="/app/img/male-avatar.png">
                    <h4><strong class="list-name">Jinn Hou</strong> purchased <strong class="list-product-name">Xiaomi Soundbar Mi Soundbar - Bluetooth playback, 8 Sound Unit TV Speaker Sound Bar</strong></h4>
                </div>
                <h5>3hrs ago</h5>
            </div>
        </section>
    </div>
</body>
<style>
    .activity-list-sellvana h4 .list-product-name:hover{
        color:<%=appAccentHover%>;
        text-decoration: underline;
    }

    .activity-list-sellvana h4 .list-product-name{
        color:<%=appAccent%>;
        cursor: pointer;
        transition: all 0.2s ease-in;
    }

    .activity-list-sellvana h5{
        font-family: Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 14.5px;
        color: #6c6c6c;
        justify-self: flex-end;
    }

    .activity-list-sellvana strong{
        font-weight: 500;
    }

    .activity-list-sellvana h4{
        font-family: Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 16.5px;
        color: #464646;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        width: 500px;
    }

    .activity-list-sellvana img{
        border-radius: 50%;
        width: 35px;
        object-fit: contain;
        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        margin-right: 15px;
    }

    .activity-list-sellvana div{
        display: flex;
        flex-direction: row;
        align-items: center;
    }

    .activity-list-sellvana{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
    }

    .sellerHome-activity-container-sellvana{
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        width: 1522px;
        grid-column-gap: 150px;
        grid-row-gap: 25px;
        background-color: white;
        padding: 20px 30px;
        box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
        border-radius: 10px;
        margin-top:25px;
    }

    .statistic-list-sellvana .list-bottom:hover{
        cursor:pointer;
    }

    .statistic-list-sellvana .list-bottom:hover h3{
        color: <%=appAccentHover%>;
        text-decoration: underline;
    }

    .statistic-list-sellvana .list-bottom:hover i{
        color: <%=appAccentHover%>;
    }

    .statistic-list-sellvana .list-bottom i{
        color:<%=appAccent%>;
        font-size: 12px;
        transition: all 0.2s ease-in;
    }

    .statistic-list-sellvana .list-top-right i{
        color: <%=appAccent%>;
        font-size: 20px;
    }

    .statistic-list-sellvana .list-top-right{
        padding: 15px;
        background-color: <%=appAccentLight%>;
        border-radius: 8px;
    }

    .statistic-list-sellvana h3{
        font-family: Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 14.5px;
        color: <%=appAccent%>;
        transition: all 0.2s ease-in;
    }

    .statistic-list-sellvana .list-bottom{
        display: flex;
        flex-direction: row;
        padding: 15px 20px 10px;
        background-color: <%=appAccentLight%>;
        align-items: center;
        gap: 9px;
    }

    .statistic-list-sellvana .list-top-left{
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .statistic-list-sellvana .list-top{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        height: 150px;
    }

    .statistic-list-sellvana .list-top-left h5{
        font-family: Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 24px;
        color: #565656;
    }

    .statistic-list-sellvana .list-top-left h4{
        font-family: Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 16px;
        color: #949494;
    }

    .statistic-list-sellvana{
        display: flex;
        flex-direction: column;
        width: 350px;
        height: 180px;
        background-color: white;
        justify-content: space-between;
        border-radius: 10px;
        gap: 10px;
        box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
        overflow: hidden;
    }

    .sellerHome-statistic-container-sellvana{
        display: flex;
        flex-direction: row;
        margin-top: 50px;
        gap: 40px;
        margin-bottom: 40px;
    }

    .sellerHome-page-title-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 600;
        font-size: 30px;
        color: #333333;
        margin-top: 30px;
    }

    .sellerHome-main-content-sellvana{
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
</html>
