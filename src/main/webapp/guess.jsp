<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Guess the number</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/guess">
  <label for="number">Pick a number between 1 and 3</label>
  <input type="text" id="number" name="number" placeholder="Enter a number">
  <input type="submit" value="submit">
</form>
</body>
</html>
