<%-- 
    Document   : UserRecommendations
    Created on : 29 Sep, 2018, 2:33:07 PM
    Author     : Jalaz
    Description: Page Displaying the recommendations for the Subscribers of the Book portal.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Recommendations</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        
        <br>
        <br>
        <hr>
        <br>
        

<%-- ---------------------------------------------------------------------------------------------------- --%>
<%! int selection = 0;
    int size, subsize, looplimiter, j;  %>        
        
<%-- ------------------------------ Working with all Filters and Searches in the display section ------------------------- --%>
        <%
        String bookid,name,author,publication,category,subcategory,coverpic;
        int price;
        
        if(selection == 0) 
        {
            String filter="";
            String qry1="";
            String search="";

            
            qry1 = "select * from books";
            

            ResultSet rs1 = smt.executeQuery(qry1);

            size=0;
            subsize=0;
            if(rs1 != null)
            {
                rs1.beforeFirst();
                rs1.last();
                size=rs1.getRow();
            }
            subsize = size % 6;
            size = size/6;

            looplimiter = 6;

            rs1.beforeFirst();
            %>

            <table border="1 px" cellspacing="50px">
                <%  j=0; 
            for(int i=0;i<=size;i++) { 
                    if(j==5)
                        rs1.previous();
                    j=0; %>
                <tr>
                    <%
                if(i==size)
                    looplimiter = subsize;

                  while(j < looplimiter)  
                    { 
                        boolean b1=rs1.next();
                        bookid = rs1.getString(1);
                        name = rs1.getString(2);
                        author = rs1.getString(3);
                        publication = rs1.getString(4);
                        category = rs1.getString(5);
                        subcategory = rs1.getString(6);
                        coverpic = rs1.getString(9);
                        price = rs1.getInt(8);
                                                %>
                    <td>
                        <table border="0px">
                            <tr><td><img src="bookpics/<%=coverpic%>" height="150px" width="150px"></td></tr>
                            <tr><td><%= name %></td></tr>
                            <tr><td><%= author %></td></tr>
                            <tr><td><a href="UserLibraryBookDetails.jsp?id=<%= rs1.getString(7) %>"> Click to get details </a></td></tr>
                        </table>
                    </td>

                    <% j++; } %>
                </tr>
                <% } %>
            </table>
    <%    }  %>
<%-- ------------------------------------------------------------------------------------------------------ --%>        

            
            <% con.close(); %>
            <%@include file="Footer.jsp" %>
    </body>
</html>
