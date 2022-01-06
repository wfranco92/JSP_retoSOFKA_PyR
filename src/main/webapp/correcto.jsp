<%-- 
    Document   : correcto
    Created on : Jan 4, 2022, 4:30:08 PM
    Author     : wfran
--%>

<%@page import="com.mycompany.concursopreguntasrespuestas.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Preguntas y Respuestas. Juego Finalizado</title>
    </head>

        <%
            
            // se recuperarn los atributos de la sesion del jugador.
             HttpSession sesion=request.getSession();
             String nombre=(String)(sesion.getAttribute("nombre"));
             String apellido=(String)(sesion.getAttribute("apellido"));
             String maxPuntaje =(String)(sesion.getAttribute("maxPuntaje"));
             
             // si el jugador llega a la ultima ronda y gana el juego se registra en el historial del juego su nombre, el puntaje maximo de 100 y las 5 rondas del juego.
             LogRegistro.registrar(nombre + " " + apellido, 100, 5);
             
             // al ser la ultima ronda siempre se actualizara en el jugador su puntaje maximo como 100 y su ultimo puntaje como 100
             LogRegistro.registrarPuntajeJugador(nombre, 100, 100);
             
             // se eliminan los datos de la sesion del jugador para volver a empezar un nuevo juego.
             sesion.invalidate();        

        %>
    <body style="background-color: #B2E0FF">
        <div class="container mt-5">
        <script>alert("respuesta correcta!!!. Puntaje obtenido: 40 puntos")</script>
        <h1 style="text-align: center; font-size: 80px">Juego finalizado...Excelente</h1>
        </div>
        <div class="container mt-5 d-grid gap-2 col-6 mx-auto">
        <a href="index.jsp" class="btn btn-lg btn-primary"> volver a jugar</a>
        </div>
        </body>
</html>
