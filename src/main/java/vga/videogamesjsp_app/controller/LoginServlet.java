package vga.videogamesjsp_app.controller;

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
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        User u = UserDAO.instance.checkPassword(email, password);
        if (u != null){
            session.setAttribute("user", u);
        }
        List<Game> games = GameDAO.instance.getGames();
        request.setAttribute("games", games);
        request.getRequestDispatcher("Games.jsp").forward(request, response);
    }
}
