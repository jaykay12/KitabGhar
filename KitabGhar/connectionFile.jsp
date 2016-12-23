<%--
    Document   : connectionFile
    Created on : 24 Jun, 2016, 10:59:59 PM
    Author     : Jalaz
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eBookalya", "root", "jalaz");
        Statement smt = con.createStatement();
                %>

    </body>
</html>
