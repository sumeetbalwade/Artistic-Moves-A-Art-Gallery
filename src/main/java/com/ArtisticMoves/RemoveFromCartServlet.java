package com.ArtisticMoves;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RemoveFromCartServlet")
public class RemoveFromCartServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession s = request.getSession(false);
        int productId = 0;
        if (s.getAttribute("user") != null) {
            List<Integer> cart = (List<Integer>) s.getAttribute("cart");
            List<Integer> newCart = new ArrayList<>();

            for (int i : cart) {
                if (i != productId) {
                    newCart.add(i);
                }
            }
            s.setAttribute("cart",newCart);
        } else {
            response.sendRedirect("Login.jsp");
        }
    }
    }
}
