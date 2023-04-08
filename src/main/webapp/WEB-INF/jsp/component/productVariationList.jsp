<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
  String appAccentLight = application.getInitParameter("appAccentLight");
%>
<%
  Boolean isDefault = Boolean.parseBoolean(request.getParameter("isDefault"));
  String variationName = request.getParameter("variationName");
  String variationTitle = request.getParameter("variationTitle");
  String variationPrice = request.getParameter("variationPrice");
%>
<div id="variation-list-<%=variationName%>" class="variation-table-content content">
  <meta name="variation-name" content="<%=variationName%>">
  <div class="column-main variation-title-container">
    <input id="variation-title-<%=variationName%>" value="<%=variationTitle%>">
    <span id="default-label-<%=variationName%>" class="default-label">Default</span>
  </div>
  <input id="variation-price-<%=variationName%>" class="column-sub" value="<%=variationPrice%>">
  <div>
    <button id="default-button-<%=variationName%>" class="column-sub default-button">Set as Default</button>
  </div>
  <button id="remove-variation-button-<%=variationName%>" class="column-sub remove-variation-button"><i class="fa-solid fa-trash"></i></button>
  <script>
    $('#default-button-<%=variationName%>').click(()=>{
      setDefault(<%=variationName%>)
    })
  </script>
  <script>
    function refreshButton(variationName,isDefault){
      if (isDefault){
        $('#default-label-'+variationName).css('display','block')
        $('#default-button-'+variationName).css('display','none')
        $('#remove-variation-button-'+variationName).css('display','none')
      }else{
        $('#default-label-'+variationName).css('display','none')
        $('#default-button-'+variationName).css('display','block')
        $('#remove-variation-button-'+variationName).css('display','block')
      }
    }

    $('#remove-variation-button-<%=variationName%>').click(()=>{
      $('#variation-list-<%=variationName%>').remove();
      variationCount--;
    })

    $('#variation-price-<%=variationName%>').on('focusout',function(){
      // remove non-numeric characters and leading zeros
      $(this).val($(this).val().replace(/[^0-9\.]/g,'').replace(/(\.(?=.*\.))/g, '').replace(/^0+/,''));

      // add "RM " to the beginning of the input
      $(this).val('RM ' + $(this).val());

      // check if the input contains a decimal point and no numbers after it
      var val = $(this).val();
      var decimalIndex = val.indexOf(".");
      if(decimalIndex != -1){
        var decimalLength = val.substr(decimalIndex+1).length;
        if(decimalLength == 0){
          $(this).val(val.substr(0, decimalIndex));
        }
      }
    })

    $('#variation-price-<%=variationName%>').on('input',function(){
      // remove non-numeric characters and leading zeros
      $(this).val($(this).val().replace(/[^0-9\.]/g,'').replace(/(\.(?=.*\.))/g, '').replace(/^0+/,''));

      // add "RM " to the beginning of the input
      $(this).val('RM ' + $(this).val());

      // limit the input to 2 decimal places
      var val = $(this).val();
      var decimalIndex = val.indexOf(".");
      if(decimalIndex != -1){
        var decimalLength = val.substr(decimalIndex+1).length;
        if(decimalLength > 2){
          $(this).val(val.substr(0, decimalIndex+3));
        }
      }
    })

    refreshButton(<%=variationName%>,<%=isDefault%>)
  </script>
  <style>
    .remove-variation-button i{
      color: white;
    }

    .remove-variation-button:hover{
      background-color: #d32b58;
    }

    .remove-variation-button{
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 7px 10px;
      outline: none;
      border:none;
      background-color: #ff336b;
      cursor:pointer;
      border-radius: 4px;
      box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
      transition: all 0.2s ease-in;
    }

    .column-sub.default-button:hover{
      transform: scale(1.05);
    }

    .column-sub.default-button{
      padding: 10px 20px;
      background-color: <%=appAccent%>;
      color:white;
      cursor: pointer;
      outline: none;
      border:none;
      box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
      border-radius: 6px;
      font-family: Inter;
      font-style: normal;
      font-weight: 400;
      font-size: 13.5px;
      transition: all 0.2s ease-in;
    }

    .variation-table-content input{
      padding: 10px 5px;
      font-family: Inter;
      font-style: normal;
      font-weight: 400;
      font-size: 15.5px;
      color: #3b3b3b;
      outline: none;
      border: 1px solid #e3e3e3;
    }

    .variation-title-container{
      display: flex;
      flex-direction: row;
      align-items: center;
      width: 100%;
    }

    .variation-title-container input{
      width: 350px;
    }
  </style>
</div>