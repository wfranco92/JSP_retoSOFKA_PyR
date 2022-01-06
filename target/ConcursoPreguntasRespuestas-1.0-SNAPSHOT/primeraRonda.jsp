<%-- 
    Document   : primeraRonda
    Created on : Jan 3, 2022, 10:30:30 PM
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
        <title>Preguntas y Respuestas. 1 Ronda</title>
    </head>
    <%
        // se almacena en una variable el numero generado por la clase estatica PreguntaAleatoria
        int numPregunta=PreguntaAleatoria.generarnumero(1);
        
        //se instancia la clase ModeloPregunta la cual realiza conexion a la BBDD para obtener  un alista de tipo pregunta. De esta manera se trae una pregunta de la categoria 1 al azar.
        ModeloPregunta modelo = new ModeloPregunta();
        Preguntas pregunta = modelo.getPregunta(numPregunta);
        
        //se instancia la clase ModeloRespuesta la cual realiza conexion a la BBDD para obtener  un alista de tipo OpcionesRespuesta. De esta manera se traen las posibles respuestas asociadas a la pregunta.
        ModeloRespuesta modeloRta = new ModeloRespuesta();
        List <OpcionesRespuesta> listaRespuestas = modeloRta.getRespuestas(numPregunta);
        
        // se crea un nuevo objeto de tipo Ronda para iniciar la primera ronda del juego
        Ronda ronda = new Ronda(1, pregunta.getEnunciado(), listaRespuestas, 5);
        
        // se trae el objeto sesion, para poder usar los atributos del mismo dentro de la pagina JSP.
        HttpSession sesion = request.getSession();
 
         
    %>
    <body>
        
        <div class="container mt-5">
        <h4>Pregunta por: <%=ronda.getPuntos()%> Puntos </h4>
        <h1 style="text-align: center; font-size: 50px"><%= ronda.getPregunta() %></h1>
        <table class="table table-striped table-hover">
            <form>
            <!--cada input e tipo radio tiene el valor asociado a el atributo "correcto" el cual permite ver si la opcion de respuesta es correcta o no-->
            <tr><td><input type="radio" name="opcion" id="a" value="<%=listaRespuestas.get(0).getCorrecta() %>" required>A</td><td><label for="a"><%= listaRespuestas.get(0).getRespuesta_enunciado() %></label></td></tr>
            <tr><td><input type="radio" name="opcion" id="b" value="<%=listaRespuestas.get(1).getCorrecta() %>" required>B</td><td><label for="b"><%= listaRespuestas.get(1).getRespuesta_enunciado() %></label></td></tr>
            <tr><td><input type="radio" name="opcion" id="c" value="<%=listaRespuestas.get(2).getCorrecta() %>" required>C</td><td><label for="c"><%= listaRespuestas.get(2).getRespuesta_enunciado() %></label></td></tr>
            <tr><td><input type="radio" name="opcion" id="d" value="<%=listaRespuestas.get(3).getCorrecta() %>" required>D</td><td><label for="d"><%= listaRespuestas.get(3).getRespuesta_enunciado() %></label></td></tr>          

        </table>
                        
            <button type="submit" name="enviar" class="btn btn-success">Enviar Respuesta</button>
            </form>
        </div>
        <div class="container mt-5">
            <h4>Puntaje Actual: <%=ronda.getPuntos()-5 %> Puntos </h4>
            
            <h4>Jugador: <%= sesion.getAttribute("nombre") %>  </h4>
        </div>
        <div class="container mt-5 d-grid gap-2 d-md-block">
            <a href="abandonarPartida.jsp?puntos=<%=ronda.getPuntos()-5 %>&ronda=<%=ronda.getNumRonda()%>" class="btn btn-primary">Terminar partida con puntaje acumulado</a>
        </div>
    </body>
            <%
            
                // se evalua si la opcion seleccionada es correcta. si lo es pasa a la sigueinte ronda. Si no se redirecciona a la pagina de fallido.
            if (request.getParameter("enviar") != null){
                int rtaCorrecta = Integer.parseInt(request.getParameter("opcion"));
                if(rtaCorrecta==1){
                    response.sendRedirect("segundaRonda.jsp");
                }else{
                    int numRonda = ronda.getNumRonda();
                    
                    String cadena = "ronda="+numRonda;
                    response.sendRedirect("fallido.jsp?"+cadena);
                   
                }
            }
            %>
</html>

