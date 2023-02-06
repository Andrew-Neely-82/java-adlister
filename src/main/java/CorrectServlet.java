import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CorrectServlet", urlPatterns = "/correct")
public class CorrectServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    String result = "That is correct!";
    req.setAttribute("result", result);
    req.getRequestDispatcher("/guess-result.jsp");
    resp.getWriter().println("<h1>" + result + "</h1>");
  }
}
