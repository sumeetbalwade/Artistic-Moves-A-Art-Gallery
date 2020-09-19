package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.Product;
import com.ArtisticMoves.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProductDAO {
    public static User getUser(String email) {

        Product product = new Product();

        try {
            Class.forName(Database.driver);
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("select * from users where userType=?;");
            ps.setString(1, userType);
            ResultSet rs = ps.executeQuery();


            if (rs.next()) {
                product.setId(rs.getInt("id"));
                product.setUserType(rs.getString("userType"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getFloat("price"));
                product.setQuantity(rs.getInt("quantity"));
                product.setShop(rs.getString("shop"));
                product.setCreateDate(rs.getDate("CreateDate"));
                product.setPublishedDate(rs.getDate("PublishedDate"));
                product.setContent(rs.getString("content"));
                con.close();
                return product;
            }
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
}
