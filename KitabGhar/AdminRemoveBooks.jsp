<%-- 
    Document   : AdminRemoveBooks
    Created on : 5 Jul, 2016, 9:18:21 AM
    Author     : Jalaz
    Description: Let the Admin remove books from the bookstore
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
       <%@include file="connectionFile.jsp" %>

        <%
        String qry="delete from books where bookid=?";
        stm = con.prepareStatement(qry);
        
        String SuccessMessage="",ErrorMessage="";
        try{
            String id;
            if(request.getParameter("btnSubmit")!=null)
            {
                stm.setString(1,request.getParameter("tbId"));
                
                int r = stm.executeUpdate();
                
                if(r>0)
                {   SuccessMessage="Book Record Deleted";    }
                else
                {   ErrorMessage="Book Id Not found";    }
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
            <div>
                <div class="form-group">
                    <label class="label label-info" for="bookId">Book Id</label>
                    <input type="digit" name="tbId" class="form-control" id="boookId" placeholder="Enter book ID">
                </div>
                <div style="text-align:center;">
                    <button  style="display: inline-block;" type="submit" name="btnSubmit" class="btn btn-danger">Delete</button>
                </div>
            </div>
        </fieldset>
    </form>
    <br>
    <br>
    <hr>
    <b>
        <h4 style="color:green">
            <%= SuccessMessage %>
        </h4>
    </b>
    <b>
        <h4 style="color:red">
            <%= ErrorMessage %>
        </h4>
    </b>


</body>

</html>