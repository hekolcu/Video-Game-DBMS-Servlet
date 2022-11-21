package com.example.servletproject1.controller;

import com.example.servletproject1.model.Game;
import com.example.servletproject1.model.GameDAO;

import java.io.*;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

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