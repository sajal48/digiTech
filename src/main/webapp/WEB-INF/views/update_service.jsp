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

    /* Add some hover effects for the submit button */
    input[type="submit"]:hover {
      background-color: blue;
    }
  </style>
</head>
<body>
<!-- Add the header -->
<header>
  <h1>Update service</h1>
</header>

<!-- Add the form -->
<form action="/admin/update_service" method="post">
  <% Service service = (Service) request.getAttribute("service");%>
  <input type="hidden" name="id" value="<%=service.getId()%>">
  <div>
    <label for="service_name">service Name:</label>
<%--    <input type="text" id="service_name" name="name" required>--%>
    <input type="text" id="service_name" name="name" value="<%=service.getName() %>" required>
  </div>
  <div>
    <label for="service_description">service Description:</label>
<%--    <textarea id="service_description" name="description"></textarea>--%>
    <textarea id="service_description" name="description"><%=service.getDescription() %></textarea>
  </div>
  <div>
    <label for="service_price">service Price:</label>
<%--    <input type="number" id="service_price" name="cost" required>--%>
    <input type="number" id="service_price" name="cost" value="<%=service.getCost() %>" required>
  </div>
  <button type="submit">Update service</button>
</form>

</body>
</html>
