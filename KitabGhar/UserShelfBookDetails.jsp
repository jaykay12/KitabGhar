<%-- 
    Document   : UserShelfBookDetails
    Created on : 21 Aug, 2016, 12:18:55 AM
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
        <%@include file="HeaderTop.jsp" %>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        <div style="height: 400px; width: 100%;" >
            
        <%
            //String qry = "select * from users where userid='"+useridpassed+"'";
            String fid="";
            //String Bookid="";
            if(request.getParameter("id")!=null)
            {
                fid = request.getParameter("id");
                String qry1 = "select * from books where queryid='"+fid+"'";
                ResultSet rs1 = smt.executeQuery(qry1);
                
            
                
            if(rs1.next())
            {
                //Bookid = rs1.getNString(1);
                
                //String qry2 = "select * from shelfs where bookid='"+Bookid+"' AND userid='"+useridpassed+"'"; 
                //ResultSet rs2 = smt.executeQuery(qry2);
                
            %>
        
        
            <div style="height: 400px; width:50%; float: left">
                <fieldset style="size: 350px; text-align: center">
                    <legend> Cover Page </legend>
                        <img src="bookpics/<%= rs1.getString(9)%>" height="300px" width="300px">
                </fieldset>
            </div>
            <div style="height: 400px; width:50%; float: left; text-align: left">
                <hr>
                <h2><center>Book Details</center></h2>
                <table width="70%" height="250px" border="0px" style="margin-left: 20px" >                  
                    <tr>
                        <td>Book Id: </td>
                        <td> <%= rs1.getString(1) %></td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td> <%= rs1.getString(2) %></td>
                    </tr>
                    <tr>
                        <td>Author: </td>
                        <td> <%= rs1.getString(3) %></td>
                    </tr>
                    <tr>
                        <td>Publication: </td>
                        <td> <%= rs1.getString(4) %></td>
                    </tr>
                    <tr>
                        <td>Category: </td>
                        <td> <%= rs1.getString(5) %></td>
                    </tr>
                    <tr>
                        <td>Sub Category: </td>
                        <td> <%= rs1.getString(6) %></td>
                    </tr>
                    <tr>
                        <td>Price: </td>
                        <td> <%= rs1.getString(8) %></td>
                    </tr>
                </table>
                <hr>
                <br>
                <br>
            </div>
        <% } 
            } %>
        </div>
        <div style="height: 40px; width: 100%; text-align: center">
            <h2><a href=""> Download </a></h2>
            <h2><a href=""> Read Online </a> </h2>
            <h2><a href=""> Review Section </a> </h2>
        </div>
        
        <%@include file="Footer.jsp" %>
    </body>
</html>
