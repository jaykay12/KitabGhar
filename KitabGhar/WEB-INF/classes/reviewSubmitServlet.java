import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reviewSubmitServlet")
public class reviewSubmitServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kitabghar", "root", "jalaz");
            Statement smt = con.createStatement();
       
            String SuccessMessage="",ErrorMessage="";
            boolean flag = false;
            String userid = request.getParameter("userid")+"";
            String bookid = request.getParameter("bookid")+"";
            String reviewid = userid + bookid+"";
            int rating = Integer.parseInt(request.getParameter("rating"));
            String review = request.getParameter("reviewBox")+"";

            System.out.println(""+userid+" "+bookid+" "+reviewid+" "+review+" "+rating);

            String qry = "insert into reviews(reviewid,bookid,userid,review,rating) values('"+reviewid+"','"+bookid+"','"+userid+"','"+review+"',"+rating+")";

            try {        
                int result = smt.executeUpdate(qry);
                System.out.println("Done Query!");
                    
                if(result>0)
                {
                    SuccessMessage = "Review Saved!";
                    System.out.println(SuccessMessage);
                    flag=true;
                }
                else
                {
                    ErrorMessage = "Review Not Saved! Sorry.";
                    System.out.println(ErrorMessage);
                }


                response.sendRedirect(request.getHeader("referer"));
            }
            catch(SQLIntegrityConstraintViolationException ex1)
                {   
                    System.out.println(ex1+"");
                    response.sendRedirect(request.getHeader("referer"));
                }
            catch(SQLException ex2)
                {   
                    System.out.println(ex2+"");
                    response.sendRedirect(request.getHeader("referer"));
                }
        }
        catch(ClassNotFoundException ex1)
        {
            System.out.println(ex1+"");
            response.sendRedirect(request.getHeader("referer"));
        }
        catch(SQLException ex2)
        {
            System.out.println(ex2+"");
            response.sendRedirect(request.getHeader("referer"));
        }   

    }


}