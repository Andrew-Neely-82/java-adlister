<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<body>
  <%@include file="nav.jsp"%>
  <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username != null && password != null) {
  if (username.equals("admin") && password.equals("password")) {
    response.sendRedirect("/profile.jsp");
  } else {
    response.sendRedirect("/login.jsp");
  }%>
  <form action="/login.jsp" method="post">
    <div>
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" />
    </div>
    <div>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" />
    </div>
    <input type="submit" value="Submit" />
  </form>
  <%
    }
  %>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: andrewneely
  Date: 2/2/23
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>