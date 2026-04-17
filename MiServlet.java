import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Vector;

public class MiServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Vector<String> listaDatos = new Vector<>();
        listaDatos.add("Mango");
        listaDatos.add("Banano");
        listaDatos.add("Manzana");
        listaDatos.add("Fresa");

        request.setAttribute("listaDatos", listaDatos);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}