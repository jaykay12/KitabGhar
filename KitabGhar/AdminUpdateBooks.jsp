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
    <title>Update Book</title>
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
    <form method="post" style="margin-left: 40%; margin-right: 40%; margin-top:2%">
        <fieldset>
            <div class="form-group">
                <label class="label label-info" for="bookId">Book Id</label>
                <input type="digit" name="tbBookId" class="form-control" id="bookId">
            </div>
            <div class="form-group">
                <label class="label label-info" for="name">Name</label>
                <div class="input-group">
                    <input type="digit" name="tbName" class="form-control" id="name">
                    <span class="input-group-btn">
                        <button type="submit" name="btnSubmit" class="btn btn-primary">Change</button>
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label class="label label-info" for="author">Author Name</label>
                <div class="input-group">
                    <input type="digit" name="tbAuthor" class="form-control" id="author">
                    <span class="input-group-btn">
                        <button type="submit" name="btnSubmit" class="btn btn-primary">Change</button>
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label class="label label-info" for="publication">Name of Publication</label>
                <div class="input-group">
                    <input type="digit" name="tbPublication" class="form-control" id="publication">
                    <span class="input-group-btn">
                        <button type="submit" name="btnSubmit" class="btn btn-primary">Change</button>
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label class="label label-info" for="price">Price (in terms of tokens)</label>
                <div class="input-group">
                    <input type="digit" name="tbPrice" class="form-control" id="price">
                    <span class="input-group-btn">
                        <button type="submit" name="btnSubmit" class="btn btn-primary">Change</button>
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label class="label label-info" for="cat">Category</label>
                <div class="input-group">
                    <input type="digit" name="tbCategory" class="form-control" id="cat">
                    <span class="input-group-btn">
                        <button type="submit" name="btnSubmit" class="btn btn-primary">Change</button>
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label class="label label-info" for="subcat">Sub-Category</label>
                <div class="input-group">
                    <input type="digit" name="tbSubCategory" class="form-control" id="subcat">
                    <span class="input-group-btn">
                        <button type="submit" name="btnSubmit" class="btn btn-primary">Change</button>
                    </span>
                </div>
            </div>
            <br>
            <hr>
            <br>
            <div class="form-group">
                <label class="label label-info" for="photo">Cover Photo Link</label>
                <div class="input-group">
                    <input type="digit" name="tbCoverPic" class="form-control" id="photo">
                    <span class="input-group-btn">
                        <button type="submit" name="btnSubmit" class="btn btn-primary">Change</button>
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label class="label label-info" for="download">Download Link</label>
                <div class="input-group">
                    <input type="digit" name="tbDownloadLink" class="form-control" id="download">
                    <span class="input-group-btn">
                        <button type="submit" name="btnSubmit" class="btn btn-primary">Change</button>
                    </span>
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