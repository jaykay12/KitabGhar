<%-- 
    Document   : HomeLibraryBookDetails
    Created on : 20 Aug, 2016, 12:06:47 PM
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
        <%@include file="HeaderMidSite.jsp" %>
        <%@include file="connectionFile.jsp" %>
        <div style="height: 400px; width: 100%;" >
            
        <%
            String fid="";
            if(request.getParameter("id")!=null)
            {
                fid = request.getParameter("id");
                String qry = "select * from books where queryid='"+fid+"'";
                ResultSet rs = smt.executeQuery(qry);
            
                
            if(rs.next())
            {
             
            %>
        
        
            <div style="height: 400px; width:50%; float: left">
                <fieldset style="size: 350px; text-align: center">
                    <legend> Cover Page </legend>
                        <img src="bookpics/<%= rs.getString(9)%>" height="300px" width="300px">
                </fieldset>
            </div>
            <div style="height: 400px; width:50%; float: left; text-align: left">
                <hr>
                <h2><center>Book Details</center></h2>
                <table width="70%" height="250px" border="0px" style="margin-left: 20px" >                  
                    <tr>
                        <td>Book Id: </td>
                        <td> <%= rs.getString(1) %></td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td> <%= rs.getString(2) %></td>
                    </tr>
                    <tr>
                        <td>Author: </td>
                        <td> <%= rs.getString(3) %></td>
                    </tr>
                    <tr>
                        <td>Publication: </td>
                        <td> <%= rs.getString(4) %></td>
                    </tr>
                    <tr>
                        <td>Category: </td>
                        <td> <%= rs.getString(5) %></td>
                    </tr>
                    <tr>
                        <td>Sub Category: </td>
                        <td> <%= rs.getString(6) %></td>
                    </tr>
                    <tr>
                        <td>Price: </td>
                        <td> <%= rs.getString(8) %></td>
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
            <h2><a href="HomeLibraryBookReviews.jsp">Reviews</a></h2>
        </div>
        
        <%@include file="Footer.jsp" %>
        
    </body>
</html>
