<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<%
    ServletContext context = getServletConfig().getServletContext();
    String appAccent = context.getInitParameter("appAccent");
%>

<%
    String title = request.getParameter("title");
    String inputType = request.getParameter("inputType");
    String inputName = request.getParameter("inputName");

    String stringOut = "<input class='input' name='"+ inputName +"' type='"+ inputType +"' placeholder='"+ title +"' />";
    out.println(stringOut);
%>
<style>
    .input {
        font-family: Inter;
        margin-bottom: 30px;
        background-color: #f5f5f5;
        color: #090101;
        font-size: 14px;
        padding: .15rem .5rem;
        width: 100%;
        height:50px;
        border-radius: 4px;
        outline: none;
        border: none;
        line-height: 1.15;
        box-shadow: 0px 10px 20px -18px;
    }

    input:focus {
        border-bottom: 2px solid <%=appAccent%>;
        border-radius: 4px 4px 2px 2px;
    }

    input:hover {
        outline: 1px solid <%=appAccent%>;
    }
</style>