<html>
<body>
<h2>Hello World!</h2>
<%String name=(String) request.getAttribute("name"); %>
<p>Hi! My name is <%=name%></p>
<p>Image:</p>
<%--<img src="/WEB-INF/res/about.jpg" alt="your image">--%>
<%--<img src="images/about.jpg" alt="your image">--%>
<%--<img src="/images/about.jpg" alt="your image">--%>
<img src="<%=request.getContextPath()%>/images/about.jpg" alt="your image">
</body>
</html>
