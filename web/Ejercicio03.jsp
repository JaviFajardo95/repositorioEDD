<%-- 
    Document   : Ejercicio03
    Created on : 14-may-2019, 17:36:45
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Identificar usuario</h1>
        <form method="post" action="">
            Introduce tu nombre:
            <br><br>
            <input type="text" name="nombreIntro" value="">
            <input type="submit" name="inputButton" value="Enviar">
        </form>
        <br>
        <%
            
            if (request.getParameter("inputButton") != null) {

                String nombreIntroducido = request.getParameter("nombreIntro");
                
                if (request.getParameter("nombreIntro") != null) {
                    
                    out.print("Hola, <b>" + nombreIntroducido + "</b> bienvenid@ de nuevo.");
                    
                } else {
                    out.print("Introduce un valor.");
                }
            }

        %>
    </body>
</html>
