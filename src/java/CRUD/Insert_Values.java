/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CRUD;

import common.DB_Connection;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author PC
 */
public class Insert_Values {
    public void insert_values(String user_name,String password,String name_in_game,String gender,String phone,String star_amount)
    {
    	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	try {
        String query="insert into User(user_name, password, name_in_game, gender, phone, star_amount) values(?,?,?,1,?,?)";
	 ps=connection.prepareStatement(query);
	 ps.setString(1, user_name);
         ps.setString(2, password);
	 ps.setString(3, name_in_game);
         ps.setString(4, phone);
         ps.setString(5, star_amount);
	 ps.executeUpdate();
	} catch (Exception e) {
	 System.err.println(e);
	}
    }
}
