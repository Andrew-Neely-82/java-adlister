<html>
<head>
  <title>View Your Favorite Color</title>
  <style>
      body {
          background-color: <%= request.getParameter("color") %>;
      }
  </style>
</head>
<body>
<h2>Your Favorite Color is: <%= request.getParameter("color") %></h2>
</body>
</html>