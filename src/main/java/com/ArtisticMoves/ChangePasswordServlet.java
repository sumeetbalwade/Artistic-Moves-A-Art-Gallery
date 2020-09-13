package com.ArtisticMoves;

import com.ArtisticMoves.DAO.UserDAO;
import com.ArtisticMoves.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("test/html");
        HttpSession session = request.getSession(false);
        User updatedUser = (User) session.getAttribute("user");

        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");


        if (newPassword.equals(confirmPassword) && currentPassword.equals(updatedUser.getPassword())) {
            int status = 0;
            status = UserDAO.changeUserPasswordDAO(updatedUser, newPassword);
            if (status == 0) {
                response.sendRedirect("ChangePassword.jsp");
            } else if (status == 1) {
                session.invalidate();
                response.sendRedirect("Login.jsp");
            }
        } else {
            response.sendRedirect("ChangePassword.jsp");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession s = request.getSession(false);
        if (s.getAttribute("user") != null) {
            response.sendRedirect("userProfile.jsp");
        } else {
            response.sendRedirect("Login.jsp");
        }
    }
}
