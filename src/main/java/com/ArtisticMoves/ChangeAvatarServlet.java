package com.ArtisticMoves;

import com.ArtisticMoves.DAO.UserDAO;
import com.ArtisticMoves.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;

@WebServlet(name = "ChangeAvatarServlet")
@MultipartConfig(maxFileSize = 169999999)
public class ChangeAvatarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("test/html");
        HttpSession session = request.getSession(false);
        User updatedUser = (User) session.getAttribute("user");

        Part tempProfilePicture = request.getPart("profilePicture");


        if (tempProfilePicture != null) {
            long fileSize = tempProfilePicture.getSize();
            String fileContent = tempProfilePicture.getContentType();
            InputStream inputStream = tempProfilePicture.getInputStream();


            int status = 0;

            status = UserDAO.changeImage(updatedUser, inputStream);

            if (status == 0) {
                response.sendRedirect("changeAvatar.jsp");
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
