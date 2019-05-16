<%-- 
    Document   : Ejercicio02
    Created on : 14-may-2019, 17:02:27
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/ejercicio02.css">
    </head>
    <body>
        <h1>Datos del Usuario con estética mejorada</h1>
        <%
        out.print("Fabricante de Java: " + System.getProperty("java.vendor"));
        out.print("<br>Url del fabricante: " + System.getProperty("java.vendor.url"));
        out.print("<br>Versión: " + System.getProperty("java.version"));
        out.print("<br>Sistema operativo: " + System.getProperty("os.name"));
        out.print("<br>Usuario: " + System.getProperty("user.name"));
        %>
    </body>
</html>
