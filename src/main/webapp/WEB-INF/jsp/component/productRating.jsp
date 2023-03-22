<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String ratingValue = request.getParameter("ratingValue");
  String ratingName = request.getParameter("ratingName");
  String ratingSize = request.getParameter("ratingSize");
%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<div class="<%=ratingName%>-small-ratings">
  <i id="<%=ratingName%>-rating-1" class="fa fa-star"></i>
  <i id="<%=ratingName%>-rating-2" class="fa fa-star"></i>
  <i id="<%=ratingName%>-rating-3" class="fa fa-star"></i>
  <i id="<%=ratingName%>-rating-4" class="fa fa-star"></i>
  <i id="<%=ratingName%>-rating-5" class="fa fa-star"></i>
</div>
<script>
  var rating = parseInt(<%=ratingValue%>);
  while (rating > 0){
    $('#<%=ratingName%>-rating-'+rating).addClass('rating-color');
    rating -= 1;
  }
</script>
<style>
  .rating-color{
    color:#fbc634 !important;
  }

  .<%=ratingName%>-small-ratings i{
    color:#cecece;
    font-size: <%=ratingSize%>;
  }

</style>