<%-- 
    Document   : Validate
    Created on : Jan 8, 2018, 2:38:52 PM
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
    <body style="background-color: lightsalmon">
        <%
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.
              getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","manager");
            String sql= "SELECT * FROM table1 WHERE username=? AND password=? ";
           
            String name=request.getParameter("username");
           String pwd=request.getParameter("password");
            PreparedStatement prSt = con.prepareStatement(sql);
            prSt.setString(1,name);
           prSt.setString(2,pwd);
            int rs = prSt.executeUpdate();           
            //b=rs.next();
            if(rs>0)   { out.println("<h1>login success<h1>");  }
            else    {  out.println("<h1>login failed<h1>");     }
            
            prSt.close();
            con.close();
            }
        
      
        catch (Exception e) 
        {   
           System.out.println("exception found" +e);
        }

        
        %>
        
    </body>
</html>
