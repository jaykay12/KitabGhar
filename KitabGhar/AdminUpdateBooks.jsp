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
    <form method="post" style="margin-left: 10%; margin-right: 10%;">
        <fieldset>
            <div class="row">
                <div class="form-group col-md-4">
                    <label class="label label-info" for="bookId">Book Id</label>
                    <input type="digit" name="tbBookId" class="form-control" id="bookId" required>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-4">
                    <label class="label label-info" for="name">Name</label>
                    <div class="input-group">
                        <input type="digit" name="tbName" class="form-control" id="name" style="margin-right: 2%;">
                        <span class="input-group-btn">
                            <button type="submit" name="btnSubmit" class="btn btn-outline-primary">Change</button>
                        </span>
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <label class="label label-info" for="author">Author Name</label>
                    <div class="input-group">
                        <input type="digit" name="tbAuthor" class="form-control" id="author" style="margin-right: 2%;">
                        <span class="input-group-btn">
                            <button type="submit" name="btnSubmit" class="btn btn-outline-primary">Change</button>
                        </span>
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <label class="label label-info" for="publication">Name Of Publication</label>
                    <div class="input-group">
                        <input type="digit" name="tbPublication" class="form-control" id="publication" style="margin-right: 2%;">
                        <span class="input-group-btn">
                            <button type="submit" name="btnSubmit" class="btn btn-outline-primary">Change</button>
                        </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <label class="label label-info" for="price">Price: Credits</label>
                    <div class="input-group">
                        <input type="digit" name="tbPrice" class="form-control" id="price" style="margin-right: 2%;">
                        <span class="input-group-btn">
                            <button type="submit" name="btnSubmit" class="btn btn-outline-primary">Change</button>
                        </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <label class="label label-info" for="cat">Category</label>
                    <div class="input-group">
                        <select name="tbCategory" class="custom-select" id="cat" style="margin-right: 2%;">
                            <option value="None">----Select----</option>
                            <option value="Academic">Academic</option>
                            <option value="Novel">Novels</option>
                            <option value="Programming">Programming</option>
                        </select>
                        
                        <span class="input-group-btn">
                            <button type="submit" name="btnSubmit" class="btn btn-outline-primary">Change</button>
                        </span>
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="label label-info" for="subcat">Sub-Category</label>
                    <div class="input-group">  
                        <select name="tbSubCategory" class="custom-select" id="subcat" style="margin-right: 2%;">
                            <option value="None">----Select----</option>
                            <option value="CG">ACADEMIC: Computer Graphics</option>
                            <option value="OS">ACADEMIC: Operating System</option>
                            <option value="DBMS">ACADEMIC: Operating System</option>
                            <option value="TOC">ACADEMIC: TOC and Compiler</option>
                            <option value="DSAlgo">ACADEMIC: Data Structures and Algorithms</option>
                            <option value="NonCSE">ACADEMIC: Non-CSE Branches</option>
                            <option value="Crypto">ACADEMIC: Information Security and Cryptography</option>
                            <option value="ML">ACADEMIC: Machine Learning and Soft Computing</option>
                            <option value="SE">ACADEMIC: Software Engineering</option>
                            <option value="Sim">ACADEMIC: Simulation</option>
                            <option value="CO">ACADEMIC: Computer Architecture</option>
                            <option value="CN">ACADEMIC: Computer Networks</option>
                            <option value="Maths">ACADEMIC: Engineering Maths</option>
                            <option value="DS">ACADEMIC: Discrete Structures</option>
                            <option value="InNew">NOVEL: Indian Young Writers</option>
                            <option value="InOld">NOVEL: Indian Old Writers</option>
                            <option value="Foreign">NOVEL: Foreign Writers</option>
                            <option value="CPP">PROGRAMMING: C and C++</option>
                            <option value="PHP">PROGRAMMING: PHP</option>
                            <option value="Java">PROGRAMMING: Java and J2EE</option>
                            <option value="UI">PROGRAMMING: Frontend Technologies</option>
                            <option value="Python">PROGRAMMING: Python</option>
                            <option value="JS">PROGRAMMING: JavaScript</option>
                            <option value="Ruby">PROGRAMMING: Ruby</option>
                            <option value="Linux">PROGRAMMING: Linux</option>
                            <option value="Android">PROGRAMMING: Android</option>
                        </select>
                        
                        <span class="input-group-btn">
                            <button type="submit" name="btnSubmit" class="btn btn-outline-primary">Change</button>
                        </span>
                    </div>
                </div>
            </div>
            <br>
            <hr>
            <br>
            <div class="row">
                <div class="form-group col-md-5">
                    <label class="label label-info" for="photo">Cover Photo Link</label>
                    <div class="input-group">
                        <input type="digit" name="tbCoverPic" class="form-control" id="photo" style="margin-right: 2%;">
                        <span class="input-group-btn">
                            <button type="submit" name="btnSubmit" class="btn btn-outline-primary">Change</button>
                        </span>
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="label label-info" for="download">Download Link</label>
                    <div class="input-group">
                        <input type="digit" name="tbDownloadLink" class="form-control" id="download" style="margin-right: 2%;">
                        <span class="input-group-btn">
                            <button type="submit" name="btnSubmit" class="btn btn-outline-primary">Change</button>
                        </span>
                    </div>
                </div>
            </div>
            <button type="submit" name="btnSubmit" class="btn btn-warning">Update</button>
        </fieldset>
    </form>
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