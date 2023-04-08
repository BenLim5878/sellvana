<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
    String appAccentLight = application.getInitParameter("appAccentLight");
%>
<html>
<head>
    <title>Wallet</title>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/component/sellerNavBar.jsp">
        <jsp:param name="menuLocation" value="wallet"/>
    </jsp:include>
    <div class="sellerWallet-main-content-sellvana">
        <div class="breadcrumb-sellvana">
            <jsp:include page="/WEB-INF/jsp/component/sellerBreadcrumb.jsp">
                <jsp:param name="crumb" value="Wallet"/>
            </jsp:include>
        </div>
        <h1 class="sellerWallet-page-title-sellvana">My Wallet</h1>
        <section class="sellerWallet-wrapper">
            <div class="total-earned-container">
                <h4 class="total-earned-title">Total Earned</h4>
                <h3 class="total-earned-value">RM 2,663.56</h3>
            </div>
            <div class="wallet-summary-container">
                <h3 class="wallet-summary-title">Wallet Summary</h3>
                <div class="wallet-summary-list">
                    <div class="summary-list">
                        <div class="summary-list-header">
                            <i class="fa-solid fa-clock monthly"></i>
                            <h3>This month (Earned)</h3>
                        </div>
                        <div class="summary-list-content">
                            <h4>Approx. RM 365.54</h4>
                            <i class="fa-solid fa-arrow-trend-down"></i>
                        </div>
                    </div>
                    <div class="summary-list">
                        <div class="summary-list-header">
                            <i class="fa-solid fa-clock weekly"></i>
                            <h3>This week (Earned)</h3>
                        </div>
                        <div class="summary-list-content">
                            <h4>Approx. RM 56.06</h4>
                            <i class="fa-solid fa-arrow-trend-up"></i>
                        </div>
                    </div>
                </div>
            </div>
            <section class="sellerHome-statistic-container-sellvana">
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
            </section>
        </section>
        <div class="recent-activity-container">
            <h3 class="recent-activity-title">Recent Activity</h3>
            <section class="recent-activity-content-wrapper">
               <div class="scroll-wrapper">
                   <jsp:include page="/WEB-INF/jsp/component/transactionHistoryList.jsp">
                       <jsp:param name="orderID" value="1422543"/>
                       <jsp:param name="paymentDateTime" value="20 January 2023 19:02:05"/>
                       <jsp:param name="paymentType" value="Card"/>
                       <jsp:param name="paymentAmount" value="RM 356.44"/>
                   </jsp:include>
                   <jsp:include page="/WEB-INF/jsp/component/transactionHistoryList.jsp">
                       <jsp:param name="orderID" value="1422543"/>
                       <jsp:param name="paymentDateTime" value="20 January 2023 19:02:05"/>
                       <jsp:param name="paymentType" value="Card"/>
                       <jsp:param name="paymentAmount" value="RM 356.44"/>
                   </jsp:include>
                   <jsp:include page="/WEB-INF/jsp/component/transactionHistoryList.jsp">
                       <jsp:param name="orderID" value="1422543"/>
                       <jsp:param name="paymentDateTime" value="20 January 2023 19:02:05"/>
                       <jsp:param name="paymentType" value="Card"/>
                       <jsp:param name="paymentAmount" value="RM 356.44"/>
                   </jsp:include>
                   <jsp:include page="/WEB-INF/jsp/component/transactionHistoryList.jsp">
                       <jsp:param name="orderID" value="1422543"/>
                       <jsp:param name="paymentDateTime" value="20 January 2023 19:02:05"/>
                       <jsp:param name="paymentType" value="Card"/>
                       <jsp:param name="paymentAmount" value="RM 356.44"/>
                   </jsp:include>
                   <jsp:include page="/WEB-INF/jsp/component/transactionHistoryList.jsp">
                       <jsp:param name="orderID" value="1422543"/>
                       <jsp:param name="paymentDateTime" value="20 January 2023 19:02:05"/>
                       <jsp:param name="paymentType" value="Card"/>
                       <jsp:param name="paymentAmount" value="RM 356.44"/>
                   </jsp:include>
               </div>
           </section>
        </div>
    </div>
</body>
<style>
    .recent-activity-content-wrapper .scroll-wrapper{
        width: 100%;
        gap: 20px;
        display: flex;
        flex-direction: column;
    }

    .recent-activity-content-wrapper::-webkit-scrollbar {
        width: 9px;
    }

    .recent-activity-content-wrapper::-webkit-scrollbar-track {
        background: white;
    }

    .recent-activity-content-wrapper::-webkit-scrollbar-thumb {
        background-color: rgb(215, 215, 215);
        border-radius: 20px;
    }

    .recent-activity-title{
        font-family: 'Inter';
        font-weight: 500;
        font-size: 25.0415px;
        color: #3F3F3F;
    }

    .recent-activity-content-wrapper{
        padding: 30px 24px;
        background-color: white;
        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        width: 579px;
        max-height: 603px;
        border-radius: 10px !important;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 20px;
        overflow-y: scroll;
    }

    .recent-activity-container{
        position: absolute;
        right: 200px;
        top: 152px;
        display: flex;
        flex-direction: column;
        gap: 16px;
    }

    .fa-solid.fa-arrow-trend-up{
        color: #57E690;
    }

    .fa-solid.fa-arrow-trend-down{
        color: #E65757;
    }

    .wallet-summary-list{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 23px;
    }

    .wallet-summary-container{
        display: flex;
        flex-direction: column;
        gap: 20px;
        margin-top: 40px;
    }

    .wallet-summary-title{
        font-family:Inter;
        font-style: normal;
        font-weight: 500;
        font-size: 21.8616px;
        color: #4f4f4f;
    }

    .summary-list{
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: flex-start;
        padding: 21px;
        width: 238px;
        height: 124px;
        background-color: white;
        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        border-radius: 8px;
    }

    .summary-list-header h3{
        font-family:Inter;
        font-style: normal;
        font-weight: 600;
        font-size: 16.2891px;
        color: #585858;
    }

    .summary-list-header i.weekly{
        color: #3EB193;;
    }

    .summary-list-header i.monthly{
        color: #53B9E4;
    }

    .summary-list-header i{
        font-size: 20px;
    }

    .summary-list-header{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 10px;
    }

    .summary-list-content i{
        font-size: 17px;
    }

    .summary-list-content h4{
        font-family: Inter;
        font-style: normal;
        font-weight: 400;
        font-size: 17px;
        color: #313131;
    }

    .summary-list-content{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        width: 100%;
    }

    .total-earned-value{
        font-family: 'Inter';
        font-weight: 600;
        font-size: 37.3333px;
        color: <%=appAccent%>;
    }

    .total-earned-title{
        font-family: Inter;
        font-weight: 500;
        font-size: 16px;
        color: #8C8D99;
    }

    .total-earned-container{
        display: flex;
        flex-direction: column;
        gap: 8px;
        align-items: flex-start;
        margin-top: 25px;
    }

    .sellerWallet-page-title-sellvana{
        font-family: Inter;
        font-style: normal;
        font-weight: 600;
        font-size: 30px;
        color: #333333;
        margin-top: 30px;
    }

    .sellerWallet-main-content-sellvana{
        padding-left: 70px;
        padding-top: 40px;
        margin-left: 78px;
        display: flex;
        flex-direction: column;
        width: 1200px;
        padding-bottom: 100px;
    }

    body{
        background-color: #f8f8f8;
    }
</style>
<style>
    .sellerHome-statistic-container-sellvana{
        display: flex;
        flex-direction: row;
        margin-top: 50px;
        gap: 40px;
        margin-bottom: 40px;
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
        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        overflow: hidden;
    }
</style>
</html>
