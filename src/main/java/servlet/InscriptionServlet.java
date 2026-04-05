package servlet;

import model.Role;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class InscriptionServlet extends HttpServlet {

    // Simulation base de données
    public static List<User> users = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String roleParam = request.getParameter("role");

        Role role = Role.valueOf(roleParam);

        // Vérifier si user existe déjà
        for (User u : users) {
            if (u.getUsername().equals(username)) {
                request.setAttribute("error", "Utilisateur déjà existant !");
                request.getRequestDispatcher("inscription.jsp").forward(request, response);
                return;
            }
        }

        // Création utilisateur
        User user = new User(username, password, role);
        users.add(user);

        // Redirection vers login
        response.sendRedirect("login.jsp");
    }
}