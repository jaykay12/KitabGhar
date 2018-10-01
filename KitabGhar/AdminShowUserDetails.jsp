<%-- 
    Document   : AdminDisplayDetails
    Created on : 28 Jun, 2016, 1:45:08 AM
    Author     : Jalaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Details</title>
</head>

<body style="margin-top:3%;margin-left: 2%;margin-right: 3%">
    <%@include file="GetSession.jsp" %>
    <%@include file="connectionFile.jsp" %>

    <%
        String fid="";
        
        if(request.getParameter("id")!=null)
        {
            fid = request.getParameter("id");
            String qry = "select * from users where queryid="+fid+"";
            ResultSet rs = smt.executeQuery(qry);
            
                
            if(rs.next())
            {
             
        %>

    <div class="container">
        <div style="height: 400px; width:100%;">
            <fieldset style="size: 350px; text-align: center">
                <legend> Profile Picture </legend>
                <img src="profilepics/<%= rs.getString(9)%>" height="300px" width="300px">
            </fieldset>
            <center>Source: profilepics/
                <%= rs.getString(9)%>
            </center>
        </div>
        <div style="height: 500px; width:100%">
            <hr>
            <h2>
                <center>Complete Records</center>
            </h2>
            <center>
                <table class="table" style="text-align: center; width: 50%">
                    <tr>
                        <td><b>Name: </b></td>
                        <td>
                            <%= rs.getString(1) %>
                        </td>
                    </tr>
                    <tr>
                        <td><b>User Id: </b></td>
                        <td>
                            <%= rs.getString(2) %>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Email: </b></td>
                        <td>
                            <%= rs.getString(3) %>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Contact: </b></td>
                        <td>
                            <%= rs.getString(5) %>
                        </td>
                    </tr>
                    <tr>
                        <td><b>City: </b></td>
                        <td>
                            <%= rs.getString(6) %>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Tokens: </b></td>
                        <td>
                            <%= rs.getString(8) %>
                        </td>
                    </tr>
                </table>
            </center>
            <hr>
            <br>
            <br>
        </div>

        <% }
        }
             %>
        </table>
    </div>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>

</html>