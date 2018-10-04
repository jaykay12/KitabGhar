<%-- 
    Document   : UserProfile
    Created on : 6 Jul, 2016, 1:36:36 AM
    Author     : Jalaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Profile</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        <div style="height: 400px; width: 100%;" >
            
        <%
            String qry = "select * from users where userid='"+useridpassed+"'";
            ResultSet rs = smt.executeQuery(qry);
            
                
            if(rs.next())
            {
             
            %>
        
        
            <div style="height: 400px; width:50%; float: left">
                <fieldset style="size: 350px; text-align: center">
                    <legend> Profile Picture </legend>
                        <img src="profilepics/<%= rs.getString(9)%>" height="300px" width="300px">
                </fieldset>
            </div>
            <div style="height: 400px; width:50%; float: left; text-align: left">
                <hr>
                <h2><center>Personal Information</center></h2>
                <table width="40%" height="250px" border="0px" style="margin-left: 20px" >                  
                    <tr>
                        <td>Name: </td>
                        <td> <%= rs.getString(1) %></td>
                    </tr>
                    <tr>
                        <td>User Id: </td>
                        <td> <%= rs.getString(2) %></td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td> <%= rs.getString(3) %></td>
                    </tr>
                    <tr>
                        <td>Contact: </td>
                        <td> <%= rs.getString(5) %></td>
                    </tr>
                    <tr>
                        <td>City: </td>
                        <td> <%= rs.getString(6) %></td>
                    </tr>
                    <tr>
                        <td>Tokens: </td>
                        <td> <%= rs.getString(8) %></td>
                    </tr>
                </table>
                <hr>
                <br>
                <br>
            </div>
        <% } %>
        </div>
        <div style="height: 40px; width: 100%; text-align: center">
            <h2><a href="UserUpdateProfile.jsp">Update Profile</a></h2>
        </div>
        
        <%@include file="Footer.jsp" %>
        
    </body>
</html>
