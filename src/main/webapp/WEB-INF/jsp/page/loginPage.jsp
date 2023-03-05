<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    ServletContext context = getServletConfig().getServletContext();
    String appName = context.getInitParameter("appName");
%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1>Welcome back!</h1>
<h2>
    Log in to your <%=appName%> account
</h2>
<div>
    <jsp:include page="/WEB-INF/jsp/component/loginInputField.jsp">
        <jsp:param name="title" value="Email"/>
        <jsp:param name="inputType" value="text"/>
        <jsp:param name="inputName" value="email-sellvana}"/>
    </jsp:include>
</div>
<div>
    <jsp:include page="/WEB-INF/jsp/component/loginInputField.jsp">
        <jsp:param name="title" value="Password"/>
        <jsp:param name="inputType" value="Password"/>
        <jsp:param name="inputName" value="password-sellvana"/>
    </jsp:include>
</div>
</body>
</html>

