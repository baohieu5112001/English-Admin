/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import common.DB_Connection;
import common.User_Bean;
/**
 *
 * @author PC
 */
public class Delete_values {
    public void delete_value(String user_id){
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	try {
	 String querry="delete from user where user_id=?";
	 ps=connection.prepareStatement(querry);		
	 ps.setString(1, user_id);;
	 ps.executeUpdate();
	} catch (Exception e) {
	 System.out.println(e);
	}
	}
}
