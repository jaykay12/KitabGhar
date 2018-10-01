<%-- 
    Document   : AdminDisplay
    Created on : 25 Jun, 2016, 12:38:18 AM
    Author     : Jalaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="connectionFile.jsp" %>
        <%@include file="AdminHandle.jsp" %>
        
        <%
        String id,name,email,coverpic;
        String qry = "select * from users";
        
        ResultSet rs = smt.executeQuery(qry);
        %>
        
        
        <h3><b>Displaying All Current Subscribers</b></h3>
        <br>
        <table class="table table-striped">
            <tr>
                <th>User Id</th>
                <th>Profile</th>
                <th>Name</th>
                <th>Email</th>
                <th>User Details</th>
            </tr>
            
            <%
        while(rs.next())
        {
            id = rs.getString(1);
            name = rs.getString(2);
            email = rs.getString(3);
            coverpic = rs.getString(9);
        %>
            <tr>
                <td><%= id %></td>
                <td><img src="profilepics/<%= rs.getString(9)%>" height="150px" width="150px"></td>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><a href="AdminShowUserDetails.jsp?id= <%=rs.getString(7)%>"> View More </a> </td>
            </tr>
            
            <%
        }
        con.close();
        %>
        </table>
    </body>
</html>