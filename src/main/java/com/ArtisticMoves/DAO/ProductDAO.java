package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.Product;
import com.ArtisticMoves.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProductDAO {



    public static int insertProduct(Product product){
        int status = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("insert into users values (null,?,?,?,?,?,?,?,?);");
            ps.setInt(1, product.getUserId());
            ps.setString(2, product.getTitle());
            ps.setFloat(3, product.getPrice());
            ps.setInt(4, product.getQuantity());
            ps.setString(5, product.getContent());
            ps.setString(6, product.getArtistName());
            ps.setBlob(7, product.getProductImage());
            status = ps.executeUpdate();
            con.close();
            
        }catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }




    public static List<Product> getProduct(){

    }



    public static Product getProduct(int id){

    }

}
