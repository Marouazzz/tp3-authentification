package servlet;

import model.Role;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;


public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Simulation (plus tard → DB)
        User user = null;



        for (User u : InscriptionServlet.users) {
            if (u.getUsername().equals(username) && u.getPassword().equals(password)) {
                user = u;
                break;
            }
        }

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("error", "Login incorrect");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}