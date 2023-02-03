<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="partials/head.jsp"%>

<body>
<jsp:include page="./partials/navbar.jsp" />
<h1>Hello, <%=session.getAttribute("name")%>!</h1>
</body>
</html>