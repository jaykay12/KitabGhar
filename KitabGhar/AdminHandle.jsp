<%-- 
    Document   : adminHandle
    Created on : 24 Jun, 2016, 7:42:51 PM
    Author     : Jalaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Admin</title>
        <link rel="shortcut icon" type="image/x-icon" href="ProjectImages/favicon.ico" />
    </head>
    <body>
        <%@include file="GetSession.jsp" %>
        <h1>I am The admin, Dude!</h1>
            <div style="float:left;width:18%">
                <a href="AdminRemoveUser.jsp">Delete any User Profile</a>
            </div>
            <div style="float:left;width:18%">
                <a href="AdminShowUsers.jsp">Show All Users</a>
            </div>
            
        <div style="float:right; width:20%">
            <a href="Logout.jsp">Admin Logout</a>
        </div>
            
        <br><br>
        
             <div style="float:left;width:18%">
                <a href="AdminAddBooks.jsp">Add Books to Store</a>
            </div>
            <div style="float:left;width:18%">
                <a href="AdminUpdateBooks.jsp">Update Book Info</a>
            </div>
             <div style="float:left;width:18%">
                <a href="AdminRemoveBooks.jsp">Remove any Book</a>
            </div>
            <div style="float:left;width:18%">
                <a href="AdminShowLibrary.jsp">Show full library</a>
            </div>
        <br>
        <br>
        <hr>
    </body>
</html>
