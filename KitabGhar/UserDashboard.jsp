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
        <link rel="stylesheet" type="text/css" href="styles/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="styles/styles.css">
        <title>KitabGhar | Dashboard</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>

        <div class="row" style="margin-top: 100px; margin-bottom: 250px; text-align:center;">
            <div class="col-md-4 dashboard-rows">
                <div class="btn btn-outline-primary" onclick="location.href = 'UserLibrary.jsp';">Library</div>
            </div>
            <div class="col-md-4 dashboard-rows">
                <div class="btn btn-outline-primary" onclick="location.href = 'UserShelf.jsp';">Personal Shelf</div>
            </div>
            <div class="col-md-4 dashboard-rows">
                <div class="btn btn-outline-primary" onclick="location.href = 'UserRecommendation.jsp';">Recommendations</div>
            </div>
        </div>
        
        <%@include file="Footer.jsp" %>
    </body>
</html>
