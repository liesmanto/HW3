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
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    
    <% 
        double thWorked = Double.parseDouble(request.getParameter("hWorked"));
        double hRate = Double.parseDouble(request.getParameter("hPay"));
        double preTDeduct = Double.parseDouble(request.getParameter("preTD"));
        double postTDeduct = Double.parseDouble(request.getParameter("postTD"));
        double otHours = 0;
        double otRate = 0;
        double gPay;
        double preTPay;
        double taxAmt;
        
        if (thWorked > 40){
            int regularHours = 40;
            otHours = thWorked - 40;
            otRate = hRate * 1.5;
            double otPay = otHours * otRate;
            double regularPay = regularHours * hRate;
            gPay = regularPay + otPay;
        }
        else {
            gPay = thWorked * hRate;
        }
        
        preTPay = gPay - preTDeduct;

        if (gPay < 500) {
            taxAmt = preTPay * 0.18;
        }
        else {
            taxAmt = preTPay * 0.22;
        }
        double postTPay = preTPay - taxAmt;
        double netPay = postTPay - postTDeduct;
    %>
    <body>
        <h1>Salary Info</h1>
        <hr>
        <div class="info">
        <table border="1" align="center" bgcolor="white">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><i><%=thWorked%></i></td>
                </tr>
                
                <tr style: background-color="white">
                    <td>Hourly Rate:</td>
                    <td><i><%=hRate%></i></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><i><%=otHours%></i></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><i><%=otRate%></i></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><i><%=gPay%></i></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><i><%= preTDeduct %></i></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><i><%=preTPay%></i></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><i><%=taxAmt%></i></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><i><%=postTPay%></i></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><i><%=postTDeduct%></i></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><i><%=netPay%></i></td>
                </tr>
            </tbody>
        </table>
        </div>
    </body>
</html>
