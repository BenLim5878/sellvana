<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
  String appAccentHover = application.getInitParameter("appAccentHover");
%>
<%
  Boolean isAddressSelection = false;
  String addressID = request.getParameter("addressID");
  String addressName = request.getParameter("addressName");
  String addressFirstLine = request.getParameter("addressFirstLine");
  String addressSecondLine = request.getParameter("addressSecondLine");
  String addressThirdLine = request.getParameter("addressThirdLine");
  Boolean isDefault =  Boolean.parseBoolean(request.getParameter("isDefault"));

  if (request.getParameter("isAddressSelection") != null){
    isAddressSelection = Boolean.parseBoolean(request.getParameter("isAddressSelection"));
  }
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<div class="address-list-sellvana">
  <h6 style="display: none" class="meta-addressID"><%=addressID%></h6>
  <div class="address-left-list-sellvana">
    <h3 class="address-name"><%=addressName%></h3>
    <div class="address-content-line">
      <h4><%=addressFirstLine%></h4>
      <h4><%=addressSecondLine%></h4>
      <h4><%=addressThirdLine%></h4>
    </div>
    <div id="default-label-address-<%=addressID%>" class="address-default-label">
      <h5>Default</h5>
    </div>
  </div>
  <div class="address-right-list-sellvana">
    <button class="address-edit-button-sellvana">Edit</button>
    <button id="set-default-button-address-<%=addressID%>" class="address-set-default-button-sellvana">Set as default</button>
  </div>
  <input type="radio" id="select-address-radio-address-<%=addressID%>" name="select-address-radio-address-<%=addressID%>" value="<%=addressID%>">
</div>
<script>
  $('#set-default-button-address-<%=addressID%>').click(()=>{
    refreshButton(<%=addressID%>,true);
    refreshList(<%=addressID%>);
  })

  $('#select-address-radio-address-<%=addressID%>').click(()=>{
    refreshButton(<%=addressID%>,<%=isDefault%>,true,true);
    refreshList(<%=addressID%>);
  })

  function refreshButton(addressID,isDefault,isAddressSelection = false,isAddressSelected =false){
    if (isAddressSelection){
      if (isAddressSelected){
        $('#select-address-radio-address-'+addressID).prop("checked",true)
      }else {
        $('#select-address-radio-address-'+addressID).prop("checked",false)
      }
      if (isDefault){
        $('#default-label-address-'+addressID).css('display','block')
      } else {
        $('#default-label-address-'+addressID).css('display','none')
      }
    } else {
      if (isDefault){
        $('#default-label-address-'+addressID).css('display','block')
        $('#set-default-button-address-'+addressID).css('display','none')
      } else {
        $('#default-label-address-'+addressID).css('display','none')
        $('#set-default-button-address-'+addressID).css('display','block')
      }
    }
  }

  function refreshListStyle(element,isSelected){
    if (isSelected){
      element.addClass('address-selected')
    } else {
      element.removeClass('address-selected')
    }
  }
</script>
<script>
  if (<%=isAddressSelection%>){
    $('.address-right-list-sellvana').css('display','none')
    $('#select-address-radio-address-<%=addressID%>').css('display','block')
  } else {
    $('#select-address-radio-address-<%=addressID%>').css('display','none')
  }

  if (<%=isDefault%>){
    refreshButton(<%=addressID%>,<%=isDefault%>,<%=isAddressSelection%>,true)
    refreshListStyle($('.address-list-sellvana'),true)
  } else {
    refreshButton(<%=addressID%>,<%=isDefault%>,<%=isAddressSelection%>,false)
  }
</script>
<style>
  .address-selected{
    background-color: rgba(231, 231, 231, 0.35);
  }

  .address-right-list-sellvana{
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    justify-content: center;
    gap: 20px;
  }

  .address-right-list-sellvana .address-set-default-button-sellvana:hover{
    background-color: <%=appAccentHover%>;
  }

  .address-right-list-sellvana .address-set-default-button-sellvana{
    padding: 5px 7px;
    border: none;
    background-color: <%=appAccent%>;
    color: white;
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 15px;
    border-radius: 3px;
    box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.2);
    transition: all 0.2s ease-in;
  }

  .address-right-list-sellvana .address-edit-button-sellvana{
    padding: 5px 7px;
    border: none;
    color: <%=appAccent%>;
    outline: none;
    background-color: transparent;
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 15px;
  }

  .address-list-sellvana{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    padding: 23px;
    box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
  }

  .address-left-list-sellvana .address-default-label h5{
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    color: <%=appAccent%>;
  }

  .address-left-list-sellvana .address-default-label{
    padding: 5px 7px;
    border: 1px solid <%=appAccent%>;
    width: 50px;
    border-radius: 4px;
  }

  .address-left-list-sellvana .address-name{
    font-family:Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 17px;
    color: #252525;
  }

  .address-content-line h4{
    font-family:Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    color: #3f3f3f;
  }

  .address-content-line{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    gap: 5px;
    margin: 13px 0px 10px;
  }
</style>
<style>
    input[type="radio"] {
      position: relative;
      appearance: none;
      -webkit-appearance: none;
      transition: linear 0.8s;
      height: 0;
      width: 0;
      -webkit-tap-highlight-color: transparent;
    }

    input[type="radio"]:after {
    content: "";
    position: absolute;
    height: 12px;
    width: 12px;
    top: -10.5px;
    left: -30px;
    border-radius: 20px;
    border: 2px solid <%=appAccent%>;
    transition: linear 0.2s;
    cursor: pointer;
  }

   input[type="radio"]:checked:after {
    content: "";
    position: absolute;
    height: 12px;
    width: 12px;
    background: <%=appAccent%>;
    transition: linear 0.2s;
    cursor: pointer;
  }

   input[type="radio"]:checked:before {
    content: "";
    position: absolute;
    height: 6px;
    width: 6px;
    border-radius: 3px;
    background: #fff;
    left: -25px;
    top: -5.5px;
    z-index: 1;
    cursor: pointer;
  }
</style>