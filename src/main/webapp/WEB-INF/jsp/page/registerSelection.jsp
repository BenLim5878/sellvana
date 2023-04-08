<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appAccent = application.getInitParameter("appAccent");
    String appAccentHover = application.getInitParameter("appAccentHover");
%>
<html>
<head>
    <title>Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
    <div class="registerSelection-main-content-sellvana">
        <button class="close-button-register-sellvana" onclick="
            var hoverScreenStyle = document.getElementById('hover-screen').style
            hoverScreenStyle.display = 'none';
            ">
            &times;
        </button>
        <h2>Register as:</h2>
        <div class="card-container-sellvana">
            <div id="buyer-card">
                <div class="animate__animated animate bounce card " style="width: 18rem;">
                    <div class="container mt-3">
                        <img src="/app/img/buyer-illustration-img.png" class="card-img-top " alt="..."></div>
                    <div class="card-body">
                        <h5 class="card-title ms-1">Customer</h5>
                        <p class="card-text mb-5 ms-1">Browse and shop items across the platform</p>

                        <a class="btn mb-1 mt-1 ">Register</a>
                    </div>
                </div>
            </div>
            <div id="seller-card">
                <div class="animate__animated animate bounce card " style="width: 18rem;">
                    <div class="container mt-3">
                        <img src="/app/img/seller-illustration-img.png" class="card-img-top " alt="..."></div>
                    <div class="card-body">
                        <h5 class="card-title ms-1">Seller</h5>
                        <p class="card-text mb-5 ms-1">Sell and reach your customer across the platform</p>

                        <a class="btn mb-1 mt-1 ">Register</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    $('#buyer-card').click(()=>{
        window.location.href = "/app/register/user"
    })

    $('#seller-card').click(()=>{
        window.location.href = "/app/register/seller"
    })
</script>
<style>
    h2{
        font-family:Inter;
        font-weight: 600;
        font-size: 26.5px;
        color: #313131
    }

    .card-container-sellvana{
        display: flex;
        flex-direction: row;
        width: 100%;
        justify-content: space-between;
        gap: 100px;
    }

    body {
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0px;
        padding:0px;
    }


    .registerSelection-main-content-sellvana{
        width: 700px;
        margin: 0 auto;
        display: flex;
        flex-direction: column;
        gap: 30px;
        align-items: flex-start;
        justify-content: space-between;
    }

    .close-button-register-sellvana{
        position: absolute;
        right:550px;
        top:200px;
        font-size: 35px !important;
        width: 35px;
        height: 35px;
        border:none;
        border-radius: 5px;
        background-color: #A6E1FA;
        color: #424242;
        transition: all 0.2s ease-in;
        cursor: hand;
        line-height: 0px !important;
        font-family: Inter;
        display: flex;
        justify-content: center;
        align-items: center;
        padding-bottom: 6px;
    }

    .close-button-register-sellvana:hover{
        background-color: grey;
        color:white;
    }
</style>
<style>
    .card {
        border-radius: 15px;
        overflow: hidden;
        border: 0;
        box-shadow: 0 2px 20px rgba(0, 0, 0, 0.06),
        0 2px 4px rgba(0, 0, 0, 0.07);
        transition: all 0.15s ease;
    }

    .card:hover {
        box-shadow: 0 6px 30px rgba(0, 0, 0, 0.1),
        0 10px 8px rgba(0, 0, 0, 0.015);
    }

    .card-body .card-title {
        font-family: Inter;
        font-weight: 700;
        letter-spacing: 0.3px;
        font-size: 24px;
        color: #121212;
    }

    .card-text {
        font-family: Inter;
        font-weight: 400;
        font-size: 15px;
        letter-spacing: 0.3px;
        color: #4E4E4E;

    }

    .card .container {
        width: 88%;
        background: #d2edff;
        border-radius: 15px;
        height: 140px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .container:hover > img {
        transform: scale(2.8);
    }

    .container img {
        padding: 75px;
        margin-top: -40px;
        margin-bottom: -40px;
        transition: 0.4s ease;
        cursor: pointer;
        transform: scale(2.5);
    }

    .btn {
        background: <%=appAccent%>;
        border: 0;
        color: white;
        width: 98%;
        font-weight: bold;
        border-radius: 6px;
        height: 40px;
        transition: all 0.2s ease;
        font-family: Inter !important;
    }

    .btn:focus {
        outline: 0;
    }
</style>
</html>
