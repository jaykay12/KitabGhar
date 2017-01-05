<%-- 
    Document   : UserLibraryConfirmBuy
    Created on : 22 Aug, 2016, 12:46:20 AM
    Author     : Jalaz
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
      <%@include file="HeaderTop.jsp" %>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        
        <div style="height: 440px; width: 100%">
            <h1> <b><center> PROCESSING... </center></b></h1>
        
        <%! String Source=""; %>
        
        <%
            String fid="";
            String bookid="";
            int newBalance,currentBalance,price;
            int tid;
            String SuccessMessage="", ErrorMessage="";
            if(request.getParameter("id")!=null)
            {
                fid = request.getParameter("id");
                //out.println(fid);
                String qry1 = "select * from books where queryid='"+fid+"'";
                ResultSet rs1 = smt.executeQuery(qry1);
                Boolean b1 = rs1.next();
                bookid = rs1.getString(1);
                price = rs1.getInt(8);
                //out.println(bookid);
                
                String qry2 = "select * from users where userid='"+useridpassed+"'";
                ResultSet rs2 = smt.executeQuery(qry2);
                Boolean b2 = rs2.next();
                //out.println(b2);
                
                currentBalance = rs2.getInt(8);  
                newBalance = currentBalance - price ;
                //out.println(newBalance);
                
                if(newBalance > 0)
                { 
                    String qry3 = "update users set tokens="+newBalance+" where userid='"+useridpassed+"'";
                    int handler = smt.executeUpdate(qry3);
                    if(handler > 0)
                        {
                        Random r = new Random();
                        tid = (100000+r.nextInt(99999));
                        String qry4 = "insert into shelfs values("+tid+",'"+bookid+"','"+useridpassed+"',0)";
                        int result =  smt.executeUpdate(qry4);
                
                            if(result>0)
                            {
                                SuccessMessage = "Congratulations...!!! Book Successfully Purchased, Added to your personal shelf";
                                Source = "Done.jpg";
                            }
                            else
                            {
                                ErrorMessage = "Sorry, for the inconvenience...!! Money Debited, Error in Transaction. Money will be refundede Soon..";
                                Source = "Sorry.jpg";
                            }
                        }
                }
                else
                {
                    ErrorMessage = "Sorry Subscriber...!! Insufficient Balance to make this purchase";
                    Source = "NeedCash.jpg";
                }
                
            }
            con.close();
             %>
             <center>
                <img src="ProjectImages/<%= Source%>" height="300px" width="300px">
                <b><h4 style="color:green"><%= SuccessMessage %></h4></b>
                <b><h4 style="color:red"><%= ErrorMessage %></h4></b>
             </center>
        </div>       
        <%@include file="Footer.jsp" %>
    </body>
</html>