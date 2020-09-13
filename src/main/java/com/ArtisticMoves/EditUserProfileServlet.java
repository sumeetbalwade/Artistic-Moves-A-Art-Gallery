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
import java.io.PrintWriter;

@WebServlet(name = "EditUserProfileServlet")
public class EditUserProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        User updatedUser = (User) session.getAttribute("user");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        int status = 0;

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("contactNumber");
        String address = request.getParameter("address");
        String pinCode = request.getParameter("pinCode");
        String city = request.getParameter("city");
        String state = request.getParameter("state");


        User model = new User();
        model.setFirstName(firstName);
        model.setLastName(lastName);
        model.setEmail(email);
        model.setContactNumber(contactNumber);
        model.setAddress(address);
        model.setPinCode(pinCode);
        model.setCity(city);
        model.setState(state);
        model.setId(updatedUser.getId());


        status = UserDAO.editUserProfile(model);

        if (status == 0) {
            response.sendRedirect("EditProfile.jsp");
        } else {
            updatedUser.setFirstName(firstName);
            updatedUser.setLastName(lastName);
            updatedUser.setEmail(email);
            updatedUser.setContactNumber(contactNumber);
            updatedUser.setAddress(address);
            updatedUser.setPinCode(pinCode);
            updatedUser.setCity(city);
            updatedUser.setState(state);
            response.sendRedirect("userProfile.jsp");

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
