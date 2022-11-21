package vga.videogamesjsp_app.controller;

import vga.videogamesjsp_app.ServletHash;
import vga.videogamesjsp_app.model.Game;
import vga.videogamesjsp_app.model.GameDAO;
import vga.videogamesjsp_app.model.User;
import vga.videogamesjsp_app.model.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/Login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") != null){
            response.sendRedirect("/Games");
        }
        else{
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        User u = UserDAO.instance.checkPassword(
                request.getParameter("email"),
                request.getParameter("password")
        );
        if (u != null){
            session.setAttribute("user", u);
            response.sendRedirect("/Games");
        }
        else {
            request.setAttribute("error", "Incorrect email or password. Please try again.");
            request.getRequestDispatcher("login.jps").forward(request, response);
        }
    }
}
