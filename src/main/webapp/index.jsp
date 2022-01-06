<%-- 
    Document   : index
    Created on : Jan 4, 2022, 5:20:38 PM
    Author     : wfran
--%>

<%@page import="java.util.List"%>
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
        //se instancia la clase ModeloJugador la cual realiza conexion a la BBDD para obtneer un alista de tipo Jugador. De esta manera se traen todos los jugadores creados en BBDD
        ModeloJugador modeloJugador = new ModeloJugador();
        List <Jugador> jugadores = modeloJugador.getJugador();
    
    %>
    <body>
        <div class="container mt-5">
            <h1 style="text-align: center">Preguntas y Respuestas</h1>
        <h3><a href="nuevoJugador.jsp" class="btn btn-lg btn-primary">Crear Nuevo Jugador</a></h3>
        <h3>Seleccionar Jugador</h3>
        <table class="table table-striped">
            
            <tr><th>Jugador</th><th>Nombre</th><th>Maximo Puntaje</th><th>Ultimo Puntaje</th><th> </th></tr>
            <% for (Jugador jugadorTemp: jugadores) { %><!--a traves de un ciclo for se recorre la lista de los jugadores -->
            
            <tr> <!--se crea una fila pára traer los atributos del objeto jugador de la lista y se llenan las celdas con los metodos del objeto-->
                <td><%=jugadorTemp.getIdJugador() %></td>   
                <td><%=jugadorTemp.getNombre() + " " + jugadorTemp.getApellido() %></td>
                <td><%=jugadorTemp.getMax_puntaje() %></td>
                <td><%=jugadorTemp.getUltimo_puntaje() %></td>
                <!-- al final se crea una celda para seleccionar el jugador y se envian a traves de GET los atributos del objeto jugador para crear una sesion de juego-->
                <td><a href="login.jsp?id=<%=jugadorTemp.getIdJugador()%>&nombre=<%=jugadorTemp.getNombre()%>&apellido=<%=jugadorTemp.getApellido()%>&maxP=<%=jugadorTemp.getMax_puntaje()%>" class="btn btn-primary">Seleccionar</a></td>
            </tr>
              
            
            <%}%>
            
        </table>
        </div>
    </body>
</html>
