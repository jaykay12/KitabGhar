<%-- 
    Document   : Dasboard
    Created on : 4 Jul, 2016, 1:19:44 AM
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
        <div style="height: 420px; width: 100%;" align="center">
            <table width="400px" height="400px" style="margin-top: 40px">
                <tr>
                    <td>
                        <a href="UserLibrary.jsp">
                        Library
                        </a>
                    </td>
                    <td>
                        <a href="UserShelf.jsp">
                        My Shelf
                        </a>
                    </td>
                    <td>
                        News Feed
                    </td>
                </tr>
                <tr>
                    <td>
                        Connections
                    </td>
                    <td>
                        Look for a friend
                    </td>
                    <td>
                        Settings
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <a href="Logout.jsp">
                        Log Out
                        </a>
                    </td>
                    <td></td>
                </tr>
            </table>            
            
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
