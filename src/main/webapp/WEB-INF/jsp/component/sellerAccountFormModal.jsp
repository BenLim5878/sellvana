<%
    String sellerName = request.getParameter("sellerName");
    String sellerEmailAddress = request.getParameter("sellerEmailAddress");
    String sellerShopName = request.getParameter("sellerShopName");
%>
<div class="modal fade" id="sellerRegisterModal" tabindex="-1" aria-labelledby="sellerRegisterModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="sellerRegisterModalLabel">Update Seller Information</h5>
                <button type="button" class="btn-close text-sm" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="sellerName" class="form-label">Contact Name</label>
                        <input type="text" class="form-control" id="sellerName" required>
                    </div>
                    <div class="mb-3">
                        <label for="sellerEmail" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="sellerEmail" aria-describedby="emailHelp" required>
                    </div>
                    <div class="mb-3">
                        <label for="sellerShopName" class="form-label">Shop Name</label>
                        <input type="text" class="form-control" id="sellerShopName" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary text-sm" data-dismiss="modal">Close</button>
                <button id="submit-button" type="submit" class="btn btn-primary text-sm">Update</button>
            </div>
        </div>
    </div>
    <script>
        $('#sellerName').val("<%=sellerName%>")
        $('#sellerEmail').val("<%=sellerEmailAddress%>")
        $('#sellerShopName').val("<%=sellerShopName%>")
    </script>
</div>