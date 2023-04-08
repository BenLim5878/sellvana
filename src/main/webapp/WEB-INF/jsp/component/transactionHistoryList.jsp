<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
  String appAccentLight = application.getInitParameter("appAccentLight");
%>
<%
  String orderID = request.getParameter("orderID");
  String paymentDateTime = request.getParameter("paymentDateTime");
  String paymentType = request.getParameter("paymentType");
  String paymentAmount = request.getParameter("paymentAmount");
%>
<div class="recent-activity-list">
  <div class="recent-activity-list-left">
    <div>
      <h4>Order #<%=orderID%></h4>
      <h5><%=paymentDateTime%></h5>
    </div>
    <h5 class="left-card"><%=paymentType%></h5>
  </div>
  <h3 class="recent-activity-amount">+<%=paymentAmount%></h3>
  <style>
    .recent-activity-amount{
      font-family: 'Inter';
      font-weight: 400;
      font-size: 18px;
      color: #00c263;
    }

    .left-card{
      font-family: 'Inter';
      font-weight: 500;
      font-size: 16px;
      color: #575757;
    }

    .recent-activity-list-left div h5{
      font-family: 'Inter';
      font-weight: 500;
      font-size: 15.2681px;
      color: #858585;
    }

    .recent-activity-list-left div h4{
      font-family: 'Inter';
      font-weight: 500;
      font-size: 18.2681px;
      color: #343434;
    }

    .recent-activity-list-left div{
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .recent-activity-list-left{
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .recent-activity-list{
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      background-color: <%=appAccentLight%>;
      width: 100%;
      height: 186px;
      border-radius: 8px;
      padding: 20px 21px;
      transition: all 0.2s ease-in;
      cursor: pointer;
    }

    .recent-activity-list:hover{
      transform: scale(1.02);
    }
  </style>
</div>

