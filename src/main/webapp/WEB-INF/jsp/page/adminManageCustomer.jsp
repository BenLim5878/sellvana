<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ServletContext context = getServletConfig().getServletContext();
  String appAccent =context.getInitParameter("appAccent");
  String appAccentHover=context.getInitParameter("appAccentHover");
%>
<%
  String customerName = "";
  if (request.getParameter("customerName") != null){
    customerName = request.getParameter("customerName");
  }
%>
<html>
<head>
  <title>Homepage</title>
  <script src="/app/js/utility.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
  <jsp:include page="/WEB-INF/jsp/component/adminNavBar.jsp"></jsp:include>
  <div class="main-wrapper">
    <header class="bg-surface-primary border-bottom pt-6 pb-6">
      <div class="container-fluid">
        <div class="mb-npx">
          <div class="row align-items-center">
            <div class="col-sm-6 col-12 mb-4 mb-sm-0">
              <h1 class="h3 mb-0 ls-tight">Manage Customer</h1>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="container-fluid">
      <div class="row g-6 mb-6 mt-2">
        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card shadow border-0">
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total customers</span>
                  <span class="h3 font-bold mb-0">2,321</span>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                    <i class="bi bi-person-circle"></i>
                  </div>
                </div>
              </div>
              <div class="mt-2 mb-0 text-sm">
                                    <span class="badge badge-pill bg-soft-success text-success me-2">
                                        <i class="bi bi-arrow-up me-1"></i>13%
                                    </span>
                <span class="text-nowrap text-xs text-muted">Since last month</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="card shadow border-0 mb-7 customer-table">
        <div class="card-header">
          <h5 class="mb-0">Customer Table</h5>
        </div>
        <div class="container mt-5 mb-5">
          <div class="row">
            <div class="col-md-8 offset-md-2">
              <form class="d-flex">
                <input id="search-input" class="form-control me-2 text-sm" type="search" placeholder="Search customer by name" aria-label="Search">
                <button id="search-submit-button" class="btn btn-bg-primary btn-outline-primary text-sm" type="submit">Search</button>
              </form>
            </div>
          </div>
        </div>
        <div class="table-responsive">
          <table class="table table-hover table-nowrap">
            <thead class="thead-primary">
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Email address</th>
              <th scope="col">Telephone Number</th>
              <th scope="col">Created On</th>
              <th></th>
            </tr>
            </thead>
            <tbody>
              <jsp:include page="/WEB-INF/jsp/component/customerListItem.jsp">
                <jsp:param name="customerID" value="1"/>
                <jsp:param name="customerName" value="Daniel Wong"/>
                <jsp:param name="customerEmailAddress" value="shuaike@gmail.com"/>
                <jsp:param name="customerTelephoneNumber" value="011-39987039"/>
                <jsp:param name="customerCreationDate" value="26 DEC 2001"/>
              </jsp:include>
              <jsp:include page="/WEB-INF/jsp/component/customerListItem.jsp">
                <jsp:param name="customerID" value="2"/>
                <jsp:param name="customerName" value="Ben Lim"/>
                <jsp:param name="customerEmailAddress" value="shuaike@gmail.com"/>
                <jsp:param name="customerTelephoneNumber" value="011-39987039"/>
                <jsp:param name="customerCreationDate" value="26 DEC 2001"/>
              </jsp:include>
            </tbody>
          </table>
        </div>
        <div class="card-footer border-0 py-5">
          <span id="total-result" class="text-muted text-sm">Showing 0 results found</span>
        </div>
      </div>
      <div id="empty-div"></div>
    </div>
  </div>
  <div class="modal fade" id="confirmRemoveCustomerModal" tabindex="-1" aria-labelledby="confirmRemoveCustomerModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title text-danger d-flex align-items-center warning-container" id="confirmRemoveCustomerModalLabel">
            <i class="bi bi-exclamation-triangle-fill"></i> Warning
          </h5>
          <button type="button" class="btn-close text-sm" data-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          Are you sure you want to remove this customer?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary text-sm" data-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-danger text-sm">Remove</button>
        </div>
      </div>
    </div>
  </div>
</body>
<script>
  $(document).ready(()=>{
    var rowCount =  $('tbody').children().length
    $('#total-result').html("Showing "+rowCount+" results found")
  })

</script>
<script>
  $('#search-submit-button').click((e)=>{
    e.preventDefault();
    var searchVal = $('#search-input').val()
    window.location.href= "/app/admin/manage/customer?customerName="+encodeURIComponent(searchVal)
  })

  function namesContainCharacter(names, character) {
    return names.toLowerCase().includes(character.toLowerCase())
  }

  var filterString = "<%=customerName%>"

  if (filterString.length > 0){
    $('.customer-name').each(function(){
      var customerName = $(this).html();
      if (namesContainCharacter(customerName,filterString)){
      }else{
        $(this).parent().remove()
      }
    })
  }
</script>
<script>
  $('.action-button').on('mouseover',function(){
    var customerName =  $(this).parent().parent().children('.customer-name').children('#customer-name').html();
    var customerEmailAddress =  $(this).parent().parent().children('.customer-email').html();
    var customerTelephoneNumber =  $(this).parent().parent().children('.customer-telephoneNumber').html();
    $('#empty-div').load('/app/component/customerAccountFormModal.jsp?isEdit=true&customerName='+ encodeURIComponent(customerName)+"&customerEmailAddress="+encodeURIComponent(customerEmailAddress)+"&customerTelephoneNumber="+encodeURIComponent(customerTelephoneNumber))
  })
</script>
<style>
  .warning-container{
    gap: 10px;
  }

  .add-button{
    position: absolute;
    top: 226px;
    left: 1162px;
  }

  .customer-table{
    width: 1100px;
  }

  .main-wrapper{
    width: auto;
    margin-left: 269px;
    padding-bottom:40px;
    background-color: transparent;
  }
</style>
</html>
