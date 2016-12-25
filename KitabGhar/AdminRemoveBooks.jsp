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
                
                String qry="delete from books where bookid='"+id+"'";
                int r = smt.executeUpdate(qry);
                
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
        <form method="post">
            <fieldset>
                <table height="50px" border="1px">
                    <tr>
                        <td>Book Id:</td>
                        <td><input type="digit" name="tbId"></td>
                    </tr>
                </table>
                <br>
                        <input type="submit" name="btnSubmit" value="Delete">
            </fieldset>
        </form>
        <br>
        <br>
        <hr>
        <b><h4 style="color:green"> <%= SuccessMessage %> </h4></b>
                <b><h4 style="color:red"> <%= ErrorMessage %> </h4></b>
    </body>
</html>
