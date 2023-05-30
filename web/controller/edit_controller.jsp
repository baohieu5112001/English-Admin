<%-- 
    Document   : edit_controller
    Created on : Apr 27, 2023, 5:35:50 AM
    Author     : PC
--%>
<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
<%@page import="CRUD.Insert_Values"%>
<%@page import="common.DB_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit user</title>
    </head>
    <body>
        <%
           
           String user_id=request.getParameter("user_id");
           String user_name=request.getParameter("user_name");
           String password=request.getParameter("password");
           String name_in_game=request.getParameter("name_in_game");
           String phone=request.getParameter("phone");
           String star_amount=request.getParameter("star_amount");
           
           User_Bean obj_User_Bean=new User_Bean();
           obj_User_Bean.setUser_name(user_name);
           obj_User_Bean.setPassword(password);
           obj_User_Bean.setName_in_game(name_in_game);
           obj_User_Bean.setPhone(phone);
           obj_User_Bean.setStar_amount(star_amount);
           obj_User_Bean.setUser_id(user_id);
           
           Edit_values obj_Edit_values=new Edit_values();
           obj_Edit_values.edit_user(obj_User_Bean);
           
           response.sendRedirect("/admin/home.jsp");
        %>

    </body>
</html>
