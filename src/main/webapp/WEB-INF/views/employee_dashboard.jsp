<%@ page import="java.util.List" %>
<%@ page import="digitech.model.Service" %>
<%@ page import="digitech.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <%
        User loggedIn = (User) session.getAttribute("user");
        if (loggedIn==null || !loggedIn.getRole().getRoleName().equals("EMPLOYEE")) {
            response.sendRedirect("/not_authorized");
        }
    %>
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
    <title>Employee Dashboard</title>
</head>
<body>
<!-- Add the header -->
<header>
    <h1>Employee Dashboard</h1>
</header>
<!-- Add the navigation bar -->
<%--<div class="navbar">--%>
<%--    <a href="#">Manage Users</a>--%>
<%--    <a href="#">Manage Events</a>--%>
<%--    <a href="#">Manage Courses</a>--%>
<%--</div>--%>

<!-- Add the table for the user list -->
<h2 style="display: inline-block">Active Services</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Service For</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
<%--    <%--%>
<%--        List<Service> services = (List<Service>) request.getAttribute("services");--%>
<%--        if(services!=null){--%>
<%--        for (Service service : services) {--%>
<%--    %>--%>
    <tr>
        <td>Service name</td>
        <td>Sajal</td>
        <td>Ongoing</td>
        <td>
            <form action="#" method="post" style="display: inline-block">
<%--                <input type="hidden" name="id" value="<%= service.getId() %>">--%>
<%--                <input type="hidden" name="name" value="<%= service.getName() %>">--%>
<%--                <input type="hidden" name="description" value="<%= service.getDescription() %>">--%>
<%--                <input type="hidden" name="cost" value="<%= service.getCost() %>">--%>
                <input class="button" type="submit" value="Mark done">
                <!-- <a href="#" class="button">Delete</a> -->
            </form>
        </td>
    </tr>
<%--      <%--%>
<%--            }--%>
<%--        }--%>
<%--      %>--%>
</table>
</body>
</html>