import com.oreilly.servlet.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


////@WebServlet(name = "UploaderDp", urlPatterns = {"/UploaderDp"})
public class UploaderDp extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {

            MultipartRequest mrequest = new MultipartRequest(request, "/home/jaykay12/Documents/Github/KitabGhar/KitabGhar/profilepics");

            String filename = mrequest.getFilesystemName("dpUploader");

            response.sendRedirect("UserUpdateProfile.jsp?fn="+filename);
        }
        catch(Exception ex)
        {
        	System.out.println("Exception Thrown:"+ex);
        }
    }


    //@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    //@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    //@Override
    public String getServletInfo() {
        return "Short description";
    }

}
