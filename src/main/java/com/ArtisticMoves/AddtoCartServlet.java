package com.ArtisticMoves;

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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession s = request.getSession(false);
        int productId = 0;
        if (s.getAttribute("user") != null) {
            List<Integer> cart = (List<Integer>) s.getAttribute("cart");
            if (cart == null){
                cart = new ArrayList<>();
            }
            cart.add(productId);
            s.setAttribute("cart",cart);
        } else {
            response.sendRedirect("Login.jsp");
        }
    }
}
