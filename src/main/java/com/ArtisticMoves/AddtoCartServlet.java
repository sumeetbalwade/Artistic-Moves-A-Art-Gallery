package com.ArtisticMoves;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddtoCartServlet")
public class AddtoCartServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession s = request.getSession(false);
        int productId = Integer.parseInt(request.getParameter("productId"));
        if (s.getAttribute("user") != null) {
            List<Integer> cart = (List<Integer>) s.getAttribute("cart");
            if (cart == null) {
                cart = new ArrayList<>();
            }
            cart.add(productId);
            s.setAttribute("cart", cart);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("Cart.jsp");
            requestDispatcher.forward(request, response);

        } else {
            response.sendRedirect("Login.jsp");
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
