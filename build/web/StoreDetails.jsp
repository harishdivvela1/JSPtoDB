<%-- 
    Document   : StoreDetails
    Created on : Jan 8, 2018, 2:34:54 PM
    Author     : Eshwar-PC
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body bgcolor="skyblue">
        <%
      
     try
     {
         String un=request.getParameter("uname");
         String pw=request.getParameter("pswd");
         Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","manager");
  PreparedStatement ps=con.prepareStatement("insert into table1 values(?,?)");
  ps.setString(1,un);
  ps.setString(2,pw);
  ps.executeUpdate();
  
      out.println("           <h1>registration successful</h1><br />");
     }
     catch(Exception e)
     {
         System.out.println("Error" +e);
     }    
        
     %>
    </body >
</html>
