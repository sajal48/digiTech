<%@ page import="java.util.List" %>
<%@ page import="digitech.model.User" %>
<%@ page import="digitech.model.Event" %>
<%@ page import="digitech.model.Training" %>
<%@ page import="digitech.model.Service" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        /* Add some styles for the whole page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        /* Style the header */
        header {
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Style the navigation bar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #fff;
            border-bottom: 1px solid #ccc;
            margin-bottom: 30px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .button{
            background-color: #cccccc;
            color: #4CAF50;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            /*margin-bottom: 20px;*/
        }
        .button:hover{
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            /*margin-bottom: 20px;*/
        }

        /* Style the navigation links */
        .navbar a {
            color: #4CAF50;
            text-decoration: none;
            margin-right: 20px;
        }

        /* Add some hover effects for the navigation links */
        .navbar a:hover {
            color: blue;
        }

        /* Style the table */
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

        /* Style the add user button */
        .add-user-btn {
            background-color: #cccccc;
            color: #4CAF50;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .add-user-btn:hover{
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-bottom: 20px;
        }
    </style>
    <title>Admin Dashboard</title>
</head>
<body>
<!-- Add the header -->
<header>
    <h1>Admin Dashboard</h1>
</header>
<!-- Add the navigation bar -->
<%--<div class="navbar">--%>
<%--    <a href="#">Manage Users</a>--%>
<%--    <a href="#">Manage Events</a>--%>
<%--    <a href="#">Manage Courses</a>--%>
<%--</div>--%>
<h2 style="display: inline-block">Active Services</h2>
<%--<a href="admin/user" class="add-user-btn" style="float: right;">Add Service</a>--%>
<table>
    <tr>
        <th>Name</th>
        <th>Service for</th>
        <th>Assigned to</th>
    </tr>
    <!-- Add a row for each user -->
<%--    <%--%>
<%--        List<User> users = (List<User>) request.getAttribute("users");--%>
<%--        for (User user : users) {--%>
<%--    %>--%>
    <tr>
        <td>Service name</td>
        <td>Piyal</td>
        <td>Sajal</td>
<%--        <td>--%>
<%--            <form action="/admin/user/update" method="post" style="display: inline-block">--%>
<%--                <input type="hidden" name="id" value="<%= user.getId() %>">--%>
<%--                <input type="hidden" name="name" value="<%= user.getName() %>">--%>
<%--                <input type="hidden" name="email" value="<%= user.getEmail() %>">--%>
<%--                <input type="hidden" name="role" value="<%= user.getRole().getRoleName() %>">--%>
<%--                <input class="button" type="submit" value="Edit">--%>
<%--                <!-- <a href="#" class="button">Delete</a> -->--%>
<%--            </form>--%>
<%--            <a href="/admin/delete_user/<%= user.getId() %>" class="button">Delete</a>--%>
<%--        </td>--%>
    </tr>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
</table>
<!-- Add the table for the user list -->
<h2 style="display: inline-block">Users </h2>
<a href="admin/user" class="add-user-btn" style="float: right;">Add user</a>
<table>
    <tr>
        <th>Username</th>
        <th>Email</th>
        <th>Role</th>
        <th>Actions</th>
    </tr>
    <!-- Add a row for each user -->
    <%
        List<User> users = (List<User>) request.getAttribute("users");
        for (User user : users) {
    %>
    <tr>
        <td><%= user.getName() %></td>
        <td><%= user.getEmail() %></td>
        <td><%= user.getRole().getRoleName() %></td>
        <td>
            <form action="/admin/user/update" method="post" style="display: inline-block">
                <input type="hidden" name="id" value="<%= user.getId() %>">
                <input type="hidden" name="name" value="<%= user.getName() %>">
                <input type="hidden" name="email" value="<%= user.getEmail() %>">
                <input type="hidden" name="role" value="<%= user.getRole().getRoleName() %>">
                <input class="button" type="submit" value="Edit">
                <!-- <a href="#" class="button">Delete</a> -->
            </form>
            <a href="/admin/delete_user/<%= user.getId() %>" class="button">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
<h2 style="display: inline-block">Services</h2>
<a href="admin/user" class="add-user-btn" style="float: right;">Add Service</a>
<table>
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Cost</th>
        <th>Action</th>
    </tr>
    <%
        List<Service> services = (List<Service>) request.getAttribute("sevices");
        for (Service service : services) {
    %>

    <tr>
        <td>Service name</td>
        <td>Service Description</td>
        <td>Service Cost</td>
                <td>
                    <form action="/admin/update_service" method="post" style="display: inline-block">
                        <input type="hidden" name="id" value="<%= service.getId() %>">
                        <input type="hidden" name="name" value="<%= service.getName() %>">
                        <input type="hidden" name="description" value="<%= service.getDescription() %>">4
                        <input type="hidden" name="cost" value="<%= service.getCost() %>">
                        <input class="button" type="submit" value="Edit">
                        <!-- <a href="#" class="button">Delete</a> -->
                    </form>
                    <a href="/admin/delete_service/"<%= service.getId() %>" class="button">Delete</a>
                </td>
        <td>
            <form action="/admin/event/update" method="post" style="display: inline-block">
                <%--            <input type="hidden" name="id" value="<%= event.getId() %>">--%>
                <%--            <input type="hidden" name="date" value="<%= event.getDate() %>">--%>
                <%--            <input type="hidden" name="details" value="<%= event.getDetails() %>">--%>
                <%--            <input type="hidden" name="location" value="<%= event.getLocation() %>">--%>
                <input class="button" type="submit" value="Edit">
                <!-- <a href="#" class="button">Delete</a> -->
            </form>
            <a href="/admin/event/delete/" class="button">Delete</a>
        </td>
    </tr>
    <%--    <%--%>
    <%--        }--%>
    <%--    %>--%>
</table>
<h2 style="display: inline-block">Events </h2>
<a href="admin/event" class="add-user-btn" style="float: right;">Add event</a>

<table>
    <tr>
        <th>Event Name</th>
        <th>Date</th>
        <th>Location</th>
        <th>Actions</th>
    </tr>
    <!-- Add a row for each event -->
    <tr>
            <%
        List<Event> events = (List<Event>) request.getAttribute("events");
        for (Event event : events) {
    %>
    <tr>
        <td><%= event.getName() %></td>
        <td><%= event.getDate() %></td>
        <td><%= event.getLocation() %></td>
    <td>
        <form action="/admin/event/update" method="post" style="display: inline-block">
            <input type="hidden" name="id" value="<%= event.getId() %>">
            <input type="hidden" name="date" value="<%= event.getDate() %>">
            <input type="hidden" name="details" value="<%= event.getDetails() %>">
            <input type="hidden" name="location" value="<%= event.getLocation() %>">
            <input class="button" type="submit" value="Edit">
            <!-- <a href="#" class="button">Delete</a> -->
        </form>
        <a href="/admin/event/delete/<%= event.getId() %>" class="button">Delete</a>
    </td>
    </tr>
    <%
        }
    %>
</table>
<h2 style="display: inline-block">Courses </h2>
<a href="admin/course" class="add-user-btn" style="float: right;">Add course</a>

<table>
    <tr>
        <th>Course Name</th>
        <th>Description</th>
        <th>Cost</th>
        <th>Actions</th>
    </tr>
    <tr>
            <%
        List<Training> trainings = (List<Training>) request.getAttribute("trainings");
        for (Training training : trainings) {
    %>
    <tr>
        <td><%= training.getName() %></td>
        <td><%= training.getDescription() %></td>
        <td><%= training.getCost() %></td>
        <td>
            <form action="/admin/course/update" method="post" style="display: inline-block">
                <input type="hidden" name="id" value="<%= training.getId() %>">
                <input type="hidden" name="name" value="<%= training.getName() %>">
                <input type="hidden" name="description" value="<%= training.getDescription() %>">
                <input type="hidden" name="cost" value="<%= training.getCost() %>">
                <input class="button" type="submit" value="Edit">
                <!-- <a href="#" class="button">Delete</a> -->
            </form>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
