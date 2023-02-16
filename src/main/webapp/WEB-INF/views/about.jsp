<html>
<head>
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
            text-align: center;
        }
        h1 {
            font-size: 36px;
            color: #333;
            margin-top: 50px;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            text-align: left;
            padding: 50px;
            background-color: #fff;
            box-shadow: 0px 0px 10px #ccc;
        }

        .call-for-reservation {
            background-color: #333;
            color: #fff;
            padding: 20px;
            font-size: 24px;
            text-decoration: none;
            margin-top: 50px;
            display: inline-block;
        }

        .call-for-reservation:hover {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
    </style>
    <title>About Us</title>
</head>
<body>
<h1>About Digitech</h1>
<div class="container">
    <p>We are a group of internet marketers, web designers, and digital marketing experts.</p>
    <p>Our focus is and has always been providing value to our clients using a holistic marketing approach. We specialize in a wide range of marketing channels, including content, SEO, social media boosting, and email marketing, to give you a complete solution for your business growth.</p>
    <p>At Digitech, we understand that every business is unique and requires a tailored approach. That's why we work closely with our clients to understand their needs and goals, and develop a customized plan to help them achieve their desired results.</p>
    <p>Join us on our mission to help businesses grow and succeed in the digital world. Let us take your business to the next level with our expertise and comprehensive approach to marketing.</p>
    <a class="call-for-reservation" onclick="alert('call us at: +60 11-64374797')">Call for Reservation</a>
</div>
</body>
</html>