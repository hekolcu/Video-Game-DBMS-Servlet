package vga.videogamesjsp_app.controller;

import vga.videogamesjsp_app.model.GameDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "GameEditServlet", value = "/editGame")
public class GameEditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("game", GameDAO.instance.getGame(id));
        request.getRequestDispatcher("editGame.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
