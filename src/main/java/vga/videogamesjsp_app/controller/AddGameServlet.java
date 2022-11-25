package vga.videogamesjsp_app.controller;

import vga.videogamesjsp_app.model.GameDAO;
import vga.videogamesjsp_app.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddGameServlet", value = "/addGame")
public class AddGameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null)
            request.getRequestDispatcher("addGame.jsp").forward(request, response);
        else {
            request.setAttribute("error", "You must be logged in to insert a new game");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GameDAO.instance.addGame(
                ((User) request.getSession().getAttribute("user")).getId(),
                request.getParameter("title"),
                request.getParameter("description"),
                Integer.parseInt(request.getParameter("year")),
                request.getParameter("genre"),
                request.getParameter("popularity"),
                request.getParameter("platform"),
                request.getParameter("mode"),
                request.getParameter("restrictions"),
                request.getParameter("requirements"),
                request.getParameter("link"),
                request.getParameter("creators"),
                Float.parseFloat(request.getParameter("rating")),
                Integer.parseInt(request.getParameter("rating-count"))
        );
        response.sendRedirect("/games");
    }
}
