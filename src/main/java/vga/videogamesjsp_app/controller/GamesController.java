package vga.videogamesjsp_app.controller;

import vga.videogamesjsp_app.model.Game;
import vga.videogamesjsp_app.model.GameDAO;
import vga.videogamesjsp_app.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GamesController", value = "/games")
public class GamesController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id_string = request.getParameter("id");
        if (id_string != null){
            int id = Integer.parseInt(id_string);
            request.setAttribute("game", GameDAO.instance.getGame(id));
            request.getRequestDispatcher("game.jsp").forward(request, response);
        }
        else {
            if (request.getParameter("myGames") == null) {
                request.setAttribute("games", GameDAO.instance.getGames());
                request.getRequestDispatcher("games.jsp").forward(request, response);
            }
            else {
                request.setAttribute("games", GameDAO.instance.getGames(((User) request.getSession().getAttribute("user")).getId()));
                request.getRequestDispatcher("games.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("");
    }
}