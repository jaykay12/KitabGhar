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
        <title>KitabGhar | Admin</title>
        <link rel="shortcut icon" type="image/x-icon" href="ProjectImages/favicon.ico" />
    </head>


<body style="margin-top:3%;margin-left: 2%;margin-right: 3%">
    <%@include file="connectionFile.jsp" %>
    <%@include file="AdminHandle.jsp" %>

        
        <%
        String fid=request.getParameter("id");
        
        if(fid!=null)
        {
            String qry = "select * from users where queryid=?";
            stm = con.prepareStatement(qry);
            stm.setString(1, fid);
            ResultSet rs = stm.executeQuery();
            
                
            if(rs.next())
            {
             
        %>

    <div class="container">
        <div style="margin-top:80px;">
            <fieldset style="text-align:center">
                <img class="img-thumbnail" src="profilepics/<%= rs.getString(9)%>" height="300px" width="250px">
            </fieldset>
            <center>Source: profilepics/
                <%= rs.getString(9)%>
            </center>
        </div>
        <div>
            <hr>
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

</body>

</html>