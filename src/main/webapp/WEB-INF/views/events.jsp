<%@ page import="digitech.model.Event" %>
<%@ page import="java.util.List" %>
<%@ page import="digitech.model.User" %>
<%@ page import="digitech.model.ServiceDetails" %>
<%@ page import="java.util.ArrayList" %>
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

        .events-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
        }

        .event-card {
            display: block;
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

        .event-name {
            font-size: 22px;
            font-weight: bold;
            margin: 20px 0;
        }

        .event-description {
            font-size: 16px;
            margin: 20px 0;
            text-align: left;
            padding: 0 20px;
        }

        .event-cost {
            font-size: 18px;
            font-weight: bold;
            position: absolute;
            bottom: 20px;
            left: 20px;
        }

        .buy-event-btn {
            border: none;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 25px;
            position: absolute;
            bottom: 20px;
            right: 70px;
            cursor: pointer;
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

<%
    User user = (User) request.getSession().getAttribute("user");
    List<Event> myEvents=(List<Event>) request.getSession().getAttribute("myEvent");
%>


<div class="center-div">
    <% List<Event> events = (List<Event>) request.getSession().getAttribute("events");
        if (events.isEmpty()) {
    %>
    <h1>There is no events currently!</h1>
    <%}
    else{
    %>
    <h1>Our Events</h1>
    <%}%>
</div>
<div class="events-container">
    <%
        if (!events.isEmpty()) {
            for (Event event : events) {%>
    <div class="event-card">
        <div class="event-name">
            <%= event.getName() %>
        </div>
        <div style="padding-bottom: 20px">
            Location: <%= event.getLocation() %> (<%= event.getDate().toString().substring(0,10)%>)
        </div>
        <div class="event-details">
            <%= event.getDetails() %>
        </div>
        <form action="<%= user==null?"/login":"/user/event/register"%>" method="<%= user==null?"get":"post"%>">

            <% if(user==null){ %>
            <button type="submit" class="buy-event-btn" onclick="alert('You must login first')">Register</button>
            <% } else { %>
            <input type="hidden" name="eventId" value="<%=event.getId()%>">
            <% if(!myEvents.isEmpty() && myEvents.contains(event)) { %>
            <button type="button" class="buy-event-btn" >Registered</button>
            <% } else{ %>
            <button type="submit" class="buy-event-btn" onclick="alert('Registered to Event!');">Register</button>
            <% } %>
            <% } %>


        </form>

    </div>
    <% }
    }%>
</div>
</body>
</html>