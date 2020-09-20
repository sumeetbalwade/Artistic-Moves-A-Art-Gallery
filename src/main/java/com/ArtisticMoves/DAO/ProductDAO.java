package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.Product;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class ProductDAO {

    //inserting Product
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
            e.printStackTrace();
        }

        return status;
    }

    //    Get product list from userid
    public static List<Product> getProduct(int userId) {
        List<Product> productList = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("select * from products where userId=?;");
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setUserId(rs.getInt("userId"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getFloat("price"));
                product.setQuantity(rs.getInt("quantity"));
                product.setContent(rs.getString("content"));
                product.setArtistName(rs.getString("artistName"));
                product.setProductImage(fetchImage(rs.getBlob("imageProduct")));
                productList.add(product);
            }
            con.close();
            return productList;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    //Get product from product id
    public static Product getProductFromId(int pId) {
        Product product = new Product();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("select * from products where id=?;");
            ps.setInt(1, pId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                product.setId(rs.getInt("id"));
                product.setUserId(rs.getInt("userId"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getFloat("price"));
                product.setQuantity(rs.getInt("quantity"));
                product.setContent(rs.getString("content"));
                product.setArtistName(rs.getString("artistName"));
                product.setProductImage(fetchImage(rs.getBlob("imageProduct")));
            }
            con.close();
            return product;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static int updateProduct(Product p) {
        int status = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("update products set title= ?,price =?,quantity = ?,content =? where id = ?");
            ps.setString(1, p.getTitle());
            ps.setFloat(2, p.getPrice());
            ps.setInt(3, p.getQuantity());
            ps.setString(4, p.getContent());
            ps.setInt(5, p.getId());

            status = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static int deleteProduct(int productId) {
        int status = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("delete from products where id = ?");
            ps.setInt(1, productId);

            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }


    private static String fetchImage(Blob b) {
        String img = null;
        if (b != null) {

            try {
                InputStream inputStream = b.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }

                byte[] imageBytes = outputStream.toByteArray();
                img = Base64.getEncoder().encodeToString(imageBytes);

                inputStream.close();
                outputStream.close();

            } catch (Exception throwables) {
                throwables.printStackTrace();
            }
        }
        return img;

    }

}
