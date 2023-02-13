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
    </style>
</head>
<body>
<h1>Welcome to DigiTech</h1>
<div class="container">
    <p>We are a group of internet marketers, web designers and digital marketing experts.</p>
    <p>Our focus is providing value to our clients using a holistic marketing approach.</p>
    <p>We help you grow online and start getting results within days with honest reporting and quality customer service.</p>
</div>
</body>
</html>
