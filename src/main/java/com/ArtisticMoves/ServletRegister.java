package com.ArtisticMoves;

import com.ArtisticMoves.DAO.UserDAO;
import com.ArtisticMoves.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletRegister")
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

            UserDAO ud = new UserDAO();
            int result = ud.insertUser(model);

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
