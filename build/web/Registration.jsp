<%-- 
    Document   : Registration
    Created on : Jan 8, 2018, 2:38:00 PM
    Author     : Eshwar-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            
        </title>
    </head>
    <body style="background-color: lightblue">
        <div align="center">
        <h1>Welcome to registration page</h1>
        <br><br><br><br>        
       <form action="StoreDetails.jsp" method="post"> 
           username <input type="text" required name="uname">  <br><br>
           password <input type="text" required name="pswd">  <br><br>
           <input type="submit" value="Register">
       </form>
        <hr><hr><hr><hr>
        <form action="index.html" method="post">
            <input type="submit" value="Go back to Main menu ">
        </form>
    </div>    
    </body>
</html>
