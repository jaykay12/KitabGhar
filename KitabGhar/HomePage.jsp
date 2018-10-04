<%-- 
    Document   : Home
    Created on : 3 Jul, 2016, 6:58:29 PM
    Author     : Jalaz
    Description: The Basic Homepage of the portal, (contains link for Home.jsp, HomeLibrary.jsp, HomeMission.jsp, Register.jsp, Login.jsp) 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Home</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidSite.jsp" %>
        <div style="height: 460px; width: 100%">
            <div style="height: 460px; width:50%; float: left">
                <fieldset style="size: 350px; text-align: center">
                    <legend> Empowering Digital India </legend>
                        <img src="ProjectImages/projectlogo.jpg" height="300px" width="300px">
                </fieldset>
            </div>
            <div style="height: 460px; width:50%; float: left; text-align: center">
                <br>
                <br>
                <hr>
                <a href="Register.jsp"><h2>Sign Up (For New Users)</h2></a>
                <br>
                <hr>
                <br>
                <a href="Login.jsp"><h2>Log In (For Existing Users)</h2></a>
                <hr>
                <br>
                <br>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
        <% System.out.println("Hello"); %>
    </body>
</html>
