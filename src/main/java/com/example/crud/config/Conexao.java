package com.example.crud.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    public Connection getConnection(){
       Connection conn = null;
       try{
           Class.forName("com.mysql.cj.jdbc.Driver");
           conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/db_aula10", "root", "root");
       } catch (ClassNotFoundException | SQLException e){
           throw new RuntimeException(e);
       }
       return conn;
    }
}
