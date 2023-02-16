<%--
  Created by IntelliJ IDEA.
  User: BJIT
  Date: 2/16/2023
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="header.jsp"/>
    <title>Registered User list</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Style the table headers */
        th {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
        }

        /* Style the table cells */
        td {
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }
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
    </style>
</head>
<body>
<h1>Course/Event name</h1>
<table>
    <thead>
    <tr>
        <th>Username</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Piyal</td>
        <td>piyal.salamence@gmail.com</td>
    </tr>
    </tbody>
</table>
</body>
</html>
