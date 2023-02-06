import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PizzaOrderServlet")
public class PizzaOrderServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    super.doGet(req, resp);
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
    // Retrieve the form parameters
    String crust = request.getParameter("crust");
    String sauce = request.getParameter("sauce");
    String size = request.getParameter("size");
    String[] toppings = request.getParameterValues("toppings");
    String address = request.getParameter("address");

    // Store the form parameters as variables
    StringBuilder toppingsString = new StringBuilder();
    for (String topping : toppings) {
      toppingsString.append(topping).append(", ");
    }

    // Create the HTML response to display the order information
    String htmlResponse = "<html>\n" +
            "<head>" +
            "<link rel='stylesheet' href='src/main/webapp/css/style.css'>" +
            "<title>Pizza Order Confirmation</title></head>\n" +
            "<body>\n" +
            "<div class='order-confirmation'>" +
            "<h2>Pizza Order Confirmation</h2>\n" +
            "<p>Crust: " + crust + "</p>\n" +
            "<p>Sauce: " + sauce + "</p>\n" +
            "<p>Size: " + size + "</p>\n" +
            "<p>Toppings: " + toppingsString + "</p>\n" +
            "<p>Address: " + address + "</p>\n" +
            "</div>" +
            "</body>\n" +
            "</html>";

    // Write the HTML response to the response output stream
    response.setContentType("text/html");
    response.getWriter().println(htmlResponse);
  }
}
