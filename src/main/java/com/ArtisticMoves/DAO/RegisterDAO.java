package com.ArtisticMoves.DAO;

import com.ArtisticMoves.model.RegisterModel;

import java.sql.Connection;
import java.sql.DriverManager;

public class RegisterDAO {
    public static void AddRegisterDetail(RegisterModel rm){
        int status = 0;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection
                    ("jdbc:mysql://localhost/project","root","Sagar@2000");


        }catch (Exception e){
            System.out.println(e);
        }
    }
}
