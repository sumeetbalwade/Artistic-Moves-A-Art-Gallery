package com.ArtisticMoves;

import com.ArtisticMoves.DAO.ProductDAO;
import com.ArtisticMoves.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "EditProductServlet")
public class EditProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        int productId = Integer.parseInt(request.getParameter("productId"));
        String productTitle = request.getParameter("productTitle");
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
        float productPrice = Float.parseFloat(request.getParameter("productPrice"));
        String productContent = request.getParameter("productContent");

        Product p = new Product();
        p.setId(productId);
        p.setTitle(productTitle);
        p.setQuantity(productQuantity);
        p.setPrice(productPrice);
        p.setContent(productContent);

        int status = ProductDAO.updateProduct(p);
        if (status == 1) {
            response.sendRedirect("ViewProduct.jsp");
        } else {
            response.sendRedirect("ViewProduct.jsp");
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
