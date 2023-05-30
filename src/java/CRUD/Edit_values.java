/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CRUD;

import common.DB_Connection;
import common.User_Bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class Edit_values {
    
    
    public User_Bean get_values_of_user(String user_id){
        DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
        PreparedStatement ps=null;
        ResultSet rs=null;
            
        User_Bean obj_User_Bean=new User_Bean();
        
        try {
            String querry="select * from User Where user_id=?";
            ps=connection.prepareStatement(querry);
            ps.setString(1, user_id);
            rs=ps.executeQuery();
            
            while(rs.next()){

                obj_User_Bean.setUser_id(rs.getString("user_id"));
                obj_User_Bean.setUser_name(rs.getString("user_name"));
                obj_User_Bean.setPassword(rs.getString("Password"));
                obj_User_Bean.setName_in_game(rs.getString("name_in_game"));
                obj_User_Bean.setPhone(rs.getString("phone"));
                obj_User_Bean.setStar_amount(rs.getString("star_amount"));
            
            }
            
        } catch (Exception e){
            System.out.println(e);
        }
        return obj_User_Bean;
    }
    
    
    
    public void edit_user(User_Bean obj_User_Bean){
        DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
        PreparedStatement ps=null;
        
        
        try {
            String querry="update User set user_name=?,password=?,name_in_game=?,phone=?,star_amount=? where user_id=?";
                ps=connection.prepareStatement(querry);
                
                ps.setString(1, obj_User_Bean.getUser_name());
                ps.setString(2, obj_User_Bean.getPassword());
                ps.setString(3, obj_User_Bean.getName_in_game());
                ps.setString(4, obj_User_Bean.getPhone());
                ps.setString(5, obj_User_Bean.getStar_amount());
                ps.setString(6, obj_User_Bean.getUser_id());

                ps.executeUpdate();
            
            
            
        } catch (Exception e){
            System.out.println(e);
        }
    }
}
