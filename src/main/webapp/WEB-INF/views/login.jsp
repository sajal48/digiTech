<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        /* Add some styling for the page */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            text-align: center;
        }
        h2 {
            margin: 50px 0 30px;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 0 auto 50px;
            max-width: 600px;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
        p {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Login</h2>
    <div class="form-container">
        <form action="/events" method="post">
            <input type="text" id="email" name="email" placeholder="email">
            <br>
            <input type="password" id="password" name="password" placeholder="password">
            <br>
            <input type="submit" value="Login" class="btn">
        </form>
        <div class="signup-container">
            <p>Don't have an account? <a href="/signup">Sign Up</a></p>
        </div>
    </div>
</div>
</body>
</html>
