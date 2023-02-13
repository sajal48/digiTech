<%@ page import="digitech.model.User" %>

<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        System.out.println(user);
        response.sendRedirect("/not_authorized");
    }
%>