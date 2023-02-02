import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
    int count;
    try {
      count = Integer.parseInt(req.getParameter("count"));
    } catch (Exception e) {
      count = 1;
    }
    String name = req.getParameter("name");
    if (name == null) {
      name = "World";
    }
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();
    for (int i = 0; i < count; i++) {
      out.println("<h1>Hello, " + name + "!</h1>");
    }
  }
}
