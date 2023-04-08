<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String sellerID = request.getParameter("sellerID");
  String sellerName = request.getParameter("sellerName");
  String sellerEmailAddress = request.getParameter("sellerEmailAddress");
  String sellerShopName = request.getParameter("sellerShopName");
  String sellerAccountStatus = request.getParameter("sellerAccountStatus");
%>
<tr>
  <td class="seller-name"><%=sellerName%></td>
  <td class="seller-email"><%=sellerEmailAddress%></td>
  <td class="seller-shopName">
    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-1.png" class="avatar avatar-xs rounded-circle me-2">
    <a id="shopName" class="text-heading font-semibold" href="#"><%=sellerShopName%></a>
  </td>
  <td>
                                        <span class="badge badge-lg badge-dot">
                                            <i class="bg-success"></i><%=sellerAccountStatus%>
                                        </span>
  </td>
  <td class="text-end">
    <button data-toggle="modal" data-target="#sellerRegisterModal" id="action-button-update-<%=sellerID%>" class="btn btn-sm btn-neutral action-button">Update</button>
    <button data-toggle="modal" data-target="#confirmApproveSellerModal" id="action-button-approve-<%=sellerID%>" class="btn btn-sm btn-success action-button">Approve</button>
    <button data-toggle="modal" data-target="#confirmRemoveSellerModal" id="remove-button-<%=sellerID%>"  type="button" class="btn btn-sm btn-square btn-danger">
      <i class="bi bi-trash"></i>
    </button>
  </td>
  <script>
    var sellerStatus = "<%=sellerAccountStatus%>"

    switch (sellerStatus){
      case "Approved":
        $('#action-button-approve-<%=sellerID%>').css('display','none')
        break;
      default:
        $('.bg-success').addClass('bg-info');
        $('#action-button-update-<%=sellerID%>').css('display','none')
        $("#remove-button-<%=sellerID%>").remove()
        break;
    }
  </script>
</tr>

