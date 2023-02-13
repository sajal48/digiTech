<%@ page import="digitech.model.Service" %>
<%@ page import="java.util.List" %>
<%@ page import="digitech.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
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

        .services-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
        }

        .service-card {
            display: inline-block;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            height: 400px;
            margin: 20px auto;
            text-align: center;
            position: relative;
            vertical-align: top;
        }

        .service-name {
            font-size: 22px;
            font-weight: bold;
            margin: 20px 0;
        }

        .service-description {
            font-size: 16px;
            margin: 20px 0;
            text-align: left;
            padding: 0 20px;
        }

        .service-cost {
            font-size: 18px;
            font-weight: bold;
            position: absolute;
            bottom: 20px;
            left: 20px;
        }

        .buy-service-btn {
            border: none;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 25px;
            position: absolute;
            bottom: 20px;
            right: 20px;
            cursor: pointer;
        }

        .center-div {
            width: 500px;
            margin: 50px auto;
            text-align: center;
        }
    </style>
    <title>Services</title>

</head>
<body>
<div class="center-div">
    <h1>Our Services</h1>
</div>
<div class="services-container">
    <% List<Service> services = (List<Service>) request.getSession().getAttribute("services");
        if (services != null) {
            for (Service service : services) { %>
    <div class="service-card">
        <div class="service-name">
            <%= service.getName() %>
        </div>
        <div class="service-description">
            <%= service.getDescription() %>
        </div>
        <div class="service-cost">
            Cost: $<%= service.getCost() %>
        </div>
        <% User user = (User) request.getSession().getAttribute("user");
        %>
        <form action="/user/buy_service" method="post">
            <% if (user != null) {%>
            <input type="hidden" name="userId" value="<%=(user.getId())%>">
            <%}%>
            <input type="hidden" name="serviceId" value="<%=service.getId() %>">
            <button type="submit" class="buy-service-btn" <% if (user == null) {%>
            disabled
            <%}%>>Buy Service</button>
        </form>
    </div>
    <% }
    }%>
</div>
</body>
</html>