<%-- 
    Document   : Ejercicio05
    Created on : 14-may-2019, 17:52:11
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/global.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Conversor de euros a pesetas</h1>
        <div>
            <form method="post" action="">
                <label for="fname">Introduce los € a convertir:</label>
                <input type="text" id="euros" name="euros" placeholder="Introduce los euros a convertir">

                <input type="submit" name="inputButton" value="Enviar">
            </form>
        <br>
        <%
            
            if (request.getParameter("inputButton") != null) {

                int eurosIntroducidos = Integer.parseInt(request.getParameter("euros"));

                double conversion = eurosIntroducidos * 166.386;
                
                out.print(eurosIntroducidos + "€ son <b>" + conversion + "</b> pesetas.");
            }

        %>
        </div>
    </body>
</html>
