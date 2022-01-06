<%-- 
    Document   : abandonarPartida
    Created on : Jan 5, 2022, 4:26:29 PM
    Author     : wfran
--%>

<%@page import="com.mycompany.concursopreguntasrespuestas.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <%
        
        //si el jugador abandona la partida se obtiene los parametros de la URL anterior, como el numeor de ronda y los puntos acumulados al momento.
        String puntos = request.getParameter("puntos");
        String ronda = request.getParameter("ronda");
        
        // se obtiene los datos de la sesion del jugador
        HttpSession sesion = request.getSession();
        String nombre=(String)(sesion.getAttribute("nombre"));
        String apellido=(String)(sesion.getAttribute("apellido"));
        String maxPuntaje =(String)(sesion.getAttribute("maximoPuntaje"));
        
        // se hace uso del metodo registrar de la clase estatica LogRegistro para almacenar en la BBDD el log del juego terminado, guardando el nombre dle jugador, el puntaje obtneido y las rondas que completo.
        LogRegistro.registrar(nombre + " " + apellido, Integer.parseInt(puntos), Integer.parseInt(ronda));
        
        
        // para guardar el puntaje del jugador que se retira, primero se evalua si el puntaje obtneido es mayor al maximo putnaje de su historico.
        int maximo = 0;
        int puntajeActual = Integer.parseInt(puntos);
        int maximoPuntaje = Integer.parseInt(maxPuntaje);
        
        if(puntajeActual > maximoPuntaje){
            
            maximo = puntajeActual;
        }else{
            maximo = maximoPuntaje;
        }
        
        // se hace uso del metodo registrarPuntajeJugador de la clase estatica LogRegistro, donde se actualiza el utlimo puntaje obtenido dle juego y el maximo puntaje historico, segun la anterior validacion.
        LogRegistro.registrarPuntajeJugador(nombre, Integer.parseInt(puntos), maximo);
        

        // se eliminan los datos de la sesion del jugador para volver a empezar un nuevo juego.
        sesion.invalidate();
    %>
    <body style="background-color: #B2E0FF">
        
        <div class="container mt-5">
        <h1 style="text-align: center; font-size: 80px">Juego finalizado</h1>
        </div>
        <div class="container mt-5 d-grid gap-2 col-6 mx-auto">
        <a href="index.jsp" class="btn btn-lg btn-primary"> volver a jugar</a>
        </div>
    </body>
</html>
