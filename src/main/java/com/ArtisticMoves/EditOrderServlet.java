package com.ArtisticMoves;

import com.ArtisticMoves.DAO.OrderDAO;
import com.ArtisticMoves.model.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "EditOrderServlet")
public class EditOrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        int orderId = Integer.parseInt(req.getParameter("orderId"));
        float orderPrice = Float.parseFloat(req.getParameter("orderPrice"));

        Order o = new Order();
        o.setId(orderId);
        o.setPrice(orderPrice);

        int status = OrderDAO.deleteOrder(orderId);
        resp.sendRedirect();
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
