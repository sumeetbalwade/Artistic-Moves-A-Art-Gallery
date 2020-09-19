package com.ArtisticMoves;

import com.ArtisticMoves.DAO.UserDAO;
import com.ArtisticMoves.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletRegister")
@MultipartConfig(maxFileSize = 169999999)
public class ServletRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("contactNumber");
        String password = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        String address = request.getParameter("address");
        String pinCode = request.getParameter("pinCode");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        Part tempProfilePicture = request.getPart("profilePicture");


        if (password.equals(confPassword)) {

            User model = new User();
            model.setUserType("customer");
            model.setFirstName(firstName);
            model.setLastName(lastName);
            model.setEmail(email);
            model.setContactNumber(contactNumber);
            model.setPassword(password);
            model.setAddress(address);
            model.setPinCode(pinCode);
            model.setCity(city);
            model.setState(state);
            if (tempProfilePicture != null) {
                long fileSize = tempProfilePicture.getSize();
                String fileContent = tempProfilePicture.getContentType();
                model.setTempPic(tempProfilePicture.getInputStream());
            } else {
                model.setTempPic(null);
            }

            int result = UserDAO.insertUser(model);

            if (result == 1) {
                response.sendRedirect("Login.jsp");
            } else {
                response.sendRedirect("Register.jsp");

            }


        } else {

            response.sendRedirect("Register.jsp");
        }


    }

}
