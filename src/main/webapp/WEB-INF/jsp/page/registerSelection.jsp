<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
    <div class="registerSelection-main-content-sellvana">
        <button class="close-button-register-sellvana" onclick="
            var hoverScreenStyle = document.getElementById('hover-screen').style
            hoverScreenStyle.display = 'none';
            ">
            &times;
        </button>
        <div class="perspective">
            <div class="card">
                <div class="thumb" style="background-image: url(https://images.unsplash.com/photo-1478358161113-b0e11994a36b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a11da19e81415e5a81029aade9df7774&auto=format&fit=crop&w=668&q=80)"></div>
                <h2>Customer</h2>
                <span>Make orders within the platform</span>
            </div>
        </div>
    </div>
    </div>
</body>
<style>
    body {
        font-family: Inter;
        display: flex;
        align-items: center;
        justify-content: center;
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
        border-radius: 12px;
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
        top: 10px;
        left: 30px;
        font-size: 30px;
        font-weight: 100;
        transform: translateZ(80px);
        font-family: Inter;
        color: white;
        font-weight: 600;
    }
    .card span {
        position: absolute;
        left: 30px;
        bottom: 20px;
        font-size: 20px;
        font-weight: 500;
        transform: translateZ(35px);
        font-family: Inter;
        color: white;
        font-weight: 600;
    }

    .perspective {
        width: 100%;
        perspective: 1000px;
    }

    .registerSelection-main-content-sellvana{
        width: 1000px;
        margin: 0 auto;
    }

    .close-button-register-sellvana{
        position: absolute;
        right:30px;
        top:30px;
        font-size: 35px;
        width: 35px;
        height: 40px;
        border:none;
        border-radius: 5px;
        background-color: #A6E1FA;
        color: #424242;
        transition: all 0.2s ease-in;
        cursor: hand;
    }

    .close-button-register-sellvana:hover{
        background-color: grey;
        color:white;
    }
</style>
</html>
