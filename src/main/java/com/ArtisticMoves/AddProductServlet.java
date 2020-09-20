package com.ArtisticMoves;

import com.ArtisticMoves.DAO.ProductDAO;
import com.ArtisticMoves.model.Product;
import com.ArtisticMoves.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "AddProductServlet")
@MultipartConfig(maxFileSize = 169999999)
public class AddProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("user");

        int result;


        if (user != null) {
            Product product = new Product();
            product.setUserId(user.getId());
            product.setTitle(request.getParameter("productName"));
            product.setPrice(Float.parseFloat(request.getParameter("productPrice")));
            product.setQuantity(Integer.parseInt(request.getParameter("productQuantity")));
            product.setArtistName(user.getFirstName() + " " + user.getLastName());
            product.setContent(request.getParameter("productDescription"));
            Part tempProfilePicture = request.getPart("productImage");
            if (tempProfilePicture != null) {

                product.setTempPic(tempProfilePicture.getInputStream());
            } else {
                product.setTempPic(null);
            }
            result = ProductDAO.insertProduct(product);


            if (result == 1) {
                response.sendRedirect("userProfile.jsp");
            } else {
                response.sendRedirect("AddProduct.jsp");

            }

        } else {
            response.sendRedirect("userProfile.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession s = request.getSession(false);
        if (s.getAttribute("user") != null) {
            response.sendRedirect("userProfile.jsp");
        } else {
            response.sendRedirect("Login.jsp");
        }
    }
}
