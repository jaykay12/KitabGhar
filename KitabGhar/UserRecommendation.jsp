<%-- 
    Document   : UserRecommendations
    Created on : 29 Sep, 2018, 2:33:07 PM
    Author     : Jalaz
    Description: Page Displaying the recommendations for the Subscribers of the Book portal.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KitabGhar | Recommendations</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        
        <br>
        <br>
        <hr>
        <br>
        

<%-- -------------------------------------------------------------------------------------------- --%>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.util.*" %>
<%! URL url;
    HttpURLConnection conn;
    int responsecode;
    String inline = "";
    Scanner sc;
      %>   
        
<%-- ------------------------------ Popularity Recommendations On Sales ------------------------- --%>
<%    
    url = new URL("http://127.0.0.1:5000/recommendations/sales");
    conn = (HttpURLConnection)url.openConnection();
    conn.setRequestMethod("GET");
    conn.connect();
    responsecode = conn.getResponseCode();

    inline="";
    sc = new Scanner(url.openStream());
    while(sc.hasNext())
    {
        inline += sc.nextLine();
    }
    System.out.println(inline);

    sc.close();   
%>
<%= inline %>

<%-- -------------------------------------------------------------------------------------------- --%>

<%-- ------------------------------ Popularity Recommendations On Ratings ----------------------- --%>

<%
    url = new URL("http://127.0.0.1:5000/recommendations/ratings");
    conn = (HttpURLConnection)url.openConnection();
    conn.setRequestMethod("GET");
    conn.connect();
    responsecode = conn.getResponseCode();

    inline = "";
    sc = new Scanner(url.openStream());
    while(sc.hasNext())
    {
        inline += sc.nextLine();
    }
    System.out.println(inline);

    sc.close();   
%>
<%= inline %>

<%-- -------------------------------------------------------------------------------------------- --%>

<%-- ------------------------------ Recommendations: Item Based CF ------------------------------ --%>
<%
    url = new URL("http://127.0.0.1:5000/recommendations/itembased/"+useridpassed);
    conn = (HttpURLConnection)url.openConnection();
    conn.setRequestMethod("GET");
    conn.connect();
    responsecode = conn.getResponseCode();

    inline = "";
    sc = new Scanner(url.openStream());
    while(sc.hasNext())
    {
        inline += sc.nextLine();
    }
    System.out.println(inline);

    sc.close();   
%>

<%= useridpassed %>
<%= inline %>
<%-- -------------------------------------------------------------------------------------------- --%>        

            
            <% con.close(); %>
            <%@include file="Footer.jsp" %>
    </body>
</html>
