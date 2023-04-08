<%
    String customerName = request.getParameter("customerName");
    String customerEmailAddress = request.getParameter("customerEmailAddress");
    String customerTelephoneNumber = request.getParameter("customerTelephoneNumber");
%>
<div class="modal fade" id="customerRegisterModal" tabindex="-1" aria-labelledby="customerRegisterModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="customerRegisterModalLabel">Update Customer Information</h5>
                <button type="button" class="btn-close text-sm" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="customerName" class="form-label">Customer Name</label>
                        <input type="text" class="form-control" id="customerName" required>
                    </div>
                    <div class="mb-3">
                        <label for="customerEmail" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="customerEmail" aria-describedby="emailHelp" required>
                    </div>
                    <div class="mb-3">
                        <label for="customerTelephoneNumber" class="form-label">Telephone Number</label>
                        <input type="text" class="form-control" id="customerTelephoneNumber" required>
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
        $('#customerName').val("<%=customerName%>")
        $('#customerEmail').val("<%=customerEmailAddress%>")
        $('#customerTelephoneNumber').val("<%=customerTelephoneNumber%>")
    </script>
</div>