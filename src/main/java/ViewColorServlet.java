import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "/ViewColorServlet", urlPatterns = "/viewcolor")
public class ViewColorServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String color = request.getParameter("color");
    request.setAttribute("color", color);
    request.getRequestDispatcher("/viewcolor.jsp").forward(request, response);
  }
}