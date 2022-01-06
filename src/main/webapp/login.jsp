<%-- 
    Document   : login
    Created on : Jan 5, 2022, 2:46:38 PM
    Author     : wfran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #B2E0FF">
        <%
        // se obtienen los parametros de la URL index para crear una sesion de juego
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String maxPuntaje = request.getParameter("maxP");
        
        // uso de la interfaz HttpSession para creacion de sesiones.
        HttpSession sesion = request.getSession();
        
        
        //se establecen los atributos de la sesion del juego
        sesion.setAttribute("apellido", apellido);
        sesion.setAttribute("nombre", nombre);
        sesion.setAttribute("id", id);
        sesion.setAttribute("maximoPuntaje", maxPuntaje);

        %>
        
        <div class="container mt-5">
        <h1 style="text-align: center; font-size: 80px">Bienvenido <%= sesion.getAttribute("nombre") %> Vamos a jugar!!!</h1>
        </div>
        <div class="container mt-5 d-grid gap-2 col-6 mx-auto">
        <a href="primeraRonda.jsp" class="btn btn-lg btn-primary">Empezar Juego</a>
        </div>
    </body>
</html>
