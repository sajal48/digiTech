<%@ page import="digitech.model.Event" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
  <style>
    /* Update some styles for the whole page */
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
    input[type="text"], input[type="email"], select {
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

    /* Update some hover effects for the submit button */
    input[type="submit"]:hover {
      background-color: blue;
    }
  </style>
</head>
<body>
<!-- Update the header -->
<header>
  <h1>Update Event</h1>
</header>
<form action="/admin/update_event" method="post">
  <% Event event = (Event) request.getAttribute("event");%>
  <input type="hidden" id="id" name="id" value="<%= event.getId() %>">
  <div>
    <label for="name">Event Name:</label>
    <input type="text" id="name" name="name" value="<%= event.getName() %>" required>
  </div>
  <div>
    <label for="date">Event Date:</label>
    <% SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
      String formattedDate = dateFormat.format(event.getDate());%>
    <input type="date" id="date" name="date" value="<%= formattedDate %>" required>
  </div>
  <div>
    <label for="location">Event Location:</label>
    <input type="text" id="location" name="location" value="<%= event.getLocation() %>" required>
  </div>
  <div>
    <label for="details">Event Description:</label>
    <textarea id="details" name="details" required>
<%=event.getDetails() %>
  </textarea>
  </div>
  <button type="submit">Update Event</button>
</form>

</body>
</html>
