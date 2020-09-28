package com.ArtisticMoves;

import com.ArtisticMoves.DAO.OrderDAO;
import com.ArtisticMoves.DAO.ProductDAO;
import com.ArtisticMoves.model.Order;
import com.ArtisticMoves.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PlaceOrderServlet")
public class PlaceOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("user");
        int productId = Integer.parseInt(request.getParameter("productId"));
        float price =Float.parseFloat(request.getParameter("productPrice"));
        int status = 0;
        if (session.getAttribute("user") != null) {
            Order order = new Order();
            order.setOrderId(OrderDAO.RandomNumber());
            order.setUserId(user.getId());
            order.setProductId(productId);
            order.setPrice(price);

            status = OrderDAO.insertOrder(order);
            if (status == 1) {
                request.setAttribute("data", "Order Successfully");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("InfoPage.jsp");
                requestDispatcher.forward(request, response);
            }else {
                response.sendRedirect("index.jsp");
            }
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
