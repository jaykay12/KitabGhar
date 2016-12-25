<%-- 
    Document   : Logout
    Created on : 24 Jun, 2016, 11:51:14 PM
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
        <%
            session.removeAttribute("vid");
            response.sendRedirect("HomePage.jsp");
            %>
    </body>
</html>
