<%-- 
    Document   : AdminUpdateBooks
    Created on : 5 Jul, 2016, 9:17:44 AM
    Author     : Jalaz
    Description: Let the Admin update records of already added books in the bookstore
--%>

<%@page import="java.util.Random"%>
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
            String bookid="",name="",author="",publication="",category="",subcategory="";
            int queryid,price;
            String SuccessMessage="", ErrorMessage="";
            String coverpic="",downloadlink="";
            try{
//------------------------------------Update the name---------------------------------------            
            if(request.getParameter("btnUpdateName")!=null)
            {
                bookid = request.getParameter("tbBookId");
                name = request.getParameter("tbName");
                String qry = "update books set name='"+name+"' where bookid='"+bookid+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Book Name Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
            }

//------------------------------------Update Author Name----------------------------------
            if(request.getParameter("btnUpdateAuthor")!=null)
            {
                bookid = request.getParameter("tbBookId");
                author = request.getParameter("tbAuthor");
                String qry = "update books set author='"+author+"' where bookid='"+bookid+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Author Name Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
            }

//-------------------------------------Update Publication Name------------------------------
            if(request.getParameter("btnUpdatePub")!=null)
            {
                bookid = request.getParameter("tbBookId");
                publication = request.getParameter("tbPublication");
                String qry = "update books set publication='"+publication+"' where bookid='"+bookid+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Publication Name Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
            }
         
//------------------------------------Update Category---------------------------------------            
            if(request.getParameter("btnUpdateCat")!=null)
            {
                bookid = request.getParameter("tbBookId");
                category = request.getParameter("tbCategory");
                String qry = "update books set category='"+category+"' where bookid='"+bookid+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Category Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
            }

//--------------------------------------Update the Sub Category---------------------------            
            if(request.getParameter("btnUpdateSubCat")!=null)
            {
                bookid = request.getParameter("tbBookId");
                subcategory = request.getParameter("tbSubCategory");
                String qry = "update books set subcategory='"+subcategory+"' where bookid='"+bookid+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "SubCategory Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
            }


//--------------------------------------Update the Cover Pic Source Location---------------------------            
            if(request.getParameter("btnUpdateCoverPic")!=null)
            {
                bookid = request.getParameter("tbBookId");
                coverpic = request.getParameter("tbCoverPic");
                String qry = "update books set coverimage='"+coverpic+"' where bookid='"+bookid+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Cover Photo link Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
            }
                        

//--------------------------------------Update the Sub Category---------------------------            
            if(request.getParameter("btnUpdateDownloadLink")!=null)
            {
                bookid = request.getParameter("tbBookId");
                downloadlink = request.getParameter("tbDownloadLink");
                String qry = "update books set downloadpath='"+downloadlink+"' where bookid='"+bookid+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Download link for Book Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
            }
            
            
//--------------------------------------Update the Sub Category---------------------------            
            if(request.getParameter("btnUpdatePrice")!=null)
            {
                bookid = request.getParameter("tbBookId");
                price = Integer.parseInt(request.getParameter("tbPrice"));
                String qry = "update books set price="+price+" where bookid='"+bookid+"'";
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Price Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
            }
                        
            
//-------------------------------------Updating The complete record------------------------
            if(request.getParameter("btnSubmit")!=null)
            {
                bookid = request.getParameter("tbBookId");
                name = request.getParameter("tbName");
                author = request.getParameter("tbAuthor");
                publication = request.getParameter("tbPublication");
                category = request.getParameter("tbCategory");
                subcategory = request.getParameter("tbSubCategory");
                
                Random r = new Random();
                queryid = (100000+r.nextInt(99999));
                
                String qry = "update books set name='"+name+"', author='"+author+"', publication='"+publication+"', category='"+category+"', subcategory='"+subcategory+"', queryid='"+queryid+"' where bookid='"+bookid+"'";
                
                
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Successfully Updated";
                }
                else
                    ErrorMessage = "Problem Updating, Kindly Check the BookId";
                }
            
            }catch(SQLIntegrityConstraintViolationException ex1)
            {   ErrorMessage=ex1+"";    }
            catch(SQLException ex2)
            {   ErrorMessage=ex2+"";    }
            con.close();
            %>
        
        
            <%@include file="AdminHandle.jsp" %>
            
        <h2>Update Book Portal</h2>
        <br>
        <fieldset>
            <form method="post">
                <table border="0px" cell-padding="0px" cell-spacing="1px"align="center">
                    <tr>
                        <td>
                            Book Id:
                        </td>
                        <td>
                            <input type="text" name="tbBookId">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name:
                        </td>
                        <td>
                            <input type="text" name="tbName">
                        </td>
                        <td>
                            <input type="submit" name="btnUpdateName" value="Change">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Author Name:
                        </td>
                        <td>
                            <input type="text" name="tbAuthor">
                        </td>
                        <td>
                            <input type="submit" name="btnUpdateAuthor" value="Change">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name of Publication:
                        </td>
                        <td>
                            <input type="text" name="tbPublication">
                        </td>
                        <td>
                            <input type="submit" name="btnUpdatePub" value="Change">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Price(in terms of Tokens):
                        </td>
                        <td>
                            <input type="text" name="tbPrice">
                        </td>
                        <td>
                            <input type="submit" name="btnUpdatePrice" value="Change">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Category
                        </td>
                        <td>
                            <input type="text" name="tbCategory">
                        </td>
                        <td>
                            <input type="submit" name="btnUpdateCat" value="Change">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Sub Category:
                        </td>
                        <td>
                            <input type="text" name="tbSubCategory">
                        </td>
                        <td>
                            <input type="submit" name="btnUpdateSubCat" value="Change">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>---------------------------------</td>
                        <td>---------------------------------</td>
                        <td>---------------------------------</td>
                    </tr>
                    <tr>
                        <td>---------------------------------</td>
                        <td>---------------------------------</td>
                        <td>---------------------------------</td>
                    </tr>
                    
                    
                    <tr>
                        <td>
                            Cover Photo link:
                        </td>
                        <td>
                            <input type="text" name="tbCoverPic">
                        </td>
                        <td>
                            <input type="submit" name="btnUpdateCoverPic" value="Change">
                        </td>
                    </tr>
                        
                    <tr>
                        <td>
                            Download Link:
                        </td>
                        <td>
                            <input type="text" name="tbDownloadLink">
                        </td>
                        <td>
                            <input type="submit" name="btnUpdateDownloadLink" value="Change">
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td></td>
                        <td>
                        <input type="submit" name="btnSubmit" value="Update">
                        </td></tr>
                </table>    
            </form>
        </fieldset>
        <br>
        <hr>
        <b><h4 style="color:green"><%= SuccessMessage %></h4></b>
        <b><h4 style="color:red"><%= ErrorMessage %></h4></b>
    </body>
</html>
