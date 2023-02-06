<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Order Pizza</title>
</head>
<%--  <link rel="stylesheet" href="./css/style.css">--%>
<%--  <title>Pizza Order Form</title>--%>
<%@include file="partials/head.jsp"%>
<body>
<h1>Pizza Order Form</h1>
<form action="PizzaOrderServlet" method="post">
  <label for="crust">Crust:</label>
  <select id="crust" name="crust">
    <option value="Thin">Thin</option>
    <option value="Thick">Thick</option>
    <option value="Stuffed">Stuffed</option>
  </select><br><br>
  <label for="sauce">Sauce:</label>
  <select id="sauce" name="sauce">
    <option value="Tomato">Tomato</option>
    <option value="BBQ">BBQ</option>
    <option value="Pesto">Pesto</option>
  </select><br><br>
  <label for="size">Size:</label>
  <select id="size" name="size">
    <option value="Small">Small</option>
    <option value="Medium">Medium</option>
    <option value="Large">Large</option>
  </select><br><br>
  <label for="toppings">Toppings:</label><br>
  <input type="checkbox" id="toppings" name="toppings" value="Pepperoni">Pepperoni<br>
  <input type="checkbox" id="toppings" name="toppings" value="Mushrooms">Mushrooms<br>
  <input type="checkbox" id="toppings" name="toppings" value="Olives">Olives<br>
  <input type="checkbox" id="toppings" name="toppings" value="Jalapenos">Jalapenos<br><br>
  <label for="address">Delivery Address:</label><br>
  <textarea id="address" name="address"></textarea><br><br>
  <input type="submit" value="Submit Order">
</form>
<%--<%--%>
<%--    String crust = (String)request.getAttribute("crust");--%>
<%--    String sauce = (String)request.getAttribute("sauce");--%>
<%--    String size = (String)request.getAttribute("size");--%>
<%--    String[] toppings = (String[])request.getAttribute("toppings");--%>
<%--    String address = (String)request.getAttribute("address");--%>
<%--    if (crust != null && sauce != null && size != null && toppings != null && address != null) {--%>
<%--      out.println("<h2>Order Confirmation</h2>");--%>
<%--      out.println("<p>Crust: " + crust + "</p>");--%>
<%--      out.println("<p>Sauce: " + sauce + "</p>");--%>
<%--      out.println("<p>Size: " + size + "</p>");--%>
<%--      out.println("<p>Toppings:</p>");--%>
<%--      out.println("<ul>");--%>
<%--      for (String topping : toppings) {--%>
<%--        out.println("<li>" + topping + "</li>");--%>
<%--      }--%>
<%--      out.println("</ul>");--%>
<%--      out.println("<p>Address: " + address + "</p>");--%>
<%--    } else {--%>
<%--      out.println("<p>An error occurred. Please try again.</p>");--%>
<%--    }--%>
<%--%>--%>