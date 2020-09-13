package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    //method to get user
    public User getUser(String email) {

        User user = new User();

        try {
            Class.forName(Database.driver);
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("select * from users where email=?;");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();


            if (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setUserType(rs.getString("userType"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setContactNumber(rs.getString("contactNumber"));
                user.setAddress(rs.getString("address"));
                user.setCity(rs.getString("city"));
                user.setState(rs.getString("state"));
                user.setPinCode(rs.getString("pincode"));
                return user;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    //method to insert user
    public int insertUser(User user) {
        int status = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("insert into users values (null,?,?,?,?,?,?,?,?,?,?);");
            ps.setString(1, user.getUserType());
            ps.setString(2, user.getFirstName());
            ps.setString(3, user.getLastName());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPassword());
            ps.setString(6, user.getContactNumber());
            ps.setString(7, user.getAddress());
            ps.setString(8, user.getCity());
            ps.setString(9, user.getState());
            ps.setString(10, user.getPinCode());

            status = ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public int editUserProfile(User user) {
        int status = 0;
        try {
            Class.forName(Database.driver);
            Connection con = DriverManager.getConnection
                    (Database.URL, Database.userName, Database.password);
            PreparedStatement ps = con.prepareStatement("update users set firstName= ?,lastName = ?,email = ?,contactNumber = ? ,address = ? ,city = ?,state = ?,pincode = ? where id = ?");
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getContactNumber());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getCity());
            ps.setString(7, user.getState());
            ps.setString(8, user.getPinCode());
            ps.setInt(9, user.getId());

            status = ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;

    }

}


