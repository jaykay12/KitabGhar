<%-- 
    Document   : Register
    Created on : 24 Jun, 2016, 7:42:13 PM
    Author     : Jalaz
    Description: Sign Up page for Registering new users
--%>

<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@include file="connectionFile.jsp" %>
        <%
            boolean flag=false;
            String userid="",name="",email="",password="",city="",contact="";
            int queryid;
            String SuccessMessage="", ErrorMessage="";
            try{
            if(request.getParameter("btnSubmit")!=null)
            {
                userid = request.getParameter("tbUserId");
                name = request.getParameter("tbName");
                email = request.getParameter("tbEmail");
                password = request.getParameter("tbPassword");
                city = request.getParameter("tbCity");
                contact = request.getParameter("tbContact");
                
                Random r = new Random();
                queryid = (100000+r.nextInt(99999));
                
                int tokens = 100;
                String profilepic="default.png";
                
                //-------------------------------------Encryption of Password------------------------------------------
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
                //---------------------------------------------End----------------------------------------------------------
                
                
                String qry = "insert into users values('"+userid+"','"+name+"','"+email+"','"+password+"','"+contact+"','"+city+"',"+queryid+","+tokens+",'"+profilepic+"')";
                
                
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Successfully Registered, Login to continue";
                    flag=true;
                }
                else
                    ErrorMessage = "UserId already exists, kindly choose new one";
                
            
                }
            }
            catch(SQLIntegrityConstraintViolationException ex1)
            {   ErrorMessage= ex1+"";    
            //"UserId already exists, kindly choose new one";    
            }
            catch(SQLException ex2)
            {   ErrorMessage=ex2+"";
                    //"UserId already exists, kindly choose new one";
            }    
            con.close();
            %>
        
        <%@include file="HeaderTop.jsp" %>
        <%@include file="HeaderMidSite.jsp" %>
        <div style="height: 440px; width: 100%">
            
<%-- ------------------------------- Layout Form for Sign Up Process ------------------------------------------  --%>
            
        <h2>Register: New User</h2>
        <br>
        <fieldset>
            <form method="post">
                <table border="0px" cell-padding="0px" cell-spacing="1px"align="center">
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
                            Name:
                        </td>
                        <td>
                            <input type="text" name="tbName">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email Id:
                        </td>
                        <td>
                            <input type="email" name="tbEmail">
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
                            Home City
                        </td>
                        <td>
                            <input type="text" name="tbCity">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact Number:
                        </td>
                        <td>
                            <input type="text" name="tbContact">
                        </td>
                    </tr>
                        
                
                    <tr>
                        <td></td>
                        <td>
                        <input type="submit" name="btnSubmit" value="Register">
                        </td></tr>
                </table>    
            </form>
        </fieldset>
        <br>
        <hr>
        <b><h4 style="color:green"><%= SuccessMessage %></h4></b>
        <b><h4 style="color:red"><%= ErrorMessage %></h4></b>

<%-- ----------------------------------------------------------------------------------------------------- --%>
        
        <%if(flag)
        { %>
             <a href="Login.jsp"><i>Click to continue : Login</i></a>
             <br>
             <a href="UploadPic.jsp"><i> Click to Upload Display Picture </i></a>
         <% } %>
         </div>
         
         <%@include file="Footer.jsp" %>
</body>
</html>
