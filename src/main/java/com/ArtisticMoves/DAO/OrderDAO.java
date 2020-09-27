package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.Order;
import com.ArtisticMoves.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {
    public static int insertOrder(Order order){
        int status=0;
        try {
            Class.forName(Database.driver);
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("insert into orders values (null,?,?,?,?);");
            ps.setInt(1,order.getOrderId());
            ps.setInt(2,order.getUserId());
            ps.setInt(3,order.getProductId());
            ps.setFloat(4,order.getPrice());
            status=ps.executeUpdate();
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return status;
    }



    public static List<Product> getOrderedProduct(int userId){

        List<Product> n;
        List<Product> products = n;
        try{
            Class.forName(Database.driver);
            Connection connection = DriverManager.getConnection(Database.URL,Database.userName,Database.password);
           PreparedStatement preparedStatement = connection.prepareStatement("select  * from orders where user_id = ? group by order_id;");
           preparedStatement.setInt(1,userId);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Integer> productIdList = new ArrayList<>();
            while (resultSet.next()){
                productIdList.add(resultSet.getInt("product_id"));
            }
            products = new ArrayList<>();
            for (int i : productIdList) {
                products.add(ProductDAO.getProductFromId(i));
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
            return products;

    }

    public static int deleteOrder(int orderId){
        int status=0;
        try{
            Class.forName(Database.driver);
            Connection con = DriverManager.getConnection(Database.URL,Database.userName,Database.password);
            PreparedStatement ps = con.prepareStatement("delete from orders where id = ?;");
            ps.setInt(1,orderId);
            status = ps.executeUpdate();
            con.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return status;
    }
}
