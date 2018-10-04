<%-- 
    Document   : UserLibraryBuyBook
    Created on : 18 Jul, 2016, 12:25:43 PM
    Author     : Jalaz
    Description: Accessed using query string, this page lead the user to buy a book by paying token money. On clicking
                 Confirm Buy, Using threads.. processing.. is displayed.. after which Payment done. and book added to the shelf.
                 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Sales</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        
        <div style="height: 460px; width: 100%;" >
            
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
            
            <fieldset style="size: 350px; text-align: center">
                    <legend> Cover Page </legend>
                        <img src="bookpics/<%= rs.getString(9)%>" height="300px" width="240px">
            </fieldset>
            
            <center>    
                <a href="UserLibraryConfirmBuy.jsp?id= <%=rs.getString(7) %>"> <h3>BUY NOW : <%= rs.getString(8)%></h3></a>
                <a href="UserLibraryBookDetails.jsp?id= <%= rs.getString(7) %>"><h3>CANCEL</h3></a>   
            </center>
            
             <% } 
            } %>
        </div>
            <%@include file="Footer.jsp" %>
    </body>
</html>
