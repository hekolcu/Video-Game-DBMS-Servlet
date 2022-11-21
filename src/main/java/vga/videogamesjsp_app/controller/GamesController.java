package vga.videogamesjsp_app.controller;

import vga.videogamesjsp_app.model.Game;
import vga.videogamesjsp_app.model.GameDAO;

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
        List<Game> games = GameDAO.instance.getGames();
        request.setAttribute("games", games);
        request.getRequestDispatcher("Games.jsp").forward(request, response);
    }

    public void destroy() {
    }
}