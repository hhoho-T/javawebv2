/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.baitap.connect;

/**
 *
 * @author KAOPIZ
 */

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author user
 */
public class MyConnection {
    String dbName = "bmagbook";
    String user = "root";
    String pass = "";
    String host = "localhost";
    String url = "jdbc:mysql://"+host+":3306/"+dbName;
    Connection conn;
    public Connection getConnection() {
        try {
            if (conn == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, pass);
            } 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void main(String[] args) {
//        MyConnection myConnection = new MyConnection();
//        try {
//            Connection conn = myConnection.getConnection();
//            if (conn != null) {
//                System.out.println("Kết nối db thành công");
//            } else {
//                System.out.println("Kết nối db thất bại");
//            }
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
    }
}
