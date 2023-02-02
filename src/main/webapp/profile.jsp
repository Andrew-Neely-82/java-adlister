<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./partials/head.jsp"%>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <h1>Hello, <%=session.getAttribute("Name")%>!</h1>
    <jsp:include page="./js/app.js" />
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: andrewneely
  Date: 2/2/23
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>