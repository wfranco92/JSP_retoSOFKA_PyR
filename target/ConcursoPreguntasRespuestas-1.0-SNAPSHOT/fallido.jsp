<%-- 
    Document   : fallido
    Created on : Jan 4, 2022, 4:30:26 PM
    Author     : wfran
--%>

<%@page import="com.mycompany.concursopreguntasrespuestas.LogRegistro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <title>Preguntas y Respuestas. Juego Finalizado</title>
    </head>
    
    <%
        
        // cuando el jugador falla la respuesta, se obtiene los parametros de la URL de la ronda donde perdio.
        int ronda = Integer.parseInt(request.getParameter("ronda").toString());
        
        // se obtienen o recueprar los atributos de la sesion del jugador.
        HttpSession sesion=request.getSession();
        String nombre=(String)(sesion.getAttribute("nombre"));
        String apellido=(String)(sesion.getAttribute("apellido"));
        String maxPuntaje =(String)(sesion.getAttribute("maximoPuntaje"));

        // se registra en el historial del juego el nombre del jugador. Al haber perdido el juego, siemrpe se registra como ultimo puntaje 0 y se registra la ronda en que perdio.
        LogRegistro.registrar(nombre + " " + apellido, 0, ronda);
        // se registra el ultimo puntaje del jugador siempre como 0 ya que perdio el juego.
        LogRegistro.registrarPuntajeJugador(nombre, 0, Integer.parseInt(maxPuntaje));
        
        // se eliminan los datos de la sesion del jugador para volver a empezar un nuevo juego.
        sesion.invalidate();
    %>
    <body style="background-color: #B2E0FF">
        
        <div class="container mt-5">
        <h1 style="text-align: center; font-size: 80px">Respuesta incorrecta, juego finalizado</h1>
        </div>
        <div class="container mt-5 d-grid gap-2 col-6 mx-auto">
        <a href="index.jsp" class="btn btn-lg btn-primary"> volver a jugar</a>
        </div>
    </body>
</html>
