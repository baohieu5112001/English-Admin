/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package common;

/**
 *
 * @author PC
 */
import java.sql.Connection;
import java.sql.DriverManager;
public class DB_Connection {
public static void main(String[] args) {
	DB_Connection obj_DB_Connection=new DB_Connection();
	System.out.println(obj_DB_Connection.get_connection());
}
public Connection get_connection(){
	Connection connection=null;
	try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "123456");
	} catch (Exception e) {
		System.out.println(e);
	}
		return connection;
	}
}