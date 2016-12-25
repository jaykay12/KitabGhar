<%-- 
    Document   : GetSession
    Created on : 29 Jun, 2016, 3:02:21 PM
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
            String userid="";
            if(session.getAttribute("vid")!=null)
            {   
                userid = session.getAttribute("vid").toString();
            }
            else
            {
                response.sendRedirect("Login.jsp");  
            }
            
            %>
    </body>
</html>
