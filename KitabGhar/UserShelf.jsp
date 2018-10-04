<%-- 
    Document   : UserShelf
    Created on : 6 Jul, 2016, 1:33:21 AM
    Author     : Jalaz
    Description: Page Displaying the Personal Shelf of the User, including the books purchased by the user, 
                 Containing filters and modified search records,
                 Clicking on a book, will take you to HomeShelfBookDetails.jsp, showing you the details about the book and 
                 providing the link for downloading, reading ONLINE or writing reviews.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Shelf</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        
        
<%-- ------------------------------------ Top Layout for filters and searching ---------------------------------- --%>
        
        <div style="height: 60px; width: 100%; margin-left: 0px; margin-top: 20px">
                <div style="height: 50px; width: 25%; text-align: center; float: left">
                    <form method="post" action="UserShelf.jsp">
                        <fieldset style="margin-left: 50px; width: 220px">
                            <legend>Search Using filter</legend>
                            <select name="tbSearchFilter">
                                <option value="">ALL SECTIONS-(No Filters)</option>
                                <option value="Academic">ACADEMIC SECTION</option>
                                <option value="ChildrenBooks">CHILDREN SECTION</option>
                                <option value="Comics">COMIC SECTION</option>
                                <option value="Novel">NOVEL SECTION</option>
                                <option value="Programming">PROGRAMMING SECTION</option>
                            </select>
                            <input type="submit" value="Apply" name="btnApply" >
                        </fieldset>
                    </form>
                </div>

                <div style="height: 50px; width: 25%; text-align: center; float: left">
                    <form method="post" action="UserShelf.jsp">
                        <fieldset style="margin-left: 30px; width: 250px">
                            <legend>Search By Name</legend>
                            <input type="text" name="tbSearchName">
                            <input type="submit" name="btnSearchName" value="Search">
                        </fieldset>
                    </form>
                </div>

                <div style="height: 50px; width: 25%; text-align: center; float: left">
                    <form method="post" action="UserShelf.jsp">
                        <fieldset style="margin-left: 30px; width: 250px">
                            <legend>Search By Author Name</legend>
                            <input type="text" name="tbSearchAuthor">
                            <input type="submit" name="btnSearchAuthor" value="Search">
                        </fieldset>
                    </form>
                </div>
            
                <div style="height: 50px; width: 25%; text-align: center; float: left">
                    <form method="post" action="UserShelf.jsp">
                        <fieldset style="margin-left: 30px; width: 250px">
                            <legend>Search By Publications</legend>
                            <input type="text" name="tbSearchPublication">
                            <input type="submit" name="btnSearchPublication" value="Search">
                        </fieldset>
                    </form>
                </div>
        </div>
        
        <br>
        <br>
        <hr>
        <br>

<%-- ---------------------------------------------------------------------------------------------------- --%>
<%! int selection = 0;
    int size, subsize, looplimiter, j;  %>        
        
<%-- ------------------------------ Working with Filters in the display section ------------------------- --%>
        <%
        String bookid,name,author,publication,category,subcategory,coverpic;
        int price;
        
        if(selection == 0) 
        {
            String filter="";
            String qry1="";
            String search="";

            if(request.getParameter("tbSearchFilter")==null)
            {
               qry1 = "select * from books,shelfs where shelfs.userid='"+useridpassed+"' AND shelfs.bookid = books.bookid";
            }
            else if(request.getParameter("tbSearchFilter")!= null)
            {
                filter=request.getParameter("tbSearchFilter");
                qry1 = "select * from books,shelfs where shelfs.userid='"+useridpassed+"' AND shelfs.bookid = books.bookid AND category ='"+filter+"'";
                //System.out.println("sql: "+qry1);
            }
            
            if(request.getParameter("btnSearchName")!=null)
            {
                search = request.getParameter("tbSearchName");
                qry1 = "select * from books,shelfs where shelfs.userid='"+useridpassed+"' AND shelfs.bookid = books.bookid AND name LIKE '%"+search+"%'";
            }
    
            if(request.getParameter("btnSearchAuthor")!=null)
            {
                search = request.getParameter("tbSearchAuthor");
                qry1 = "select * from books,shelfs where shelfs.userid='"+useridpassed+"' AND shelfs.bookid = books.bookid AND author LIKE '%"+search+"%'";
            }
    
            if(request.getParameter("btnSearchPublication")!=null)
            {
                search = request.getParameter("tbSearchPublication");
                qry1 = "select * from books,shelfs where shelfs.userid='"+useridpassed+"' AND shelfs.bookid = books.bookid AND publication LIKE '%"+search+"%'";
            }

            ResultSet rs1 = smt.executeQuery(qry1);

            size=0;
            subsize=0;
            if(rs1.next()==false)
            {
                out.println("<h1 style="+"margin-top:50px;margin-bottom:250px;"+"><center>Shelf Is Empty..! Kindly Add books from the library.</center></h1>");
            }
            else if(rs1 != null)
            {
                rs1.beforeFirst();
                rs1.last();
                size=rs1.getRow();
            
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
                            <tr><td><a href="UserShelfBookDetails.jsp?id=<%=rs1.getString(7) %>"> Click to get details </a></td></tr>
                        </table>
                    </td>

                    <% j++; } %>
                </tr>
                <% } %>
            </table>
    <%  }
      }  %>
<%-- ------------------------------------------------------------------------------------------------------ --%>        
 
        <% con.close(); %>
            <%@include file="Footer.jsp" %>

    </body>
</html>
