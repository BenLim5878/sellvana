<%
    Boolean isEdit = false;
    if (request.getParameter("isEdit") != null){
        isEdit = Boolean.parseBoolean(request.getParameter("isEdit"));
    }
    String adminName = request.getParameter("adminName");
    String adminEmailAddress = request.getParameter("adminEmailAddress");
    String adminCurrentPassword = request.getParameter("adminCurrentPassword");
%>
<div class="modal fade" id="adminRegisterModal" tabindex="-1" aria-labelledby="adminRegisterModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="adminRegisterModalLabel">Admin Registration</h5>
                <button type="button" class="btn-close text-sm" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="adminName" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="adminName" required>
                    </div>
                    <div class="mb-3">
                        <label for="adminEmail" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="adminEmail" aria-describedby="emailHelp" required>
                    </div>
                    <div class="mb-3" id="current-password-container" style="display: none">
                        <label for="adminCurrentPassword" class="form-label">Current Password</label>
                        <input type="password" class="form-control" id="adminCurrentPassword" required>
                    </div>
                    <div class="mb-3">
                        <label id="admin-password-label" for="adminPassword" class="form-label">Password</label>
                        <input type="password" class="form-control" id="adminPassword" required>
                    </div>
                    <div class="mb-3">
                        <label for="adminConfirmPassword" class="form-label">Confirm Password</label>
                        <input type="password" class="form-control" id="adminConfirmPassword" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary text-sm" data-dismiss="modal">Close</button>
                <button id="submit-button" type="submit" class="btn btn-primary text-sm">Register</button>
            </div>
        </div>
    </div>
</div>
<script>
    if (<%=isEdit%>){
        $('#adminRegisterModalLabel').html('Update Admin Information')
        $('#adminName').val("<%=adminName%>")
        $('#adminEmail').val("<%=adminEmailAddress%>")
        $('#current-password-container').css('display','block')
        $('#admin-password-label').html("New Password")
        $('#submit-button').html('Update')
    }
</script>
