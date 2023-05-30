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
public class Read_Values {
    public static void main(String[] args) {
	Read_Values obj_Read_Values=new Read_Values();
	obj_Read_Values.get_values();
        }
    public List get_values(){
        DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
        PreparedStatement ps=null;
        ResultSet rs=null;
            
        List list=new ArrayList();
        
        try {
            String querry="select * from User";
            ps=connection.prepareStatement(querry);
            rs=ps.executeQuery();
            
            while(rs.next()){
                User_Bean obj_User_Bean=new User_Bean();
                System.out.println(rs.getString("user_name"));
                System.out.println(rs.getString("password"));
                System.out.println(rs.getString("name_in_game"));
                System.out.println(rs.getString("phone"));
                System.out.println(rs.getString("star_amount"));
                
                obj_User_Bean.setUser_id(rs.getString("user_id"));
                obj_User_Bean.setUser_name(rs.getString("user_name"));
                obj_User_Bean.setPassword(rs.getString("Password"));
                obj_User_Bean.setName_in_game(rs.getString("name_in_game"));
                obj_User_Bean.setPhone(rs.getString("phone"));
                obj_User_Bean.setStar_amount(rs.getString("star_amount"));
            
                list.add(obj_User_Bean);
            }
            
        } catch (Exception e){
            System.out.println(e);
        }
        return list;
        

    }
    
}
