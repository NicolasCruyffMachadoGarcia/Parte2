<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .box {
                border: 1px solid #ccc;
                padding: 10px;
                margin-bottom: 20px;
            }
            .box h1 {
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div class="box">
            <h1>Datos del cliente</h1>
            <form action="Usuarios_Sv" method="POST">
                <p><label><b> Dni: </b></label><input type="text" name="dni"> </p>
                <p><label><b> Nombre: </b></label><input type="text" name="nombre"> </p>
                <p><label><b> Apellido: </b></label><input type="text" name="apellido"> </p>
                <p><label><b> Teléfono: </b></label><input type="text" name="telefono"> </p>
                <button type="submit"> enviar </button>
            </form>
        </div>

        <div class="box">
            <h1>Ver lista de usuarios</h1>
            <p>Para ver los datos de los usuarios cargados haga click en el siguiente boton</p>
            <form action="Usuarios_Sv" method="GET">
                <button type="submit"> Mostrar Usuarios </button>
            </form>
        </div>
    </body>
</html>
