<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<%
  ServletContext context = getServletConfig().getServletContext();
  String appAccent = context.getInitParameter("appAccent");
%>
<%
  String inputValue = "";
  String title = request.getParameter("title");
  String inputType = request.getParameter("inputType");
  String inputName = request.getParameter("inputName");
  String inputWidth = request.getParameter("inputWidth");
  String inputHeight = request.getParameter("inputHeight");
  String inputFontSize = request.getParameter("inputFontSize");
  String inputErrorMessage = request.getParameter("inputErrorMessage");
  if (request.getParameter("inputValue") != null){
    inputValue = request.getParameter("inputValue");
  }
%>
<div>
  <h5 class="input-title-sellvana"><%=title%></h5>
  <div class="input-content-sellvana">
    <input id="<%=inputName%>" class="input-sellvana" type=<%=inputType%> name=<%=inputName%> value="<%=inputValue%>">
    <span id="tooltip-<%=inputName%>"  class="input-tooltip-sellvana">
      <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewBox="0 0 24 24" fill="none"><path fill-rule="evenodd" clip-rule="evenodd" d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2 2 6.477 2 12s4.477 10 10 10zm-1.5-5.009c0-.867.659-1.491 1.491-1.491.85 0 1.509.624 1.509 1.491 0 .867-.659 1.509-1.509 1.509-.832 0-1.491-.642-1.491-1.509zM11.172 6a.5.5 0 0 0-.499.522l.306 7a.5.5 0 0 0 .5.478h1.043a.5.5 0 0 0 .5-.478l.305-7a.5.5 0 0 0-.5-.522h-1.655z" fill="red"/></svg>
      <%=inputErrorMessage%>
    </span>
  </div>
</div>
<script>
  $('#<%=inputName%>').on('mouseenter',()=>{
    if ($('#<%=inputName%>').attr('class') == 'input-sellvana error'){
      $('#tooltip-<%=inputName%>').addClass('tooltip-show')
    }
  })

  $('#<%=inputName%>').on('mouseout',()=>{
    $('#tooltip-<%=inputName%>').removeClass('tooltip-show')
  })
</script>
<style>
  .input-content-sellvana input::-webkit-outer-spin-button,
  .input-content-sellvana input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
  }

  /* Firefox */
  .input-content-sellvana input[type=number] {
    -moz-appearance: textfield;
  }

  .input-tooltip-sellvana {
    position: absolute;
    display: flex;
    flex-direction: row;
    align-items: center;
    width:auto;
    max-width: 280px;
    font-family: Inter;
    font-weight: 400;
    margin-top: 7px;
    font-size: 14px;
    background: #ffffff;
    gap:10px;
    color: #ff4b4b;
    padding: 8px 10px;
    border-radius: 5px;
    box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
    opacity: 0;
    pointer-events: none;
    transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
  }

  .input-tooltip-sellvana.tooltip-show {
    opacity: 100%;
    visibility: visible;
    pointer-events: auto;
  }

  .input-title-sellvana{
    font-family: Inter;
    font-style: normal;
    font-weight: 400;
    font-size: 18.0498px;
    line-height: 22px;
    color: #4A5568;
  }

  #<%=inputName%>{
    width: <%=inputWidth%>;
    height:<%=inputHeight%>;
  }

  .input-sellvana {
    margin-top:12px;
    font-family: Inter;
    font-weight: 100;
    background-color: #FFFFFF;
    color: #212121;
    font-size: <%=inputFontSize%>;
    padding: .15rem .5rem;
    border-radius: 4px;
    outline: none;
    border: 1.13px solid #BDBDBD;
  }

  .input-sellvana.error {
    border: 1.13px solid red !important;
  }

  .input-sellvana.error:focus{
    border: 1.13px solid red !important;
  }

  .input-sellvana.error:hover{
    border: 1.13px solid red !important;
  }

  .input-content-sellvana input:focus {
    border: 1.13px solid <%=appAccent%>;
  }

  .input-content-sellvana input:hover {
    border: 1.13px solid <%=appAccent%> !important;
  }
</style>