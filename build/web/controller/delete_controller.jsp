<%-- 
    Document   : delete_controller
    Created on : Apr 27, 2023, 6:23:55 AM
    Author     : PC
--%>
<%@page import="CRUD.Delete_values"%>
<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
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
        String user_id=request.getParameter("user_id");
        Delete_values obj_Delete_values=new Delete_values();
        obj_Delete_values.delete_value(user_id);
        response.sendRedirect("/admin/home.jsp");
        %>
    </body>
</html>
