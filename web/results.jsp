<%-- 
    Document   : results
    Created on : Feb 27, 2017, 10:42:45 AM
    Author     : nliesmanto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Natasha Liesmanto HW3</title>
    </head>
    
    <% 
        Double preTax = Double.parseDouble(request.getParameter("preTD"));
    %>
    <body>
        <h1>Salary Info</h1>
        <hr>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td> <%= preTax %> </td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>