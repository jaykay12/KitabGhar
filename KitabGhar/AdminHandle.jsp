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

    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="AdminHandle.jsp">ADMIN PANEL</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        User Actions
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="AdminShowUsers.jsp">Show All Users</a>
                        <a class="dropdown-item" href="AdminRemoveUser.jsp">Delete Any User Profile</a>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Books Actions
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="AdminAddBooks.jsp">Add Books To Store</a>
                        <a class="dropdown-item" href="AdminUpdateBooks.jsp">Update Book Info</a>
                        <a class="dropdown-item" href="AdminRemoveBooks.jsp">Remove Any Book</a>
                        <a class="dropdown-item" href="AdminShowLibrary.jsp">Show Library</a>
                    </ul>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Logout.jsp">Admin Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Bootstrap core JavaScript
                ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <link rel="stylesheet" href="styles/bootstrap.css">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.js"></script>
</body>

</html>