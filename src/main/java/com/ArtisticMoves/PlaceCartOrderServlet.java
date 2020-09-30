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
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PlaceCartOrderServlet")
public class PlaceCartOrderServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("test/html");
        HttpSession session = request.getSession(false);
        int status;
        if (session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            List<Integer> products = (List<Integer>) session.getAttribute("cart");
            int orderId = OrderDAO.generateOrderId();
            if (products == null || products.size() == 0) {
                response.sendRedirect("index.jsp");
            } else {
                Order order = new Order();
                for (int i : products) {
                    order.setOrderId(orderId);
                    order.setUserId(user.getId());
                    order.setProductId(i);
                    order.setPrice(ProductDAO.getProductPriceFromId(i));
                    status = OrderDAO.insertOrder(order);
                    if (status == 0) {
                        request.setAttribute("data", "Order Unsuccessful");

                        RequestDispatcher requestDispatcher = request.getRequestDispatcher("InfoPage.jsp");
                        requestDispatcher.forward(request, response);
                    }
                    products.remove(new Integer(i));
                }

                products.clear();
                session.setAttribute("cart", products);
                request.setAttribute("data", "Order Successful");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("InfoPage.jsp");
                requestDispatcher.forward(request, response);
            }
            response.sendRedirect("index.jsp");

        } else {
            response.sendRedirect("Login.jsp");
        }
    }
}
