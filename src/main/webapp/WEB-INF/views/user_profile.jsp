<!DOCTYPE html>
<html>
<head>
  <title>User Profile</title>
  <style>
    /* Style for the main container */
    .container {
      width: 50%;
      margin: 0 auto;
      text-align: center;
      font-family: Arial, sans-serif;
    }

    /* Style for the title */
    h1 {
      margin-top: 50px;
      font-size: 36px;
      color: #4CAF50;
    }

    /* Style for the form */
    form {
      margin-top: 50px;
    }

    /* Style for the input fields */
    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 60%;
      padding: 12px 20px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 2px solid #ccc;
      border-radius: 4px;
    }

    /* Style for the update button */
    input[type="submit"] {
      width: 20%;
      padding: 12px 20px;
      margin-top: 20px;
      border-radius: 4px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
    }

    /* Style for the labels */
    label {
      font-size: 18px;
      color: #333;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>User Profile</h1>
  <form>
    <label>Name:</label>
    <input type="text" name="name" required><br><br>
    <label>Email:</label>
    <input type="email" name="email" required><br><br>
    <label>Password:</label>
    <input type="password" name="password" required><br><br>
    <input type="submit" value="Update">
  </form>
</div>
</body>
</html>
