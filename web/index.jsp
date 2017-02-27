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
        <form action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hWorked" size="20" required></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="hPay" size="20" required></td>
                    </tr>
            
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="preTD" size="20" required></td>
                    </tr>
            
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postTD" size="20" required></td>
                    </tr>
                </tbody>
            </table>
            
            <input type="submit" value="Submit" id="submit">
            <input type="reset" value="Clear" id="clear">
        
        </form>
    </body>
</html>
