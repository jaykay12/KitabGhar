<%-- 
    Document   : HomeChangePassword
    Created on : 24 Jun, 2016, 7:47:43 PM
    Author     : Jalaz
    Description: Helps in updating the password
--%>

<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="HeaderTop.jsp" %>
         <%@include file="HeaderMidProfile.jsp" %>
         <%@include file="connectionFile.jsp" %>
            <div style="height: 440px; width: 100%">
            <%
            String SuccessMessage="", ErrorMessage="";
            try
            {
            if(request.getParameter("btnSubmit")!=null)
            {
                String oldPass,newPass,confirmPass,password="";
                oldPass = request.getParameter("tbCurPass");
                newPass = request.getParameter("tbNewPass");
                confirmPass = request.getParameter("tbConfirmPass");
                
                //-----------------------------------Encryption of Password-----------------------------
                    String base = oldPass;
                    oldPass = "";
                    MessageDigest m = MessageDigest.getInstance("MD5");
                    m.reset();
                    m.update(base.getBytes());

                    byte[] digest = m.digest();
                    BigInteger bigInt = new BigInteger(1, digest);

                    oldPass = bigInt.toString(16);
                    while(oldPass.length()<32)
                    {
                        oldPass = "0"+oldPass;
                    }
                //--------------------------------------------------------------------------------------
                  
                
                
                String qry = "select * from users where userid='"+useridpassed+"'";
                ResultSet rs = smt.executeQuery(qry);
                if(rs.next())
                {
                    password = rs.getString(4);
                }
                if(oldPass.equals(password))
                {
                    if(newPass.equals(confirmPass))
                    {
                        
                        //-----------------------------------Encryption of Password-----------------------------
                    String base1 = newPass;
                    newPass = "";
                    MessageDigest m1 = MessageDigest.getInstance("MD5");
                    m1.reset();
                    m1.update(base1.getBytes());

                    byte[] digest1 = m1.digest();
                    BigInteger bigInt1 = new BigInteger(1, digest1);

                    newPass = bigInt1.toString(16);
                    while(newPass.length()<32)
                    {
                        newPass = "0"+newPass;
                    }
                //--------------------------------------------------------------------------------------
                  
                        
                        String qry1 = "update users set password='"+newPass+"' where userid='"+useridpassed+"'";
                        int r = smt.executeUpdate(qry1);
                
                        if(r>0)
                        SuccessMessage="Password Updated Successfully";
                        else
                        ErrorMessage="Password Updation Failed, Sorry for the Inconvenience caused";
                    }
                    else
                    {
                        ErrorMessage="Your Password doesn't match";
                    }
                }
                else
                {
                    ErrorMessage="Incorrect Password";
                }
            }
            }
          catch(Exception ex)
            {
                out.println(ex);
            }
            
            con.close();
            
            %>
            
            
            
             <h3><b>Change Password</b></h3>
        <br>
        <form method="post">
            <fieldset>
                <table height="100px" border="1px">
                    <tr>
                        <td>Current Password:</td>
                        <td><input type="password" name="tbCurPass"></td>
                    </tr>
                    <tr>
                        <td>New Password:</td>
                        <td><input type="password" name="tbNewPass"></td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td><input type="password" name="tbConfirmPass"></td>
                    </tr>
                </table>
                <br>
                        <input type="submit" name="btnSubmit" value="Done">
            </fieldset>
        </form>
        <br>
        <hr>
        
        <b><h4 style="color:green"><%= SuccessMessage %></h4></b>
        <b><h4 style="color:red"><%= ErrorMessage %></h4></b>
    
            </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
