<%-- 
    Document   : add_controller
    Created on : Apr 23, 2023, 3:10:53 AM
    Author     : PC
--%>
<%@page import="CRUD.Insert_Values"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add user</title>
    </head>
    <body>
        <%
           
            String user_name = request.getParameter("user_name");
            String password = request.getParameter("password");
            String name_in_game = request.getParameter("name_in_game");
            String gender = "1";
            String phone = request.getParameter("phone");
            String star_amount = request.getParameter("star_amount");
           
           Insert_Values obj_Insert_Values=new Insert_Values();
           
           obj_Insert_Values.insert_values(user_name,password,name_in_game,gender,phone,star_amount);
           response.sendRedirect("/admin/home.jsp");
        %>
       
        
    </body>
</html>
