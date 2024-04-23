
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "GestorTareasServlet", urlPatterns = {"/gestorTareas"})
public class GestorTareasServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Establecer el tipo de contenido de la respuesta
        response.setContentType("text/html;charset=UTF-8");

        // Obtener la tarea del parámetro de solicitud
        String tarea = request.getParameter("tarea");

        // Verificar si la tarea es nula o vacía
        if (tarea != null && !tarea.isEmpty()) {
            // Obtener la sesión del usuario
            HttpSession session = request.getSession();

            // Obtener o crear la lista de tareas en la sesión
            List<String> tareas = (List<String>) session.getAttribute("tareas");
            if (tareas == null) {
                tareas = new ArrayList<>();
                session.setAttribute("tareas", tareas);
            }

            // Agregar la nueva tarea a la lista
            tareas.add(tarea);
        }

        // Redirigir de vuelta a la página principal
        response.sendRedirect("index.html");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
