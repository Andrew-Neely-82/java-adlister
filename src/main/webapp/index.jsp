<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title><%= "Welcome to Adlister" %>
  </title>
</head>
<body>
<%@include file="WEB-INF/partials/navbar.jsp" %>
<c:if test="true">
  <h1>Variable names should be very descriptive</h1>
  <%! int counter = 0; %>
  <%counter += 1;%>
<%--  <%= counter%>--%>
  <c:choose>
    <c:when test="${param.name != null}">
      <h1>Hello, ${param.name}!</h1>
    </c:when>
    <c:otherwise>
      <h1>Hello, Visitor!</h1>
    </c:otherwise>
  </c:choose>
  <%-- This is how to set a variable in JSP --%>
  <% request.setAttribute("counter", counter);%>
  <c:choose>
    <c:when test="${counter ==1}">
      <h3>You are the first visitor to this page!</h3>
    </c:when>
    <c:otherwise>
      <h3>You are viewer number: &nbsp;${counter}</h3></c:otherwise>
  </c:choose>
  <%--  This is a comment--%>
  <c:if test=""></c:if>
</c:if>
<c:if test="false">
  <h1>single letter variable names are good</h1>
</c:if>
</body>
</html>
