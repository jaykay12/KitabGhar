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
        <link rel="stylesheet" type="text/css" href="styles/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="styles/styles.css">
        <script src="js/jquery-3.3.1.js"></script>

        <script>
            $(document).ready(function(){
            // Check Radio-box
            $(".rating input:radio").attr("checked", false);

            $('.rating input').click(function () {
                $(".rating span").removeClass('checked');
                $(this).parent().addClass('checked');
                });

            $('input:radio').change(
            function(){
                var userRating = this.value;
                }); 
            });
        </script>

        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="HeaderTop.jsp" %>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        <fieldset style="width: 100%; text-align: center">
        <div style="height: 350px; width: 100%;" >
            
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
        
            <div style="height: 350px; width:30%; float: left">
                <fieldset style="size: 350px; text-align: center">
                    <legend> Cover Page </legend>
                        <img src="bookpics/<%= rs.getString(9)%>" height="300px" width="60%">
                </fieldset>
            </div>
            <div style="height: 330px; width:30%; float: left; text-align: left">
                <hr>
                <h2><center>Book Details</center></h2>
                <table width="70%" height="250px" border="0px" style="margin-left: 5%" >                  
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


            <div style="height: 350px; width:35%; float: left">
                <fieldset style="width: 90%; text-align: center">
                    <legend> Rating & Reviews </legend>
                        <form name="reviewForm" method="post" id="formRating" action="reviewSubmitServlet">
                            <br>
                            <div class="rating" style="margin-right: 100px;">
                                <span><input type="radio" name="rating" id="str5" value="5"><label for="str5"></label></span>
                                <span><input type="radio" name="rating" id="str4" value="4"><label for="str4"></label></span>
                                <span><input type="radio" name="rating" id="str3" value="3"><label for="str3"></label></span>
                                <span><input type="radio" name="rating" id="str2" value="2"><label for="str2"></label></span>
                                <span><input type="radio" name="rating" id="str1" value="1"><label for="str1"></label></span>
                            </div>
                            <br>
                            <div class="review-box" style="width:90%; height:200px; margin-top:50px;">
                                <textarea type="text" name="reviewBox" id="review" rows="5" cols="50"></textarea>
                            </div>
                            <div class="btnSubmitReview" style="width:100%;">
                                <input type="submit" name="btnSubmit" id="btnSubmit"/>
                            </div>
                            

                        </form>
                        <script type="text/javascript">
                            $('#formRating').submit(function(eventObj) {
                                $(this).append('<input type="hidden" name="userid" value="<%= userid %>" /> ');
                                $(this).append('<input type="hidden" name="bookid" value="<%= rs.getString(1) %>" /> ');
                                console.log("Done:");
                                return true;
                            });
                        </script>
                        
                </fieldset>
            </div>
        </div>
        
        <div style="height: 40px; width: 100%; text-align: center">
            <h2><a href="UserLibraryBuyBook.jsp?id=<%= rs.getString(7) %>"> Add to Shelf </a></h2>
            <h2><a href="HomeLibraryBookReviews.jsp?id=<%= rs.getString(7) %>"> Reviews </a> </h2>
        </div>

        

        </fieldset>

            <% } 
        } %>

    
        <%@include file="Footer.jsp" %>
    </body>
</html>
