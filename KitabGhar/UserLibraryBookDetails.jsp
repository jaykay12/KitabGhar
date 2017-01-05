 <%-- 
    Document   : UserLibraryBookDetails
    Created on : 18 Jul, 2016, 12:26:34 PM
    Author     : Jalaz
    Description: Using query string, we will get over this page, showing the book details and its brief abstract
                 2 options will be there, 
                 "Add to Shelf" means buying the book by paying certain amount of money
                 "Reviews" will present the reviews written by the buyers of the book. Here we can only read a review.
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
                        <img src="bookpics/<%= rs.getString(5)%>/<%= rs.getString(6)%>/<%= rs.getString(9)%>" height="300px" width="300px">
                </fieldset>
            </div>
            <div style="height: 380px; width:50%; float: left; text-align: left">
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
       
        </div>
        <div style="height: 40px; width: 100%; text-align: center">
            <h2><a href="UserLibraryBuyBook.jsp?id=<%= rs.getString(7) %>"> Add to Shelf </a></h2>
            <h2><a href="HomeLibraryBookReviews.jsp?id=<%= rs.getString(7) %>"> Reviews </a> </h2>
        </div>
        
         <% } 
            } %>
        <%@include file="Footer.jsp" %>
    </body>
</html>
