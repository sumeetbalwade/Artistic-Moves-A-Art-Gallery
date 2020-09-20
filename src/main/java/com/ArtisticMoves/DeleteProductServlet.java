package com.ArtisticMoves;

import com.ArtisticMoves.DAO.ProductDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        int productId = Integer.parseInt(request.getParameter("productId"));
        int status = ProductDAO.deleteProduct(productId);
        if(status == 1){
            response.sendRedirect("ViewProduct.jsp");
        }
        else{
            response.sendRedirect("ViewProduct.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
