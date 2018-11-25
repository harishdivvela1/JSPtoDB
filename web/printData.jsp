<%-- 
    Document   : getData
    Created on : Mar 16, 2018, 2:53:23 PM
    Author     : harish
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
         <% 
        
            
             try {
                 
            String un=request.getParameter("uname");
            String pw=request.getParameter("pswd");
            String sql = "select * from SYSTEM.JSPDB "; 
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.
              getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","manager");
            
            PreparedStatement ps=con.prepareStatement(sql);
         
         ResultSet rs=ps.executeQuery(sql);
         while(rs.next())
         {
        out.print( rs.getString(1)+"\n");
        out.print("&nbsp");
        out.print("&nbsp");
        out.print("&nbsp");
        out.print("&nbsp");
         out.print(rs.getString(2));
         out.print("<br>");
         
         }
              
           ps.close();
           con.close();
           
            }
        
      
        catch (Exception e) 
        {   
           System.out.println("exception found" +e);
        }
           /*     
            
            
            where username=? and password=?
            
            
            PreparedStatement prst = con.prepareStatement(sql);
            prst.setString(1,un);
            prst.setString(1, pw);  
          
          
            ResultSet rs = prst.executeQuery(sql);   
            
            
            
             b=rs.next();
            
            if(b)
           out.println("login success");
            
            prst.close();
          
            con.close();   */
           
           
           
         
           
         /*  ps.setString(1,un);
           ps.setString(2,pw);
           int rows=ps.executeUpdate();   
           
           if(rows>0)  */
         
         
 
           %>
    </body>
</html>
