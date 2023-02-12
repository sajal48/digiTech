<html>
<head>
    <title>Index page</title>
    <%@ include file="header.jsp" %>
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
        .logo img{
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

    </style>
</head>

<body>
<h2>Hello World!</h2>
<%String name=(String) request.getAttribute("name"); %>
<p>Hi! My name is <%=name%></p>
<p>Image:</p>
<%--<img src="/WEB-INF/res/about.jpg" alt="your image">--%>
<%--<img src="images/about.jpg" alt="your image">--%>
<%--<img src="/images/about.jpg" alt="your image">--%>
<img src="<%=request.getContextPath()%>/images/about.jpg" alt="your image">
</body>
</html>
