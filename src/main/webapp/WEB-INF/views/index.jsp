<%@ page import="digitech.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to DigiTech</title>
    <jsp:include page="header.jsp"/>
    <style>
        header {
            background-color: #f2f2f2;
            padding: 20px;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }

        .logo {
            flex-basis: 20%;
        }

        .logo img {
            height: 100px;
            width: 100px;
        }

        .header-right {
            flex-basis: 80%;
            text-align: right;
        }

        .user-info {
            margin-right: 20px;
        }

        .user-name {
            font-weight: bold;
        }

        .logout-btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        nav {
            background-color: #333;
            overflow: hidden;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        nav li {
            float: left;
        }

        nav a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #ddd;
            color: black;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
        }

        .container {
            width: 60%;
            margin: auto;
            text-align: center;
            padding: 50px;
        }

        p {
            font-size: 18px;
            line-height: 1.5;
        }

        .button {
            display: inline-block;
            border-radius: 4px;
            background-color: #4CAF50;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 28px;
            padding: 20px;
            width: 200px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }

        .button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        .button span:after {
            content: '\00bb';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }

        .button:hover span {
            padding-right: 25px;
        }

        .button:hover span:after {
            opacity: 1;
            right: 0;
        }
    </style>
</head>
<body>
<h1>Welcome to DigiTech</h1>
<div class="container">
    <p>We are a group of internet marketers, web designers and digital marketing experts.</p>
    <p>Our focus is providing value to our clients using a holistic marketing approach.</p>
    <p>We help you grow online and start getting results within days with honest reporting and quality customer
        service.</p>
    <% User user = (User) request.getSession().getAttribute("user");
        if (user == null) {%>
    <div class="buttons">
        <a href="/login" class="button" style="text-decoration: none">Login</a>
        <a href="/signup" class="button" style="text-decoration: none">Sign Up</a>
    </div>
    <%}%>
</div>
</body>
</html>
