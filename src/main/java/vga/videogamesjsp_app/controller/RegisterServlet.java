package vga.videogamesjsp_app.controller;

import vga.videogamesjsp_app.model.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("name").trim();
            String email = request.getParameter("email").trim();
            String password = request.getParameter("password").trim();
            String password_reentered = request.getParameter("password-reentered").trim();
            if (name.length() > 0 && email.matches("^(.+)@(.+)$") && password.length() >= 4 && password.equals(password_reentered)){
                request.getSession().setAttribute("user", UserDAO.instance.addUser(name, email, password));
                response.sendRedirect("/games");
            }
            else {
                throw new Exception();
            }
        }
        catch (NullPointerException e){
            System.out.println("Null Pointer Exception");
            request.setAttribute("error", "Missing information");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        catch (Exception e){
            System.out.println("Other error");
            request.setAttribute("error", "Invalid information");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
