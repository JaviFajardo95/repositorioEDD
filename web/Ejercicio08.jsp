<%-- 
    Document   : Ejercicio08
    Created on : 14-may-2019, 17:08:22
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/global.css">
        <link rel="stylesheet" type="text/css" href="css/ejercicio02.css">
    </head>
    <body>
        <h1>Tablas de Multiplicar</h1>
        <form method="post" action="">
            Introduce el número de la tabla que quieres visualizar:
            <br><br>
            <input type="text" name="numeroIntro" value="">
            <input type="submit" name="inputButton" value="Enviar">
        </form>
        <br>
        <%
            
            if (request.getParameter("inputButton") != null) {

                int numeroIntroducido = Integer.parseInt(request.getParameter("numeroIntro"));
                
                if (request.getParameter("numeroIntro") != null) {
                    
                    if (numeroIntroducido > 0) {
                        out.print("<h3>Mostrando la tabla del " + request.getParameter("numeroIntro") + "</h3>");
                        
                        out.print("<table border='1' width='auto;' cellspacing='4px' cellpadding='4px'>"
                                + "<tr>"
                                + "     <th>Operación</th>"
                                + "     <th>Resultado</th>"
                                + "</tr>");
                        for (int i = 1; i < 11; i++) {
                            out.print("<tr align='center'>"
                                    + "<td>" + i + " x " + numeroIntroducido + "</td>"
                                    + "<td>" + i*numeroIntroducido + "</td>"
                                    + "</tr>");
                        }
                        out.print("</table>");
                        
                    } else {
                        out.print("Introduce un número válido.");
                    }
                } else {
                    out.print("Introduce un valor.");
                }
            }

        %>
    </body>
</html>
