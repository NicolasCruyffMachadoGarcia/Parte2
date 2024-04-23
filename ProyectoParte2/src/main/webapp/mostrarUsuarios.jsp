<%-- 
    Document   : mostrarUsuarios
    Created on : 23 abr. 2024, 09:45:40
    Author     : Ionic
--%>

<%@page import="Logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Usuarios Registrados</h1>
        <%
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int contador = 1;
            for (Usuario usu : listaUsuarios) {
                    
                
            %>
            <p><b> Usuario N°<%=contador%> </b></p>
            <p>Dni: <%=usu.getDni()%></p>
            <p>Nombre: <%=usu.getNombre()%></p>
            <p>Apellido: <%=usu.getApellido()%></p>
            <p>Telefono: <%=usu.getTelefono()%></p>
            <p>---------------------------------</p>
            
            <% contador = contador+1;%>
            <%
                }
            %>
    </body>
</html>
