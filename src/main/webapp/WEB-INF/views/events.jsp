<%@ page import="digitech.model.Event" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
         .events-container {
             display: flex;
             flex-wrap: wrap;
             justify-content: center;
         }

        .event-card {
            width: 400px;
            height: 250px;
            background-color: white;
            margin: 20px;
            box-shadow: 0px 0px 10px #888888;
            border-radius: 10px;
            text-align: center;
            padding: 20px;
        }

        .event-name {
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .event-details {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .event-location {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .event-date {
            font-size: 16px;
        }
        .center-div {
            width: 500px;
            margin: 50px auto;
            text-align: center;
        }
    </style>

    <title>Events</title>

</head>
<body>
<div class="center-div">
    <h1>Our Events</h1>
</div>
<div class="events-container">
    <% List<Event> events=(List<Event>) request.getSession().getAttribute("events");
    if(events!=null){
        for(Event event : events) { %>
    <div class="event-card">
        <div class="event-name">
            <%= event.getName() %>
        </div>
        <div class="event-details">
            <%= event.getDetails() %>
        </div>
        <div class="event-location">
            Cost: $<%= event.getLocation() %>
        </div>
        <div class="event-date">
            Cost: $<%= event.getDate() %>
        </div>
    </div>
    <% }
    }%>
</div>
</body>
</html>