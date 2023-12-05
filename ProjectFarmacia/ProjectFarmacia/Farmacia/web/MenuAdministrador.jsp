<%-- 
    Document   : MenuAdministrador
    Created on : 13 nov 2023, 19:02:27
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>-- Menu --</title>
        <link rel="stylesheet" href="Estilos/Estilos.css"/>
    </head>
    <body class="enlaces" >
        <nav class="enlaces1">
            <ul class="etiqueta">
                <li><a class="enlacesColor1" href="/Farmacia">Inicio Sistema Farmaceutico</a></li>
                <li><a class="enlacesColor1" href="/Farmacia?accion=Login">Login</a></li>
                <li><a class="enlacesColor2" href="/Farmacia?accion=GestionarEmpleados">GestionarEmpleados</a></li>
                <li><a class="enlacesColor2" href="/Farmacia?accion=GestionarClientes">GestionarClientes</a></li>
                <li><a class="enlacesColor2" href="/Farmacia?accion=GestionarProductos">GestionarProductos</a></li>
                <li><a class="enlacesColor2" href="/Farmacia?accion=GestionarLaboratorios">GestionarLaboratorios</a></li>
                <li><a class="enlacesColor2" href="/Farmacia?accion=GestionarProveedores">GestionarProveedores</a></li>
            </ul>
        </nav>
    </body>
</html>
