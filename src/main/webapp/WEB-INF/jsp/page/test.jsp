<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Card 3D view Parallax</title>
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>

<body>

<div id="top">
    <div class="perspective">
        <div class="card">
            <div class="thumb" style="background-image: url(https://images.unsplash.com/photo-1478358161113-b0e11994a36b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a11da19e81415e5a81029aade9df7774&auto=format&fit=crop&w=668&q=80)"></div>
            <h2>Virtual Reality</h2>
            <span>Dreaming with your eyes open!</span>
        </div>
    </div>
</div>

<div class="dribbble">
    <a href="https://dribbble.com/albanbujupaj" target="_blank">
        <span class="icon"><img width="30" src="https://image.flaticon.com/icons/svg/179/179316.svg" alt=""></span><span class="caption">follow me on dribbble</span></a>
</div>
</body>
<script>
    var o = $(".card");
    $("#top").on("mousemove", function (t) {
        var e = -($(window).innerWidth() / 2 - t.pageX) / 30,
            n = ($(window).innerHeight() / 2 - t.pageY) / 10;
        o.attr("style", "transform: rotateY(" + e + "deg) rotateX(" + n + "deg);-webkit-transform: rotateY(" + e + "deg) rotateX(" + n + "deg);-moz-transform: rotateY(" + e + "deg) rotateX(" + n + "deg)")
    })

</script>
<style>
    body {
        background: linear-gradient(to right, #ffffff, #f8dce2);
        font-family: "Varela Round", sans-serif;
        color: #fff;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .perspective {
        width: 100%;
        perspective: 1000px;
    }

    #top {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: auto;
    }

    .card {
        width: 270px;
        height: 413px;
        margin: auto;
        box-shadow: 0 70px 63px -60px #494848;
        transform-style: preserve-3d;
        transition: transform 0.05s linear;
    }
    .card .thumb {
        background-size: cover;
        height: 100%;
        width: 100%;
        border-radius: 15px;
    }
    .card .thumb:after {
        background: inherit;
        content: "";
        display: block;
        position: absolute;
        left: -60px;
        top: 40px;
        width: 100%;
        height: 108%;
        z-index: -1;
        filter: blur(55px);
    }
    .card h2 {
        position: absolute;
        top: 0;
        left: -60px;
        font-size: 40px;
        font-weight: 100;
        transform: translateZ(80px);
    }
    .card span {
        position: absolute;
        bottom: 40px;
        right: -280px;
        font-size: 37px;
        font-weight: 600;
        transform: translateZ(35px);
    }

    .dribbble {
        position: fixed;
        top: 25px;
        right: 25px;
    }
    .dribbble > a {
        font-size: 12px;
        text-transform: uppercase;
        text-decoration: none;
        color: #ec4989;
    }

    img {
        margin: auto;
        display: block;
        border-radius: 15px;
    }
</style>
</html>
