<%-- 
    Document   : Login
    Created on : 24 Jun, 2016, 7:42:26 PM
    Author     : Jalaz
--%>

<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Login</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="connectionFile.jsp" %>
        <%
            String ErrorMessage="";
            String id="",password="";
            
            if(request.getParameter("btnLogin")!=null)
            {
                id = request.getParameter("tbUserId");
                password= request.getParameter("tbPassword");
             
                
                
             if (id.equals("admin") && password.equals("admin"))
             {  session.setAttribute("vid",1);
                response.sendRedirect("AdminHandle.jsp");
             }
             else
             {
                 //-----------------------------------Encryption of Password-----------------------------
                    String base = password;
                    password = "";
                    MessageDigest m = MessageDigest.getInstance("MD5");
                    m.reset();
                    m.update(base.getBytes());

                    byte[] digest = m.digest();
                    BigInteger bigInt = new BigInteger(1, digest);

                    password = bigInt.toString(16);
                    while(password.length()<32)
                    {
                        password = "0"+password;
                    }
                //--------------------------------------------------------------------------------------
                  
                 
                String qry = "select * from users where userid='"+id+"'&& password='"+password+"'";
                ResultSet rs = smt.executeQuery(qry);
             
                if(rs.next())
                    {
                        session.setAttribute("vid",id);
                        response.sendRedirect("UserDashboard.jsp");
                    }
                else
                    {  ErrorMessage="Invalid Id or Password";  }   
                }
            }
            con.close();
            %>
        
        
        <%@include file="HeaderMidSite.jsp" %>
        <div style="height: 440px; width: 100%">
        <h2>Login: Existing User</h2>
        <br>
        <br>
        <fieldset>
            <form method="post">
                <table border="0px" cell-padding="0px" cell-spacing="2px" align="center">
                    <tr>
                        <td>
                            User Id:
                        </td>
                        <td>
                            <input type="text" name="tbUserId">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <input type="password" name="tbPassword">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <input type="submit" name="btnLogin" value="LOGIN">
                        </td>
                    </tr>
                </table>
            </form>
        </fieldset>
        <br><br>
        <hr>
        <b><h4 style="color:red"><%= ErrorMessage %></h4></b>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
