<%-- 
    Document   : HeaderMidProfile
    Created on : 3 Jul, 2016, 6:50:49 PM
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
       <%@include file="GetSession.jsp" %>
       
       <% String useridpassed = userid; %>
        
        <div style="height:60px; width:100%; background-color: #d441ff" >
            <div style="margin-left: 20px;margin-top: 10px; float: left; width:15%;border-color: #ffffff; font-size: 30px; text-decoration: none"> <a href="UserDashboard.jsp"> Dashboard </a> </div>
            <div style="margin-top: 10px; float: left; width:15%; font-size: 30px"> <a href="UserProfile.jsp"> Profile </a> </div>
            <div style="margin-top: 10px; float: left; width:20%; font-size: 30px"> <a href="UserChangePassword.jsp"> Change Password </a> </div>
            <div float="left" width="10%" style="text-align: right; margin-right: 20px"> Hi,  <%= userid %> </div>
            <div float="left" width="10%" style="text-align: right; margin-right: 20px">
                <a href="Logout.jsp">Logout</a>
            </div>
        </div>
            
            <div style="background-color: #bbccdd">
                .
            </div>
    </body>
</html>
