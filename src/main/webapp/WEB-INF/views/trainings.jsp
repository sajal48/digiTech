<%@ page import="digitech.model.Training" %>
<%@ page import="java.util.List" %>
<%@ page import="digitech.model.Training" %>
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

        .trainings-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
        }

        .training-card {
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

        .training-name {
            font-size: 22px;
            font-weight: bold;
            margin: 20px 0;
        }

        .training-description {
            font-size: 16px;
            margin: 20px 0;
            text-align: left;
            padding: 0 20px;
        }

        .training-cost {
            font-size: 18px;
            font-weight: bold;
            position: absolute;
            bottom: 20px;
            left: 20px;
        }

        .buy-training-btn {
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
    <title>Trainings</title>

</head>
<body>
<div class="center-div">
    <h1>Our Trainings</h1>
</div>
<div class="trainings-container">
    <% List<Training> trainings = (List<Training>) request.getSession().getAttribute("trainings");
        if (trainings != null) {
            for (Training training : trainings) { %>
    <div class="training-card">
        <div class="training-name">
            <%= training.getName() %>
        </div>
        <div class="training-description">
            <%= training.getDescription() %>
        </div>
        <div class="training-cost">
            Cost: $<%= training.getCost() %>
        </div>
        <% User user = (User) request.getSession().getAttribute("user");
        %>
        <form action="/user/training/enroll" method="post">
            <% if (user != null) {%>
            <input type="hidden" name="userId" value="<%=(user.getId())%>">
            <%}%>
            <%--            <input type="hidden" name="userId" value="<%=((User)request.getSession().getAttribute("user")).getId() %>">--%>
            <input type="hidden" name="trainingId" value="<%=training.getId() %>">
            <button type="submit" class="buy-training-btn" <% if (user == null) {%>
                    disabled
                    <%}%>>Enroll now
            </button>
        </form>
    </div>
    <% }
    }%>
</div>
</body>
</html>