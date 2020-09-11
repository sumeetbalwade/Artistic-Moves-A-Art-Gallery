package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    //method to get user
    public ResultSet getUser(String email) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com/4eS1tiqRbr", "4eS1tiqRbr", "rNXd5pqbwk");
            PreparedStatement ps = con.prepareStatement("select * from users where email=?;");
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return rs;
            }

        }
        catch (Exception e){
            System.out.println(e);
        }

        return null;
    }

    //method to insert user
    public int insertUser(User user){
        int status = 0;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com/4eS1tiqRbr", "4eS1tiqRbr", "rNXd5pqbwk");
            PreparedStatement ps = con.prepareStatement("insert into users values (null,?,?,?,?,?,?,?,?,?,?);");
            ps.setString(1,user.getUserType());
            ps.setString(2,user.getFirstName());
            ps.setString(3, user.getLastName());
            ps.setString(4,user.getEmail());
            ps.setString(5, user.getPassword());
            ps.setString(6, user.getContactNumber());
            ps.setString(7, user.getAddress());
            ps.setString(8, user.getCity());
            ps.setString(9,user.getState());
            ps.setString(10,user.getPinCode());

            status = ps.executeUpdate();

        }
        catch (Exception e){
            System.out.println(e);
        }
        return status;
    }


}
