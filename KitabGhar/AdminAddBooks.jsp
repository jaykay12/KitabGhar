<%-- 
    Document   : AdminAddBooks
    Created on : 5 Jul, 2016, 9:17:17 AM
    Author     : Jalaz
    Description: Let the Admin add new books to the bookstore
--%>

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
            String bookid="",name="",author="",publication="",category="",subcategory="";
            int queryid,price;
            String SuccessMessage="", ErrorMessage="";
            String coverpic="",downloadlink="";
            try{
            if(request.getParameter("btnSubmit")!=null)
            {
                bookid = request.getParameter("tbBookId");
                name = request.getParameter("tbName");
                author = request.getParameter("tbAuthor");
                publication = request.getParameter("tbPublication");
                category = request.getParameter("tbCategory");
                subcategory = request.getParameter("tbSubCategory");
                price = Integer.parseInt(request.getParameter("tbPrice"));
                coverpic = request.getParameter("tbCoverPic");
                downloadlink = request.getParameter("tbDownloadLink");
                
                Random r = new Random();
                queryid = (100000+r.nextInt(99999));
                
                if(coverpic.length()==0)
                {
                    coverpic="default.jpg";
                }
                if(downloadlink.length()==0)
                {
                    downloadlink="Sorry.jsp";
                }
                
                String qry = "insert into books values('"+bookid+"','"+name+"','"+author+"','"+publication+"','"+category+"','"+subcategory+"',"+queryid+","+price+",'"+coverpic+"','"+downloadlink+"')";               
                
                
                int result = smt.executeUpdate(qry);
                
                if(result>0)
                {
                    SuccessMessage = "Successfully Added to BookStore";
                }
                else
                    ErrorMessage = "Problem adding to the Store, Kindly Check if BookId Already Exists";
                }
            
            }catch(SQLIntegrityConstraintViolationException ex1)
            {   ErrorMessage="BookId already exists, kindly choose new one";    }
            catch(SQLException ex2)
            {   ErrorMessage=ex2+"";    }
            con.close();
            %>
        
        
            <%@include file="AdminHandle.jsp" %>
            
        <h2>Add New Books Portal</h2>
        <br> 
            <fieldset>
                <form method="post">
                    <table border="0px" cell-padding="0px" cell-spacing="1px" align="center">
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
                        </tr>
                        <tr>
                            <td>
                                Author Name:
                            </td>
                            <td>
                                <input type="text" name="tbAuthor">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name of Publication:
                            </td>
                            <td>
                                <input type="text" name="tbPublication">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price(in Tokens):
                            </td>
                            <td>
                                <input type="text" name="tbPrice">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Category
                            </td>
                            <td>
                                <select name="tbCategory">
                                    <option value="None">----Select----</option>
                                    <option value="Academic">Academic</option>
                                    <option value="ChildrenBooks">Children Books</option>
                                    <option value="Comics">Comics</option>
                                    <option value="Novel">Novel</option>
                                    <option value="Programming">Programming</option>
                                </select>                                   
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Sub Category:
                            </td>
                            <td>
                                <select name="tbSubCategory">
                                    <option value="None">----Select----</option>
                                    <option value="Engineering">ACADEMIC: Engineering</option>
                                    <option value="GATE">ACADEMIC: GATE</option>
                                    <option value="JEEAdvanced">ACADEMIC: JEE Advanced</option>
                                    <option value="Medical">ACADEMIC: Medical</option>
                                    <option value="English">English</option>
                                    <option value="Hindi">Hindi</option>
                                    <option value="Romantic">NOVEL: Romantic</option>
                                    <option value="LAMPStack">PROGRAMMING: LAMP Stack</option>
                                    <option value="WebDesigning">PROGRAMMING: Web Designing</option>
                                </select>  
                            </td>
                        </tr>
                        
                        <tr>
                            <td>---------------------------</td>
                            <td>---------------------------</td>
                        </tr>
                        
                        <tr>
                            <td>
                                Give Cover Photo Link:
                            </td>
                            <td>
                                <input type="text" name="tbCoverPic">
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                Give Download Link:
                            </td>
                            <td>
                                <input type="text" name="tbDownloadLink">
                            </td>
                        </tr>
                        
                        <tr>
                            <td>--------------------------</td>
                            <td>--------------------------</td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td>
                            <input type="submit" name="btnSubmit" value="Add Now">
                            </td>
                        </tr>
                    
        
                    </table>    
                </form>
            </fieldset>
        <br>
        <hr>
        <b><h4 style="color:green"><%= SuccessMessage %></h4></b>
        <b><h4 style="color:red"><%= ErrorMessage %></h4></b>
    </body>
</html>
