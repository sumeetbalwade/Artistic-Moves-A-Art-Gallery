package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.Order;
import com.ArtisticMoves.model.Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {
    public static int insertOrder(Order order) {
        int status = 0;
        try {
            Class.forName(Database.driver);
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("select quantity from products where id=?;");
            ps.setInt(1, order.getProductId());
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                int quantity = resultSet.getInt("quantity");
                if (quantity > 0) {

                    ps = con.prepareStatement("insert into orders values (null,?,?,?,?);");
                    ps.setInt(1, order.getOrderId());
                    ps.setInt(2, order.getUserId());
                    ps.setInt(3, order.getProductId());
                    ps.setFloat(4, order.getPrice());
                    status = ps.executeUpdate();
                    if (status == 1) {

                        ps = con.prepareStatement("update products set quantity = quantity-1 where  id=?;");
                        ps.setInt(1, order.getProductId());
                        status = ps.executeUpdate();
                    }
                }
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }


    public static List<Product> getOrderedProduct(int userId) {

        List<Product> products = null;
        try {
            Class.forName(Database.driver);
            Connection connection = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement preparedStatement = connection.prepareStatement("select  * from orders where user_id = ? group by order_id;");
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Integer> productIdList = new ArrayList<>();
            while (resultSet.next()) {
                productIdList.add(resultSet.getInt("product_id"));
            }
            resultSet.close();
            connection.close();
            products = new ArrayList<>();
            for (int i : productIdList) {
                products.add(ProductDAO.getProductFromId(i));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;

    }


    //get order detail from order id
    public static List<Product> getOrderFromOrderId(int orderId) {
        List<Product> orders = new ArrayList<>();
        try {
            Class.forName(Database.driver);
            Connection connection = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement preparedStatement = connection.prepareStatement("select * form orders where order_id=?");
            preparedStatement.setInt(1, orderId);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setUserId(rs.getInt("userId"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getFloat("price"));
                product.setQuantity(rs.getInt("quantity"));
                product.setContent(rs.getString("content"));
                product.setArtistName(rs.getString("artistName"));
                // product.setProductImage(fetchImage(rs.getBlob("imageProduct")));
                orders.add(product);
            }
            connection.close();
            return orders;

        } catch (Exception e) {
            System.out.println(e);
        }

        return null;
    }


    public static int deleteOrder(int orderId) {
        int status = 0;
        try {
            Class.forName(Database.driver);
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("delete from orders where id = ?;");
            ps.setInt(1, orderId);
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }


    public static int generateOrderId() {

        int rand = (int) (Math.random() * 10);
        int result = 0;
        try {
            Class.forName(Database.driver);
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("select MAX(order_Id) FROM orders ;");
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                result = resultSet.getInt("MAX(order_Id)");
            }
            resultSet.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result + rand + 1;
    }
}
