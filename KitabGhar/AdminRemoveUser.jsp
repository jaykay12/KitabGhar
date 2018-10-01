<%-- 
    Document   : AdminDelete
    Created on : 24 Jun, 2016, 7:46:39 PM
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
               
        <%@include file="connectionFile.jsp" %>
        <%
        String SuccessMessage="",ErrorMessage="";
        try{
            String id;
            if(request.getParameter("btnSubmit")!=null)
            {
                id=request.getParameter("tbId");
                
                String qry="delete from users where userid='"+id+"'";
                int r = smt.executeUpdate(qry);
                
                if(r>0)
                {   SuccessMessage="Record Deleted";    }
                else
                {   ErrorMessage="Record Not found";    }
            }
            
        }
        catch(Exception ex)
        {   out.println(ex);    }
        
        con.close();
           %>
           
           <%@include file="AdminHandle.jsp" %>
        <h3><b>Delete Record Page</b></h3>
        <br>
        <form method="post" style="margin-left: 40%; margin-right: 40%; margin-top:2%">
                <fieldset>
                    <div class="form-group">
                        <label class="label label-info" for="bookId">User Id</label>
                        <input type="digit" name="tbId" class="form-control" id="boookId" placeholder="Enter user ID">
                    </div>
                    <button type="submit" name="btnSubmit" class="btn btn-danger">Delete</button>
                </fieldset>
            </form>
        <br>
        <br>
        <hr>
        <b><h4 style="color:green"> <%= SuccessMessage %> </h4></b>
                <b><h4 style="color:red"> <%= ErrorMessage %> </h4></b>
    </body>
</html>
