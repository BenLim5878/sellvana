<!DOCTYPE html>
<html>
<head>
    <title>Login - E-commerce Website</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
    <form>
        <h1>Login</h1>
        <label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit">Login</button>
        <label>
            <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
    </form>
</div>
</body>
<style>
    body {
        background-color: #f2f2f2;
    }

    .container {
        background-color: #ffffff;
        border: 1px solid #c2c2c2;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        margin: auto;
        margin-top: 100px;
        max-width: 500px;
        padding: 20px;
    }

    h1 {
        text-align: center;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }
</style>
</html>
