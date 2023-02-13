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
  <h1>Add User</h1>
</header>

<!-- Add the form -->
<form action="/admin/user" method="post">
  <!-- Add the email field -->
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required>

  <!-- Add the username field -->
  <label for="name">Username:</label>
  <input type="text" id="name" name="name" required>

  <label for="password">Password:</label>
  <input type="password" id="password" name="password" required>
  <!-- Add the role field -->
  <label for="role">Role:</label>
  <select id="role" name="role">
    <option value="">Select a role</option>
    <option value="ADMIN">Admin</option>
    <option value="EMPLOYEE">Employee</option>
    <option value="USER">User</option>
  </select>

  <!-- Add the submit button -->
  <input type="submit" value="Add User">
</form>
</body>
</html>
