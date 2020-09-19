package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ProductDAO {


    public static int insertProduct(Product product) {
        int status = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("insert into products values (null,?,?,?,?,?,?,?);");
            ps.setInt(1, product.getUserId());
            ps.setString(2, product.getTitle());
            ps.setFloat(3, product.getPrice());
            ps.setInt(4, product.getQuantity());
            ps.setBlob(5, product.getTempPic());
            ps.setString(6, product.getContent());
            ps.setString(7, product.getArtistName());
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }


}
