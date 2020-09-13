package com.ArtisticMoves;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LogOutServlet")
public class LogOutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession s = request.getSession(false);
        if (s.getAttribute("user") != null) {
            s.invalidate();
            request.setAttribute("data", "Log Out Successfully");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("InfoPage.jsp");
            requestDispatcher.forward(request, response);
        } else {
            response.sendRedirect("Login.jsp");
        }
    }
}
