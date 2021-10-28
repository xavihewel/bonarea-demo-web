<%-- 
    Document   : index
    Created on : 28 oct. 2021, 10:45:24
    Author     : xavier.verges
--%>

<%@page import="java.math.BigDecimal"%>
<%@page import="com.ba.rrhh.bonarea.demo.ConverterBean"%>
<%@page import="javax.naming.InitialContext"%>
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
        InitialContext ic = new InitialContext();
        Object helloObject = ic.lookup("java:global/bonarea-demo-web/ConverterBean");
            
        BigDecimal yenAmount = ((ConverterBean)helloObject).dollarToYen(new BigDecimal("100.00"));
        out.println("<h1>100$ are: " + yenAmount + " Y");
        %>
    </body>
</html>
