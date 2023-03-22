<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String appAccent = application.getInitParameter("appAccent");
%>
<%
  String menuLocation = request.getParameter("menuLocation");
%>
<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/b26d39faa3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<div class="user-sideNavBar-menu-container-sellvana">
  <button id="sideMenu-home" class="user-sideNavBar-menu-button-sellvana">
    <i class="fa-solid fa-house"></i>
    <h3>Home</h3>
  </button>
  <button id="sideMenu-order" class="user-sideNavBar-menu-button-sellvana">
    <i class="fa-solid fa-clipboard-list"></i>
    <h3>My Order</h3>
  </button>
  <button id="sideMenu-setting" class="user-sideNavBar-menu-button-sellvana">
    <i class="fa-solid fa-gear"></i>
    <h3>Setting</h3>
  </button>
</div>
<script>
  $('#sideMenu-order').click(()=>{
    window.location.href="/app/order"
  })
</script>
<script>
  var menuExpanded =false;

  $('.user-sideNavBar-menu-container-sellvana').on('mouseover',()=>{
    $('.user-sideNavBar-menu-container-sellvana').css('animation','expandMenu');
    $('.user-sideNavBar-menu-container-sellvana').css('animation-duration','0.25s');
    menuExpanded = true;
  })

  $('.user-sideNavBar-menu-container-sellvana').on('mouseleave',()=>{
    menuExpanded = false;
    $('.user-sideNavBar-menu-button-sellvana h3').css('display','none');
    $('.user-sideNavBar-menu-container-sellvana').css('animation','shrinkMenu');
    $('.user-sideNavBar-menu-container-sellvana').css('animation-duration','0.25s');
  })

  $(".user-sideNavBar-menu-container-sellvana").on("webkitAnimationEnd oAnimationEnd msAnimationEnd animationend", function (e){
    if (menuExpanded){
      $('.user-sideNavBar-menu-button-sellvana h3').css('display','block');
    }
  })

  $('#sideMenu-<%=menuLocation%> i').css('color','#00DDAD')
  $('#sideMenu-<%=menuLocation%> h3').css('color','#00DDAD')

</script>
<style>
  @keyframes shrinkMenu {
    0%{
      width:187px;
    }
    100%{
      width: 60px;
    }
  }

  @keyframes expandMenu {
    0%{
      width:60px;
    }
    100%{
      width: 187px;
    }
  }


  .user-sideNavBar-menu-container-sellvana{
    overflow: hidden;
    display: flex;
    flex-direction: column;
    background-color: white;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.15);
    border-radius: 8.83101px;
    padding:11px 11px 20px 11px;
    position: fixed;
    z-index: 9998;
    gap: 20px;
    top: 125px;
    left:30px;
    width: auto;
  }

  .user-sideNavBar-menu-button-sellvana:hover h3{
    color: <%=appAccent%>;
  }

  .user-sideNavBar-menu-button-sellvana h3{
    font-family: Inter;
    font-style: normal;
    font-weight: 500;
    font-size: 17.315px;
    line-height: 26px;
    color: #526581;
    width: 110px;
    display: none;
    text-align: left;
    white-space: nowrap;
    overflow: hidden;
  }

  .user-sideNavBar-menu-button-sellvana:hover i{
    color: <%=appAccent%>;
  }

  .user-sideNavBar-menu-button-sellvana i{
    font-size: 24px;
    color: #8491A5;
    width: 30px;
    padding-right: 15px;
    transition: all 0.2s ease-in;
  }

  .user-sideNavBar-menu-button-sellvana{
    width: auto;
    display: flex;
    height:50px;
    flex-direction: row;
    align-items: center;
    gap:6px;
    padding:6px 0px 6px 15px;
    background-color: transparent;
    outline: none;
    justify-content: flex-start;
    cursor: pointer;
  }


</style>