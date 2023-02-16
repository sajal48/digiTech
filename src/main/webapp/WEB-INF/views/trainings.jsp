<%@ page import="digitech.model.Training" %>
<%@ page import="java.util.List" %>
<%@ page import="digitech.model.Training" %>
<%@ page import="digitech.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
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

        .trainings-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
        }

        .training-card {
            display: inline-block;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            height: 400px;
            margin: 20px auto;
            text-align: center;
            position: relative;
            vertical-align: top;
        }

        .training-name {
            font-size: 22px;
            font-weight: bold;
            margin: 20px 0;
        }

        .training-description {
            font-size: 16px;
            margin: 20px 0;
            text-align: left;
            padding: 0 20px;
        }

        .training-cost {
            font-size: 18px;
            font-weight: bold;
            position: absolute;
            bottom: 20px;
            left: 20px;
        }

        .buy-training-btn {
            border: none;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 25px;
            position: absolute;
            bottom: 20px;
            right: 20px;
            cursor: pointer;
        }

        .center-div {
            width: 500px;
            margin: 50px auto;
            text-align: center;
        }
    </style>
    <title>Trainings</title>

</head>
<body>
<%
    User user = (User) request.getSession().getAttribute("user");
    List<Training> myTrainings=(List<Training>) request.getSession().getAttribute("myTraining");

%>
<div class="center-div">
    <% List<Training> trainings = (List<Training>) request.getSession().getAttribute("trainings");
        if (trainings.isEmpty()) {
    %>
    <h1>There is no courses currently!</h1>
    <%}
    else{
    %>
    <h1>Our Trainings</h1>
    <%}%>
</div>
<div class="trainings-container">
    <% if(!trainings.isEmpty()) {
            for (Training training : trainings) {
    %>
    <div class="training-card">
        <div class="training-name">
            <%= training.getName() %>
        </div>
        <div class="training-description">
            <%= training.getDescription() %>
        </div>
        <div class="training-cost">
            Cost: $<%= training.getCost() %>
        </div>

        <form action="<%= user==null?"/login":"/user/training/enroll"%>" method="<%= user==null?"get":"post"%>">

            <% if(user==null){ %>
             <button type="submit" class="buy-training-btn" onclick="alert('You must login first')">Enroll now</button>
            <% } else { %>
            <input type="hidden" name="trainingId" value="<%=training.getId()%>">
            <input type="hidden" name="userId" value="<%=user.getId()%>">
                <% if(!myTrainings.isEmpty() && myTrainings.contains(training)) { %>
                    <button type="button" class="buy-training-btn" >Enrolled</button>
                 <% } else{ %>
                    <button type="submit" class="buy-training-btn" onclick="alert('Course bought successfully!');">Enroll now</button>
                 <% } %>
            <% } %>


        </form>
    </div>
    <% }
    } %>
</div>
</body>
</html>

<%--<% if (user != null) {--%>
<%--    long userId = user.getId();--%>
<%--    System.out.println("Current User ID = " + userId);--%>
<%--%>--%>
<%--<input type="hidden" name="userId" value="<%=userId%>">--%>
<%--<%}--%>
<%--    long trainingId = training.getId();--%>
<%--    System.out.println("Current Training ID = " + trainingId);--%>
<%--%>--%>
<%--<input type="hidden" name="trainingId" value="<%=trainingId%>">--%>
<%--<% if(user==null){--%>
<%--%>--%>
<%--<button type="button" class="buy-training-btn" onclick="alert('You must login first')">Enroll now</button>--%>
<%--<% }--%>
<%--else {--%>
<%--    List<Training> myTrainings=(List<Training>) request.getSession().getAttribute("myTraining");--%>

<%--    if(myTrainings!=null && myTrainings.contains(training)){ %>--%>
<%--<button type="button" class="buy-training-btn" disabled>Course bought</button>--%>
<%--<%--%>
<%--}--%>
<%--else {%>--%>
<%--<button type="submit" class="buy-training-btn" onclick="alert('Course bought successfully!');">Enroll now</button>--%>
<%--<%--%>
<%--        }--%>
<%--    }--%>
<%--%>--%>
<%--            <button type="submit" class="buy-training-btn" onclick="alert('Service bought successfully!');"<%--%>
<%--&lt;%&ndash;                if (user == null) {%>&ndash;%&gt;--%>
<%--                    disabled--%>
<%--                    >Enroll now--%>
<%--&lt;%&ndash;                <%}%>&ndash;%&gt;--%>
<%--            </button>--%>