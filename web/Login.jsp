<%-- 
    Document   : Login
    Created on : Jan 8, 2018, 2:38:31 PM
    Author     : Eshwar-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: lightgreen">
        <div align="center">
        <h1>Welcome to login page</h1>
        <form action="Validate.jsp" method="post">   
           username <input type="text" required name="username" required>  <br><br>
           password <input type="text" required name="password" required>  <br><br>
                    <input type="submit" value="Sign In">
       </form>
        <hr><hr><hr><hr>
        <form action="index.html" method="post">
            <input type="submit" value="Go back to Main menu ">
        </form>
    </div>   
    </body>
</html>
