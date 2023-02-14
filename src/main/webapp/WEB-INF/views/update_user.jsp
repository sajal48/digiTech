<%@ page import="digitech.model.User" %>
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

        /* Style the form */
        form {
            width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }

        /* Style the form label */
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        /* Style the form inputs */
        input[type="text"], input[type="email"], input[type="password"] select {
            padding: 10px;
            margin-top: 10px;
            width: 100%;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Style the submit button */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            float: right;
            margin-top: 20px;
        }

        /* Add some hover effects for the submit button */
        input[type="submit"]:hover {
            background-color: blue;
        }
    </style>
</head>
<body>
<!-- Add the header -->
<header>
    <h1>Update User</h1>
</header>

<!-- Add the form -->
<form action="/admin/update_user" method="post">
    <!-- Add the email field -->
    <% User user = (User) request.getAttribute("user");%>
    <input type="hidden" id="id" name="id" value="<%= user.getId() %>">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="<%= user.getEmail() %>" readonly>

    <!-- Add the username field -->
    <label for="name">Username:</label>
    <input type="text" id="name" name="name" value="<%= user.getName() %>">

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" value="<%= user.getPassword() %>">
    <!-- Add the role field -->
    <label for="role">Role:</label>
    <select id="role" name="role">
        <option value="">Select a role</option>
        <%
            String userRole = user.getRole().getRoleName();
        %>
        <option value="ADMIN" <%= userRole.equals("ADMIN") ? "selected" : "" %>>Admin</option>
        <option value="EMPLOYEE" <%= userRole.equals("EMPLOYEE") ? "selected" : "" %>>Employee</option>
        <option value="USER" <%= userRole.equals("USER") ? "selected" : "" %>>User</option>
    </select>

    <!-- Add the submit button -->
    <input type="submit" value="Update User">
</form>

</body>
</html>
