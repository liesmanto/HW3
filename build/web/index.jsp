<%-- 
    Document   : index
    Created on : Feb 27, 2017, 10:07:18 AM
    Author     : nliesmanto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Natasha Liesmanto HW3</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr>
        <form action="hello.jsp" method="post">
            <label>Hours Worked:</label>
            <input type="text" name="hWorked" required>
            <br>
            <label>Hourly Pay:</label>
            <input type="text" name="hPay" required>
            <br><br>
            <input type="submit" value="Submit" id="submit">
            <input type="reset" value="Clear" id="clear">
        
            
            
        </form>
    </body>
</html>
