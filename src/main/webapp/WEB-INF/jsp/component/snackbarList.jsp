<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .hidden{
        display: none !important;
    }

    @keyframes swipeLeft {
        0%{
            transform: translateX(200px);
        }

        100%{
            transform: translateX(0px);
        }
    }

    .snackbar-list-sellvana div:hover{
        background-color: #f6f6f6 !important;
        box-shadow: 0px 1px 8px rgba(0, 0, 0, 0.18);
    }

    .snackbar-error{
        color: #ea124d;
    }

    .snackbar-tick{
        color: #13e773;
    }

    .snackbar-list-sellvana div i{
        font-size: 19px;
    }

    .snackbar-list-sellvana div h4{
        color: #1D3557;
        font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 16px;
        margin-right: 10px;
    }

    .snackbar-list-sellvana button i{
        color: grey !important;
        font-size: 16.5px !important;
    }

    .snackbar-list-sellvana button{
        padding: 5px;
        background-color: transparent;
    }

    .snackbar-list-sellvana div{
        height: 20px;
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 15px;
        box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.18);
        padding: 15px 17px;
        border-radius: 7px;
        transition: all 0.2s ease-in;
        cursor: pointer;
    }

    .snackbar-tick{
        background-color: #ffffff;
    }

    .snackbar-list-sellvana{
        display: flex;
        flex-direction: column;
        position: absolute;
        right: 2%;
        margin-top: 1.4%;
        gap: 15px;
    }

    @keyframes moveUp {
        0%{
            transform: translateY(60px);
        }

        100%{
            transform: translateY(0px);
        }
    }

    .moveUp{
        animation-name:moveUp !important;
        animation-duration:200ms !important;
        animation-timing-function:linear !important;
    }

    .swipeLeft{
        animation-name:swipeLeft !important;
        animation-duration:200ms !important;
        animation-timing-function:ease-out !important;
    }

    body{
        overflow-x: hidden;
    }
</style>
<div class="snackbar-list-sellvana">
    <div id="snackBar-tick" class="snackbar-tick hidden">
        <i class="fa-regular fa-circle-check"></i>
        <h4></h4>
        <button><i class="fa-solid fa-xmark"></i></button>
    </div>
    <div id="snackBar-error" class="snackbar-error hidden">
        <i class="fa-regular fa-circle-xmark"></i>
        <h4></h4>
        <button><i class="fa-solid fa-xmark"></i></button>
    </div>
</div>
<script>
    var snackBarCount = 0;

    const snackBarType = {
        tick: 1,
        error: 2
    }

    function addSnack(type, text){
        snackBarCount++;
        var snackBar = null;
        switch (type){
            case snackBarType.tick:
                snackBar = $('#snackBar-tick');
                break;
            case snackBarType.error:
                snackBar = $('#snackBar-error');
                break;
        }
        //
        var newSnackBar = snackBar.clone();
        newSnackBar.removeClass('hidden')
        newSnackBar.addClass('snackBar')
        newSnackBar.addClass('swipeLeft')
        newSnackBar.children('h4').html(text)
        newSnackBar.attr("id","snackBar"+snackBarCount)
        newSnackBar.prependTo($(".snackbar-list-sellvana"))
        setTimeout(()=>{
            removeSnackBar(newSnackBar)
        },5000)
        //
        $('.snackbar-list-sellvana').children('.snackBar').each(function(){
            $(this).on('animationend',function(){
                if ($(this).css('animation-name') == 'moveUp'){
                    $(this).removeClass('moveUp')
                } else if ($(this).css('animation-name') == 'swipeLeft'){
                    $(this).removeClass('swipeLeft')
                }
            })
        })
        //
        $('.snackBar').click(function (){
            removeSnackBar($(this))
        })
    }
</script>
<script>
    function refreshListRemove(index){
        $('.snackbar-list-sellvana').children('.snackBar').each(function(){
            if ($(this).index() >= index){
                $(this).addClass("moveUp")
            }
        })
    }

    function removeSnackBar(element){
        var elementPos = element.index();
        element.remove()
        refreshListRemove(elementPos)
    }
</script>