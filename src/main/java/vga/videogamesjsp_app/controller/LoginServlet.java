package com.example.servletproject1.controller;

import com.example.servletproject1.model.User;
import com.example.servletproject1.model.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/")
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

        request.getRequestDispatcher("Games.jsp").forward(request, response);
    }
}
