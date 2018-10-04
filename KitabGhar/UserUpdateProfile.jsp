<%-- 
    Document   : UserUpdateProfile
    Created on : 6 Jul, 2016, 2:06:36 AM
    Author     : Jalaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Profile</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        <div style="height: 400px; width: 100%;" >
            
        
            
        <%
        String name="",email="",city="",contact="";
        String SuccessMessage="", ErrorMessage="";
                
        try{
            
//-----------------------------------Updating the profile picture--------------------------------
       String filename="";
       if(request.getParameter("fn")!=null)
       {
           filename = request.getParameter("fn");
           String qry = "update users set profilepic='"+filename+"' where userid='"+useridpassed+"'";
           int result = smt.executeUpdate(qry);
       }
       else if(request.getParameter("fn")==null)
       {
            
//------------------------------------Update the name---------------------------------------                
            if(request.getParameter("btnChangeName")!=null)
            {
                name = request.getParameter("tbChangeName");
                String qry = "update users set name='"+name+"' where userid='"+useridpassed+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Name Updated Successfully";
                }
                else
                    ErrorMessage = "Problem Updating, Try Later";
            }
//------------------------------------Update Email----------------------------------
            if(request.getParameter("btnChangeEmail")!=null)
            {
                email = request.getParameter("tbChangeEmail");
                String qry = "update users set email='"+email+"' where userid='"+useridpassed+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Email Updated Successfully";
                }
                else
                    ErrorMessage = "Problem Updating, Try Later";
            }

//-------------------------------------Update City------------------------------
            if(request.getParameter("btnChangeCity")!=null)
            {
                city = request.getParameter("tbChangeCity");
                String qry = "update users set city='"+city+"' where userid='"+useridpassed+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "City Updated Successfully";
                }
                else
                    ErrorMessage = "Problem Updating, Try Later";
            }
         
//------------------------------------Update Contact---------------------------------------            
            if(request.getParameter("btnChangeContact")!=null)
            {
                contact = request.getParameter("tbChangeContact");
                String qry = "update users set contact='"+contact+"' where userid='"+useridpassed+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Contact Updated Successfully";
                }
                else
                    ErrorMessage = "Problem Updating, Try Later";
            }
       }
       
        }catch(Exception ex)
        {
            out.println(ex);
        }

        
//-----------------------------------Displaying Current Values--------------------------
         String qry1 = "select * from users where userid='"+useridpassed+"'";
        ResultSet rs = smt.executeQuery(qry1);
            
                
            if(rs.next())
            { 
            %>
        
        <form action="UploaderDp" method="post" enctype="multipart/form-data">
            <div style="height: 440px; width:50%; float: left">
                <fieldset style="size: 350px; text-align: center">
                    <legend> Profile Picture </legend>
                    <img src="profilepics/<%= rs.getString(9)%>" height="300px" width="300px">
                        <br>
                        <input type="file" name="uploadedFile">
                        <br>
                        <center>
                            <input type="submit" value="Change Profile Picture" name="btnChangeDp">
                        </center>
                </fieldset>
            </div>
        </form>
            
            
            
            <div style="height: 440px; width:50%; float: left; text-align: left">
                <hr>
                <form method="post">
                <h2><center>Personal Information</center></h2>
                    <table width="40%" height="240px" border="0px" style="margin-left: 20px" >                  
                        <tr>
                            <td>Name: </td>
                            <td><input type="text" value="<%= rs.getString(2) %>" name="tbChangeName"</td>
                            <td><input type="submit" value="Update" name="btnChangeName"></td>
                        </tr>
                        <tr>
                            <td>User Id: </td>
                            <td><b><%= rs.getString(1) %></b></td>
                        </tr>
                        <tr>
                            <td>Email: </td>
                            <td><input type="text" value="<%= rs.getString(3) %>" name="tbChangeEmail"</td>
                            <td><input type="submit" value="Update" name="btnChangeEmail"></td>
                        </tr>
                        <tr>
                            <td>Contact: </td>
                            <td><input type="text" value="<%= rs.getString(5) %>" name="tbChangeContact"</td>
                            <td><input type="submit" value="Update" name="btnChangeContact"></td>
                        </tr>
                        <tr>
                            <td>City: </td>
                            <td><input type="text" value="<%= rs.getString(6) %>" name="tbChangeCity"</td>
                            <td><input type="submit" value="Update" name="btnChangeCity"></td>
                        </tr>
                        <tr>
                        <td>Tokens: </td>
                        <td><b> <%= rs.getString(8) %></b></td>
                    </tr>
                    </table>
                </form>
                <br>
                <br>
                <hr>
            </div>
        </div>
        <hr>
        <b><h4 style="color:green"><%= SuccessMessage %></h4></b>
        <b><h4 style="color:red"><%= ErrorMessage %></h4></b>
        
        <% } con.close(); %>
        
        <%@include file="Footer.jsp" %>
        
    </body>
</html>
