<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String customerID = request.getParameter("customerID");
  String customerName = request.getParameter("customerName");
  String customerEmailAddress = request.getParameter("customerEmailAddress");
  String customerTelephoneNumber = request.getParameter("customerTelephoneNumber");
  String customerCreationDate = request.getParameter("customerCreationDate");
%>
<tr>
  <td class="customer-name">
    <img alt="..." src="/app/img/avatar-img.png" class="avatar avatar-xs rounded-circle me-2">
    <a id="customer-name" class="text-heading font-semibold" href="#"><%=customerName%></a>
  </td>
  <td class="customer-email"><%=customerEmailAddress%></td>
  <td class="customer-telephoneNumber"><%=customerTelephoneNumber%></td>
  <td class="customer-creationDate"><%=customerCreationDate%></td>
  <td class="text-end">
    <button data-toggle="modal" data-target="#customerRegisterModal" id="action-button-update-<%=customerID%>" class="btn btn-sm btn-neutral action-button">Update</button>
    <button data-toggle="modal" data-target="#confirmRemoveCustomerModal" id="remove-button-<%=customerID%>"  type="button" class="btn btn-sm btn-square btn-danger">
      <i class="bi bi-trash"></i>
    </button>
  </td>
</tr>

