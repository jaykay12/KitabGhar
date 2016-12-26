/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

            MultipartRequest mrequest = new MultipartRequest(request, "C:\\xampp\\tomcat\\webapps\\eBookalya\\profilepics");

            String filename = mrequest.getFilesystemName("dpUploader");

            response.sendRedirect("UserUpdateProfile.jsp?fn="+filename);
        }
        catch(Exception ex)
        {

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
