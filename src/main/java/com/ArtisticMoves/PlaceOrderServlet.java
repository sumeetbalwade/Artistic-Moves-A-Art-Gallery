package com.ArtisticMoves;

import com.ArtisticMoves.DAO.OrderDAO;
import com.ArtisticMoves.model.Order;
import com.ArtisticMoves.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("PlaceOrderServlet")
public class AddOrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        int porductId = Integer.parseInt(req.getParameter("productId"));
        float price =Float.parseFloat(req.getParameter("productPrice"));
            int status = 0;
        HttpSession session = req.getSession(false);
        User user = (User) session.getAttribute("user");
        if (user != null) {
            Order order = new Order();
            order.getOrderId();
            order.setUserId(user.getId());
            order.setProductId(porductId);
            order.setPrice(price);

            status = OrderDAO.insertOrder(order);
            if (status == 1) {
//                placed
            }else {
                //not placed
            }
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession s = req.getSession(false);
        if (s.getAttribute("user") != null) {
            resp.sendRedirect("userProfile.jsp");
        } else {
            resp.sendRedirect("Login.jsp");
        }
    }
}
