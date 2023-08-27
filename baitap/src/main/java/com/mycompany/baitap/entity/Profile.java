/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.baitap.entity;

import com.mycompany.baitap.connect.MyConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author KAOPIZ
 */
public class Profile {

    MyConnection myConnectiton = new MyConnection();
    private int id;
    private String first_name;
    private String last_name;
    private String email_mobile;
    private String password;
    private String birthday;
    private String sex;
    private byte[] avatar;
    private String avatar_url;

    public Profile() {
    }

    public Profile(int id, String first_name, String last_name, String email_mobile, String password, String birthday, String sex, byte[] avatar, String avatar_url) {
        this.id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email_mobile = email_mobile;
        this.password = password;
        this.birthday = birthday;
        this.sex = sex;
        this.avatar = avatar;
        this.avatar_url = avatar_url;
    }

    public MyConnection getMyConnectiton() {
        return myConnectiton;
    }

    public int getId() {
        return id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getEmail_mobile() {
        return email_mobile;
    }

    public String getPassword() {
        return password;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getSex() {
        return sex;
    }

    public byte[] getAvatar() {
        return avatar;
    }

    public String getAvatar_url() {
        return avatar_url;
    }

    public void setMyConnectiton(MyConnection myConnectiton) {
        this.myConnectiton = myConnectiton;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public void setEmail_mobile(String email_mobile) {
        this.email_mobile = email_mobile;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setAvatar(byte[] avatar) {
        this.avatar = avatar;
    }

    public void setAvatar_url(String avatar_url) {
        this.avatar_url = avatar_url;
    }

    @Override
    public String toString() {
        return "Profile{" + "myConnectiton=" + myConnectiton + ", id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", email_mobile=" + email_mobile + ", password=" + password + ", birthday=" + birthday + ", sex=" + sex + ", avatar=" + avatar + ", avatar_url=" + avatar_url + '}';
    }

    public Profile login(String email_mobile, String password) {
        Connection conn = myConnectiton.getConnection();
        Profile profile = null;
        try {
            Statement stmt = conn.createStatement();
            String sql_login = "select * from tbl_profile where email_mobile = '" + email_mobile + "'and password" + password + "'";
            ResultSet rs = stmt.executeQuery(sql_login);
            if (rs != null && rs.next()) {
                profile = new Profile(rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_mobile"), rs.getString("password"), rs.getString("birthday"), rs.getString("sex"), rs.getBytes("avatar"), rs.getString("avatar_url"));
                return profile;
            }
        } catch (Exception e) {
        }
        return profile;
    }

}
