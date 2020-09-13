package com.ArtisticMoves;

import com.ArtisticMoves.DAO.UserDAO;
import com.ArtisticMoves.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String emailAddress = request.getParameter("emailAddress");
        String password = request.getParameter("password");
        String userType = request.getParameter("userType");

        try {
            UserDAO ud = new UserDAO();

            User user = ud.getUser(emailAddress);
            if (user != null) {

                String userTypeDB = user.getUserType();
                String passwordDB = user.getPassword();

                if (userTypeDB.equals(userType) && passwordDB.equals(password)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    RequestDispatcher rd = request.getRequestDispatcher("userProfile.jsp");
                    rd.forward(request, response);
                } else {
                    response.sendRedirect("Login.jsp");

                }

            } else {
                response.sendRedirect("Login.jsp");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
