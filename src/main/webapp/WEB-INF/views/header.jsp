<%@ page import="digitech.model.User" %>
<header>
  <div class="header-container">
    <div class="logo">
      <img src="images/logo.jpg" alt="Company Logo">
    </div>

    <div class="header-right">
      <div class="user-info" style="padding: 30px">
        <%
          User user = (User) session.getAttribute("user");
          if (user != null) {
        %>
        <p>Welcome, <span class="user-name"><%=user.getName()+" ("+user.getRole().getRoleName()+")"%></span></p>
        <a href="/login" class="logout-btn" style="text-decoration: none">Logout</a>
        <%
          }
        %>
      </div>
    </div>
  </div>
  <nav>
    <ul>
      <li><a href="/about">About Us</a></li>
      <li><a href="/services">Our Services</a></li>
      <li><a href="/trainings">Trainings</a></li>
      <li><a href="/events">Events</a></li>
      <li><a href="/privacy_policy">Privacy Policy</a></li>
    </ul>
  </nav>
</header>
