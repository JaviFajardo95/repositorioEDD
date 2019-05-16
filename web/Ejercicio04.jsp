<%-- 
    Document   : Ejercicio04
    Created on : 14-may-2019, 17:43:51
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
        <h1>Calcular media</h1>
        <div>
            <form method="post" action="">
                Introduce tus notas:
                <br><br>
                <label for="fname">Nota 2 </label>
                <input type="text" id="nota1" name="nota1" placeholder="Introduce la nota 1">
                
                <label for="fname">Nota 2</label>
                <input type="text" id="nota2" name="nota2" placeholder="Introduce la nota 2">
                
                <label for="fname">Nota 3 </label>
                <input type="text" id="nota3" name="nota3" placeholder="Introduce la nota 3">

                <input type="submit" name="inputButton" value="Enviar">
            </form>
        </div>
        <br>
        <%
            
            if (request.getParameter("inputButton") != null) {

                int nota1 = Integer.parseInt(request.getParameter("nota1"));
                int nota2 = Integer.parseInt(request.getParameter("nota2"));
                int nota3 = Integer.parseInt(request.getParameter("nota3"));
                
                int media = (nota1 + nota2 + nota3) / 3;
                
                out.print("La media de tus tres notas es <b>" + media + "</b>.");
            }

        %>
    </body>
</html>
