<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String selectBoxFontSize = request.getParameter("selectBoxFontSize");
%>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400&display=swap" rel="stylesheet">
<div class="select-box">
  <div class="select-box__current" tabindex="1">
    <div class="select-box__value">
      <input class="select-box__input" type="radio" id="0" value="1" checked="checked" name="product-type">
      <p class="select-box__input-text">Blue</p>
    </div>
    <div class="select-box__value">
      <input class="select-box__input" type="radio" id="1" value="2" name="product-type">
      <p class="select-box__input-text">Red</p>
    </div>
    <div class="select-box__value">
      <input class="select-box__input" type="radio" id="2" value="3" name="product-type">
      <p class="select-box__input-text">Yellow</p>
    </div>
    <img class="select-box__icon" src="http://cdn.onlinewebfonts.com/svg/img_295694.svg" alt="Arrow Icon" aria-hidden="true">
  </div>
  <ul class="select-box__list">
    <li>
      <label class="select-box__option" for="0" aria-hidden="aria-hidden">Blue</label>
    </li>
    <li>
      <label class="select-box__option" for="1" aria-hidden="aria-hidden">Red</label>
    </li>
    <li>
      <label class="select-box__option" for="2" aria-hidden="aria-hidden">Yellow</label>
    </li>
  </ul>
</div>
<style>
  .select-box {
    position: relative;
    display: block;
    width: 100%;
    margin: 0 auto;
    font-family: 'Inter';
    font-style: normal;
    font-weight: 400;
    font-size: <%=selectBoxFontSize%>;
  }

  .select-box__current {
    position: relative;
    cursor: pointer;
    outline: none;
  }
  .select-box__current:focus + .select-box__list {
    opacity: 1;
    -webkit-animation-name: none;
    animation-name: none;
  }
  .select-box__current:focus + .select-box__list .select-box__option {
    cursor: pointer;
  }
  .select-box__current:focus .select-box__icon {
    transform: translateY(-50%) rotate(180deg);
  }
  .select-box__icon {
    position: absolute;
    top: 50%;
    right: 15px;
    transform: translateY(-50%);
    width: <%=selectBoxFontSize%>;
    opacity: 0.3;
    transition: 0.2s ease;
  }
  .select-box__value {
    display: flex;
  }
  .select-box__input {
    display: none;
  }
  .select-box__input:checked + .select-box__input-text {
    display: block;
  }
  .select-box__input-text {
    display: none;
    width: 100%;
    margin: 0;
    padding: 15px;
    background-color: transparent;
  }
  .select-box__list {
    position: absolute;
    width: 100%;
    padding: 0;
    list-style: none;
    opacity: 0;
    -webkit-animation-name: HideList;
    animation-name: HideList;
    -webkit-animation-duration: 0.5s;
    animation-duration: 0.5s;
    -webkit-animation-delay: 0.5s;
    animation-delay: 0.5s;
    -webkit-animation-fill-mode: forwards;
    animation-fill-mode: forwards;
    -webkit-animation-timing-function: step-start;
    animation-timing-function: step-start;
    box-shadow: 0 15px 30px -10px rgba(0, 0, 0, 0.1);
  }

  .select-box__option {
    display: block;
    padding: 15px;
    background-color: #fff;
    font-weight: 400 !important;
  }
  .select-box__option:hover, .select-box__option:focus {
    color: #546c84;
    background-color: #fbfbfb;
  }

  @-webkit-keyframes HideList {
    from {
      transform: scaleY(1);
    }
    to {
      transform: scaleY(0);
    }
  }

  @keyframes HideList {
    from {
      transform: scaleY(1);
    }
    to {
      transform: scaleY(0);
    }
  }
</style>
