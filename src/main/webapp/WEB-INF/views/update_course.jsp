<%@ page import="digitech.model.Training" %>
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
  <h1>Update Course</h1>
</header>

<!-- Add the form -->
<form action="/admin/update_training" method="post">
  <% Training training = (Training) request.getAttribute("training");%>
  <input type="hidden" name="id" value="<%=training.getId()%>">
  <div>
    <label for="course_name">Course Name:</label>
    <input type="text" id="course_name" name="name" value="<%=training.getName() %>" required>
  </div>
  <div>
    <label for="course_description">Course Description:</label>
    <textarea id="course_description" name="description"><%=training.getDescription() %></textarea>
  </div>
  <div>
    <label for="course_price">Course Price:</label>
    <input type="number" id="course_price" name="cost" value="<%=training.getCost() %>" required>
  </div>
  <button type="submit">Update Course</button>
</form>

</body>
</html>
