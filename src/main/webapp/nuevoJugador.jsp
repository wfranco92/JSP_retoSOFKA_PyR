<%-- 
    Document   : nuevoJugador
    Created on : Jan 5, 2022, 3:04:46 PM
    Author     : wfran
--%>

<%@page import="com.mycompany.concursopreguntasrespuestas.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-5">
            <h1>Crea tu nuevo perfil!</h1>
            <form action="nuevoJugador.jsp">
                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre">
                </div>
                <div class="mb-3">
                    <label for="apellido" class="form-label">Apellido</label>
                    <input type="text" class="form-control" id="apellido" name="apellido">
                </div>

                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="submit" name="crear">Crear</button>
                </div>
            </form>
        </div>
    </body>
    
    <%
    
        if (request.getParameter("crear") != null){
                
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            
            LogRegistro.nuevoJugador(nombre, apellido);
            
            response.sendRedirect("index.jsp");
            
         }
    
    %>
</html>
