<%@ page import="digitech.model.User" %>
<%@ page import="digitech.model.Training" %>
<%@ page import="java.util.List" %>
<%@ page import="digitech.model.ServiceDetails" %>
<!DOCTYPE html>
<html>
<%
  User user = (User) session.getAttribute("user");
%>
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
        /* Add some styling for the page */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            text-align: center;
        }
        h2 {
            margin: 50px 0 30px;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 0 auto 50px;
            max-width: 600px;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
        p {
            margin-top: 20px;
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
    </style>
    <title>User Profile</title>
</head>
<body>
<div class="container">
  <h1>User Profile</h1>
  <div class="form-container">
  <form action="/user/update_user" method="post">

    <label for="email" style="float: left;margin-bottom: 10px" >Email:</label>
    <input type="email" id="email" name="email" value="<%= user.getEmail() %>" readonly>

    <!-- Add the username field -->
    <label for="name" style="float: left;margin-bottom: 10px" >Username:</label>
    <input type="text" id="name" name="name" value="<%= user.getName() %>">

    <label for="password" style="float: left;margin-bottom: 10px" >Password:</label>
    <input type="password" id="password" name="password" value="<%= user.getPassword() %>">
    <input type="hidden" id="role" name="role" value="USER">
    <input type="hidden" id="id" name="id" value="<%= user.getId() %>">
    <input type="submit" value="Update">


  </form>
  </div>
</div>


<h2 style="display: inline-block">My Services</h2>
<table>
  <tr>
    <th>Service name</th>
  </tr>
      <%
          List<ServiceDetails> services = (List<ServiceDetails>) request.getAttribute("myServices");

          if(services!=null){
              for (ServiceDetails service : services) {
      %>
  <tr>
    <td><%= service.getService().getName()%></td>

  </tr>
      <%
              }
          }
      %>
</table>


<h2 style="display: inline-block">My Courses</h2>
<table>
  <tr>
    <th>Course name</th>
  </tr>
      <%
          List<Training> trainings = (List<Training>) request.getAttribute("myTraining");
          if(trainings!=null){
              for (Training training : trainings) {
      %>
  <tr>
    <td><%=training.getName()%></td>
  </tr>
      <%
              }
          }
      %>
</table>
</body>
</html>
