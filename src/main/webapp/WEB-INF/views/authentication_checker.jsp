<%@ page import="digitech.model.User" %>

<%
    User loggedIn = (User) session.getAttribute("user");
    if (loggedIn==null || !loggedIn.getRole().getRoleName().equals("ADMIN")) {
        response.sendRedirect("/not_authorized");
    }
%>