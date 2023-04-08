<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String adminID = request.getParameter("adminID");
  String adminName = request.getParameter("adminName");
  String adminEmailAddress = request.getParameter("adminEmailAddress");
  String adminCreationDate = request.getParameter("adminCreationDate");
%>
<tr>
  <td class="admin-name"><%=adminName%></td>
  <td class="admin-email"><%=adminEmailAddress%></td>
  <td><%=adminCreationDate%></td>
  <td class="text-end">
    <button data-toggle="modal" data-target="#adminRegisterModal" id="admin-update-button-<%=adminID%>" href="#" class="btn btn-sm btn-success manage-button">Manage</button>
    <button data-toggle="modal" data-target="#confirmRemoveAdminModal"  type="button" class="btn btn-sm btn-square btn-danger">
      <i class="bi bi-trash"></i>
    </button>
  </td>
</tr>

