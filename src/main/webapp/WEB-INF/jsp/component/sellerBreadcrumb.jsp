<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
%>
<%
  String[] crumbs = request.getParameterValues("crumb");
  String[] links = request.getParameterValues("link");
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<ul class="breadcrumb">
</ul>
<script>
  <%
    out.println("$('.breadcrumb').append(\"<li class='firstList'>Pages</li>\")");
    for (int i = 0; i< crumbs.length; i++){
      if (i+1 == crumbs.length){
        out.println("$('.breadcrumb').append(\"<li>"+crumbs[i]+"</li>\")");
      } else {
        out.println("$('.breadcrumb').append(\"<li><a href=\'"+links[i] +"\'>"+crumbs[i]+"</a></li>\")");
      }
    }
  %>
</script>
<style>
  .breadcrumb .firstList{
    font-weight: 400;
    font-size: 16px;
    color: #a2a2a2;
  }

  ul.breadcrumb {
    list-style: none;
  }

  ul.breadcrumb li {
    display: inline;
    color: #696969;
    text-decoration: none;
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 17px;

  }

  ul.breadcrumb li+li:before {
    padding: 8px;
    color: #a2a2a2;
    content: "/";
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 15px;
  }



  ul.breadcrumb li a {
    color: <%=appAccent%>;
    text-decoration: none;
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 17px;
    transition: all 0.1s ease-in;
  }

  ul.breadcrumb li a:hover {
    color: <%=appAccentHover%>;
    text-decoration: underline;
  }
</style>
