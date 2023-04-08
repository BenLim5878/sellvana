<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
    <title>Address</title>
    <script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/userTopNavBar.jsp">
        <jsp:param name="hasInitialShadow" value="true"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/jsp/component/userSideNavBar.jsp">
        <jsp:param name="menuLocation" value="setting"/>
    </jsp:include>
    <div class="addressManage-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/userBreadcrumb.jsp">
                <jsp:param name="crumb" value="Home"/>
                <jsp:param name="link" value="/app"/>
                <jsp:param name="crumb" value="My Address"/>
            </jsp:include>
        </div>
        <div class="addressManage-header-container">
            <h2 class="addressManage-title-sellvana">My Addresses</h2>
            <button class="addressManage-add-new-address-button-sellvana">
                <i class="fa-solid fa-plus"></i>
                <h4>Add New Address</h4>
            </button>
        </div>
        <div class="addressManage-table-list-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/addressListItem.jsp">
                <jsp:param name="addressID" value="1"/>
                <jsp:param name="addressName" value="Address 1"/>
                <jsp:param name="addressFirstLine" value="12, 11B Taman Sungai Kapar Indah"/>
                <jsp:param name="addressSecondLine" value="42200 Klang, Selangor"/>
                <jsp:param name="addressThirdLine" value="Malaysia"/>
                <jsp:param name="isDefault" value="true"/>
            </jsp:include>
            <jsp:include page="/WEB-INF/jsp/component/addressListItem.jsp">
                <jsp:param name="addressID" value="2"/>
                <jsp:param name="addressName" value="Address 2"/>
                <jsp:param name="addressFirstLine" value="12, 11B Taman Sungai Kapar Indah"/>
                <jsp:param name="addressSecondLine" value="42200 Klang, Selangor"/>
                <jsp:param name="addressThirdLine" value="Malaysia"/>
                <jsp:param name="isDefault" value="false"/>
            </jsp:include>
            <jsp:include page="/WEB-INF/jsp/component/addressListItem.jsp">
                <jsp:param name="addressID" value="3"/>
                <jsp:param name="addressName" value="Address 3"/>
                <jsp:param name="addressFirstLine" value="12, 11B Taman Sungai Kapar Indah"/>
                <jsp:param name="addressSecondLine" value="42200 Klang, Selangor"/>
                <jsp:param name="addressThirdLine" value="Malaysia"/>
                <jsp:param name="isDefault" value="false"/>
            </jsp:include>
        </div>
    </div>
</body>
<script>
    function refreshList(addressID){
        var firstChild = $('.addressManage-table-list-sellvana').children('.address-list-sellvana')[0]
        $('.addressManage-table-list-sellvana').children('.address-list-sellvana').each(function (){
            var elementID =  $(this).children('.meta-addressID').html()
            if (addressID == elementID){
                $(this).insertBefore(firstChild)
            } else {
                refreshButton(elementID,false)
            }
        })
    }
</script>
<style>
    .addressManage-table-list-sellvana{
        display: flex;
        flex-direction: column;
        gap: 30px;
        width: 100%;
    }

    .addressManage-header-container{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
    }

    .addressManage-add-new-address-button-sellvana:hover i{
        color: <%=appAccentHover%>;
    }

    .addressManage-add-new-address-button-sellvana:hover h4{
        color: <%=appAccentHover%>;
    }

    .addressManage-add-new-address-button-sellvana i{
        font-size: 16px;
        color:<%=appAccent%>;
        transition: all 0.2s ease-in;
    }

    .addressManage-add-new-address-button-sellvana h4{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 16px;
        color: <%=appAccent%>;
        transition: all 0.2s ease-in;
    }

    .addressManage-add-new-address-button-sellvana{
        display: flex;
        flex-direction: row;
        gap: 15px;
        background-color: transparent;
        align-items: center;

    }

    .addressManage-main-content-sellvana{
        width: 1100px;
        margin: 0 auto;
        display: flex;
        flex-direction: column;
    }

    .breadcrumb-sellvana{
        padding-top:40px;
    }

    .addressManage-title-sellvana{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 24px;
        color: #262626;
        padding: 30px 0px;
    }
</style>
</html>
