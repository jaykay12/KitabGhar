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
        <link rel="stylesheet" type="text/css" href="styles/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
        <title>KitabGhar | Recommendations</title>
        <%@include file="HeaderTop.jsp" %>
    </head>
    <body>
        <%@include file="HeaderMidProfile.jsp" %>
        <%@include file="connectionFile.jsp" %>
        
        <br>
        <hr>
        <br>
        

<%-- -------------------------------------------------------------------------------------------- --%>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.util.*" %>
<%@page import="org.json.simple.parser.*" %>
<%@page import="org.json.simple.*" %>
<%! URL url;
    HttpURLConnection connOBJ;
    int responsecode;
    String inline = "";
    Scanner sc;
    JSONParser parserOBJ;
    JSONObject jsonOBJ;
    JSONArray jsonLIST;
    String qry = "";
    String bookid = "";
    String bookname = "";
    String authorname = "";
    String bookcover = "";
    ResultSet rs;
                        %>

<div class="container-fluid" style="margin-right:2%;margin-left:2%;margin-top:2%;margin-bottom:2%">
            
<%-- ------------------------------ Popularity Recommendations On Sales ------------------------- --%>
    <center><h3><b> Popular Items Based On Sales</b></h3></center>
    <br>
    <div class="row" name="SalesRecommendations">
<%    
    url = new URL("http://127.0.0.1:5000/recommendations/sales");
    connOBJ = (HttpURLConnection)url.openConnection();
    connOBJ.setRequestMethod("GET");
    connOBJ.connect();
    responsecode = connOBJ.getResponseCode();

    inline="";
    sc = new Scanner(url.openStream());
    while(sc.hasNext())
    {
        inline += sc.nextLine();
    }
    System.out.println(inline);

    parserOBJ = new JSONParser();
    jsonOBJ = (JSONObject)parserOBJ.parse(inline);
    jsonLIST = (JSONArray)jsonOBJ.get("recommendations");

    qry = "select * from books where bookid = ?";
    stm = con.prepareStatement(qry);

    for(int i=0;i<jsonLIST.size();i++)
    {
        bookid = jsonLIST.get(i)+"";
        System.out.println(jsonLIST.get(i));
        stm.setString(1,bookid);
        rs = stm.executeQuery();
        if(rs.next())
        {
            bookname = rs.getString(2);
            authorname = rs.getString(3);
            bookcover = rs.getString(9);
        

%>
        <div class="col-md-2">
            <table border="0px">
                <tr><td><img class="img-thumbnail" src="bookpics/<%=bookcover%>" height="150px" width="130px"></td></tr>
                <tr><td><%= bookname %></td></tr>
                <tr><td><%= authorname %></td></tr>
                <tr><td><a href="UserLibraryBookDetails.jsp?id=<%=rs.getString(7) %>"> Click to get details </a></td></tr>
            </table>
        </div>

<br>


<%    }
    }
    sc.close();   
%>

    </div>

<%-- -------------------------------------------------------------------------------------------- --%>

<br>
<hr>
<br>

<%-- ------------------------------ Popularity Recommendations On Ratings ----------------------- --%>
    <center><h3><b> Popular Items On User Ratings </b></h3></center>
    <br>
    <div class="row" name="RatingsRecommendations">
    
<%
    url = new URL("http://127.0.0.1:5000/recommendations/ratings");
    connOBJ = (HttpURLConnection)url.openConnection();
    connOBJ.setRequestMethod("GET");
    connOBJ.connect();
    responsecode = connOBJ.getResponseCode();

    inline = "";
    sc = new Scanner(url.openStream());
    while(sc.hasNext())
    {
        inline += sc.nextLine();
    }
    System.out.println(inline);

    parserOBJ = new JSONParser();
    jsonOBJ = (JSONObject)parserOBJ.parse(inline);
    jsonLIST = (JSONArray)jsonOBJ.get("recommendations");

    qry = "select * from books where bookid = ?";
    stm = con.prepareStatement(qry);

    for(int i=0;i<jsonLIST.size();i++)
    {
        bookid = jsonLIST.get(i)+"";
        System.out.println(jsonLIST.get(i));
        stm.setString(1,bookid);
        rs = stm.executeQuery();
        if(rs.next())
        {
            bookname = rs.getString(2);
            authorname = rs.getString(3);
            bookcover = rs.getString(9);

%>

        <div class="col-md-2">
            <table border="0px">
                <tr><td><img class="img-thumbnail" src="bookpics/<%=bookcover%>" height="150px" width="130px"></td></tr>
                <tr><td><%= bookname %></td></tr>
                <tr><td><%= authorname %></td></tr>
                <tr><td><a href="UserLibraryBookDetails.jsp?id=<%=rs.getString(7) %>"> Click to get details </a></td></tr>
            </table>
        </div>
<br>


<%    }
    }

    sc.close();   
%>

    </div>

<%-- -------------------------------------------------------------------------------------------- --%>

<br>
<hr>
<br>

<%-- ------------------------------ Recommendations: Item Based CF ------------------------------ --%>
<center><h2><b> Recommended For You </b></h2></center>
<br>
<br>
<%
    url = new URL("http://127.0.0.1:5000/recommendations/itembased/"+useridpassed);
    connOBJ = (HttpURLConnection)url.openConnection();
    connOBJ.setRequestMethod("GET");
    connOBJ.connect();
    responsecode = connOBJ.getResponseCode();

    inline = "";
    sc = new Scanner(url.openStream());
    while(sc.hasNext())
    {
        inline += sc.nextLine();
    }
    System.out.println(inline);

    parserOBJ = new JSONParser();
    jsonOBJ = (JSONObject)parserOBJ.parse(inline);
    jsonLIST = (JSONArray)jsonOBJ.get("recommendations");

    qry = "select * from books where bookid = ?";
    stm = con.prepareStatement(qry);

    for(int rows=0;rows<3;rows++)
    {
       
%>

    <div class="row" name="CFRecommendations">
<%

        for(int i=0;i<6;i++)
        {
            bookid = jsonLIST.get(6*rows+i)+"";
            System.out.println(jsonLIST.get(6*rows+i));
            stm.setString(1,bookid);
            rs = stm.executeQuery();
            if(rs.next())
            {
                bookname = rs.getString(2);
                authorname = rs.getString(3);
                bookcover = rs.getString(9);
%>


        <div class="col-md-2">
            <table border="0px">
                <tr><td><img class="img-thumbnail" src="bookpics/<%=bookcover%>" height="150px" width="130px"></td></tr>
                <tr><td><%= bookname %></td></tr>
                <tr><td><%= authorname %></td></tr>
                <tr><td><a href="UserLibraryBookDetails.jsp?id=<%=rs.getString(7) %>"> Click to get details </a></td></tr>
            </table>
        </div>
<br>

<%    }
    }

    sc.close();   
%>

    </div>
    <br>
    <br>
    
<% } %>
<%-- -------------------------------------------------------------------------------------------- --%>        

            
            <% con.close(); %>
</div>
            <%@include file="Footer.jsp" %>
    </body>
</html>
