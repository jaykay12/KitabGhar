<%-- 
    Document   : AdminShowLibrary
    Created on : 5 Jul, 2016, 9:18:48 AM
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
        String bookid,name,author,publication,category,subcategory,coverpic;
        int price;
        String qry = "select * from books";
        
        ResultSet rs = smt.executeQuery(qry);
        %>
        
        
        <h3><b>Displaying all Records</b></h3>
        <br>
        <table border="0px" cell-padding="0px" cellspacing="20px">
            <tr>
                <th>Book Id</th>
                <th>Cover Pic</th>
                <th>Name</th>
                <th>Author</th>
                <th>Publication</th>
                <th>Price</th>
                <th>Category</th>
                <th>Sub Category</th>
                <th> </th>
            </tr>
            
            <%
        while(rs.next())
        {
            bookid = rs.getString(1);
            name = rs.getString(2);
            author = rs.getString(3);
            publication = rs.getString(4);
            category = rs.getString(5);
            subcategory = rs.getString(6);
            coverpic = rs.getString(9);
            price = rs.getInt(8);
        %>
            <tr>
                <td><%= bookid %></td>
                <td><img src="bookpics/<%= category%>/<%= subcategory%>/<%=coverpic%>" height="100px" width="100px">
                <td><%= name %></td>
                <td><%= author %></td>
                <td><%= publication %></td>
                <td><%= price %></td>
                <td><%= category %></td>
                <td><%= subcategory %></td>
                <td> Reviews and More Details </td>
            </tr>
            
            <%
        }
        con.close();
        %>
        </table>
    </body>
</html>
