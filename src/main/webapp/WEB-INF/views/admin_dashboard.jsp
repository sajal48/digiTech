<%@ page import="java.util.List" %>
<%@ page import="digitech.model.*" %>
<jsp:include page="authentication_checker.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="header.jsp"/>
    <%
        User loggedIn = (User) session.getAttribute("user");
        if (loggedIn==null || !loggedIn.getRole().getRoleName().equals("ADMIN")) {
            response.sendRedirect("/not_authorized");
        }
    %>
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
        <th>Status</th>
        <th>Actions</th>
    </tr>
    <!-- Add a row for each user -->
    <%
        List<ServiceDetails> serviceDetails = ( List<ServiceDetails>) request.getAttribute("details");
        for (ServiceDetails details : serviceDetails) {
    %>
    <tr>
        <td><%=details.getService().getName()%></td>
        <td><%=details.getServiceFor().getName()%></td>
        <td><%=details.isAssigned()?"Assigned":"Not Assigned"%></td>
        <%if(!details.isAssigned()){%>
        <td>
            <form action="/admin/assign_task" method="post" onsubmit="return validateForm()" style="display: inline-block">
                <input type="hidden" name="detailsId" value="<%= details.getId() %>">
                <select name="userId">
                    <option value="" selected="selected">Assign to</option>
                    <% List<User> employeeList = (List<User>) request.getAttribute("employees");
                        for (User employee : employeeList) { %>
                    <option value="<%=employee.getId()%>"><%=employee.getName()%></option>
                    <% } %>
                </select>
                <input class="button" type="submit" value="Assign">
                <!-- <a href="#" class="button">Delete</a> -->
            </form>

            <script>
                function validateForm() {
                    var selectBox = document.getElementsByName("userId")[0];
                    if (selectBox.value == "") {
                        alert("Please select an employee first.");
                        return false;
                    }
                    return true;
                }
            </script>
        </td>
        <% }
        else{%>
        <td>
            <button class="button" disabled>Ongoing</button>
        </td>
        <% }%>

    </tr>
    <%
        }
    %>
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
        if(users!=null){
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
            <a href="/admin/delete_user/<%= user.getId() %>" class="button" onclick="return confirmDelete('<%= user.getId()%>%>')">Delete</a>

            <script>
                function confirmDelete(userId) {
                    if (confirm("Do you really want to delete?")) {
                        window.location.href = "/admin/delete_user/"+userId;
                        return true;
                    }
                    else {
                        return false;
                    }
                }
            </script>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
<h2 style="display: inline-block">Services</h2>
<a href="/admin/add_service" class="add-user-btn" style="float: right;">Add Service</a>
<table>
    <tr>
        <th>Name</th>
<%--        <th>Description</th>--%>
        <th>Cost</th>
        <th>Action</th>
    </tr>
    <%
        List<Service> services = (List<Service>) request.getAttribute("services");
        if(services!=null){
        for (Service service : services) {
    %>
    <tr>
        <td><%= service.getName() %></td>
<%--        <td><%= service.getDescription() %></td>--%>
        <td>$<%= service.getCost() %></td>
        <td>
            <form action="/admin/service/update" method="post" style="display: inline-block">
                <input type="hidden" name="id" value="<%= service.getId() %>">
                <input type="hidden" name="name" value="<%= service.getName() %>">
                <input type="hidden" name="description" value="<%= service.getDescription() %>">
                <input type="hidden" name="cost" value="<%= service.getCost() %>">
                <input class="button" type="submit" value="Edit">
                <!-- <a href="#" class="button">Delete</a> -->
            </form>
            <a href="/admin/delete_service/<%= service.getId() %>" class="button" onclick="return confirmDelete('<%= service.getId()%>%>')">Delete</a>

            <script>
                function confirmDelete(serviceId) {
                    if (confirm("Do you really want to delete?")) {
                        window.location.href = "/admin/delete_service/"+serviceId;
                        return true;
                    }
                    else {
                        return false;
                    }
                }
            </script>
        </td>
    </tr>
      <%
            }
        }
      %>
</table>
<h2 style="display: inline-block">Events </h2>
<a href="admin/event" class="add-user-btn" style="float: right;">Add event</a>

<table>
    <tr>
        <th>Event Name</th>
        <th>Date (YYYY-MM-DD)</th>
        <th>Location</th>
        <th>Actions</th>
    </tr>
    <!-- Add a row for each event -->
    <tr>
            <%
        List<Event> events = (List<Event>) request.getAttribute("events");
        if(events!=null){
        for (Event event : events) {
    %>
    <tr>
        <td><%= event.getName() %></td>
        <td><%= event.getDate().toString().substring(0,10) %></td>
        <td><%= event.getLocation() %></td>
    <td>
        <form action="/event-details" method="post" style="display: inline-block">
            <input type="hidden" name="eventId" value="<%= event.getId() %>">
            <input class="button" type="submit" value="Details">
            <!-- <a href="#" class="button">Delete</a> -->
        </form>
        <form action="/admin/event/update" method="post" style="display: inline-block">
            <input type="hidden" name="id" value="<%= event.getId() %>">
            <input type="hidden" name="date" value="<%= event.getDate() %>">
            <input type="hidden" name="details" value="<%= event.getDetails() %>">
            <input type="hidden" name="location" value="<%= event.getLocation() %>">
            <input class="button" type="submit" value="Edit">
            <!-- <a href="#" class="button">Delete</a> -->
        </form>
        <a href="/admin/event/delete/<%= event.getId() %>" class="button" onclick="return confirmDelete('<%= event.getId()%>%>')">Delete</a>

        <script>
            function confirmDelete(eventId) {
                if (confirm("Do you really want to delete?")) {
                    window.location.href = "/admin/event/delete/"+eventId;
                    return true;
                }
                else {
                    return false;
                }
            }
        </script>
    </td>
    </tr>
    <%
            }
        }
    %>
</table>
<h2 style="display: inline-block">Trainings </h2>
<a href="admin/course" class="add-user-btn" style="float: right;">Add course</a>

<table>
    <tr>
        <th>Course Name</th>
<%--        <th>Description</th>--%>
        <th>Cost</th>
        <th>Actions</th>
    </tr>
    <tr>
            <%
        List<Training> trainings = (List<Training>) request.getAttribute("trainings");
        if(trainings!=null){
        for (Training training : trainings) {
    %>
    <tr>
        <td><%= training.getName() %></td>
<%--        <td><%= training.getDescription() %></td>--%>
        <td>$<%= training.getCost() %></td>
        <td>
            <form action="/course-details" method="post" style="display: inline-block">
                <input type="hidden" name="courseId" value="<%= training.getId() %>">
                <input class="button" type="submit" value="Details">
                <!-- <a href="#" class="button">Delete</a> -->
            </form>
            <form action="/admin/course/update" method="post" style="display: inline-block">
                <input type="hidden" name="id" value="<%= training.getId() %>">
                <input type="hidden" name="name" value="<%= training.getName() %>">
                <input type="hidden" name="description" value="<%= training.getDescription() %>">
                <input type="hidden" name="cost" value="<%= training.getCost() %>">
                <input class="button" type="submit" value="Edit">
                <!-- <a href="#" class="button">Delete</a> -->
            </form>
            <a href="/admin/course/delete/<%= training.getId() %>" class="button" onclick="return confirmDelete('<%= training.getId()%>%>')">Delete</a>
            <script>
                function confirmDelete(trainingId) {
                    if (confirm("Do you really want to delete?")) {
                        window.location.href = "/admin/event/delete/"+trainingId;
                        return true;
                    }
                    else {
                        return false;
                    }
                }
            </script>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>