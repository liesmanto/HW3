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
        double thWorked = Double.parseDouble(request.getParameter("hWorked"));
        double hRate = Double.parseDouble(request.getParameter("hPay"));
        double preTDeduct = Double.parseDouble(request.getParameter("preTD"));
        double postTDeduct = Double.parseDouble(request.getParameter("postTD"));
        double otHours = 0;
        double otRate = 0;
        double gPay = 0;
        double taxablePay = gPay - preTDeduct;
        double preTPay = 0;
        double taxAmt = 0 ;
        double postTPay = taxablePay - taxAmt;
        double netPay = postTPay - postTDeduct;
        
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
        
        if (gPay < 500) {
            taxAmt = taxablePay * 0.18;
        }
        else {
            taxAmt = taxablePay * 0.22;
        }        
    %>
    <body>
        <h1>Salary Info</h1>
        <hr>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%=thWorked%></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%=hRate%></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%=otHours%></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%=otRate%></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%=gPay%></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td> <%= preTDeduct %> </td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%=preTPay%></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%=taxAmt%></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%=postTPay%></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%=postTDeduct%></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%=netPay%></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
