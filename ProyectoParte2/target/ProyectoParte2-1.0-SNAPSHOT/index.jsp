<%-- 
    Document   : index
    Created on : 23 abr. 2024, 09:16:50
    Author     : Ionic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del cliente</h1>
        <form action="Sv_usuario" method="POST">
            <p><label> Dni: </label><input type="text" name="dni"> </p>
            <p><label> Nombre: </label><input type="text" name="nombre"> </p>
            <p><label> Apellido: </label><input type="text" name="apellido"> </p>
            <p><label> Teléfono: </label><input type="text" name="telefono"> </p>
            <button type="submit"> enviar</button>
        </form>
        
        <<h1>Ver lista de usuarios</h1>
        <p>Para ver los datos de los usuarios cargados haga click en el siguiente boton</p>
        <form action="Sv_usuario" method="GET">
            <button type="submit"> Mostrar Usuarios </button>
        </form>
    </body>
</html>
