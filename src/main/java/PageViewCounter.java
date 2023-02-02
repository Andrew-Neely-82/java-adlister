import java.io.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/count")
public class PageViewCounter extends HttpServlet {

  private int count = 0;

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    String reset = request.getParameter("reset");
    if (reset != null && reset.equals("true")) {
      count = 0;
    } else {
      count++;
    }
    response.getWriter().println("Page view count: " + count);
  }
}
