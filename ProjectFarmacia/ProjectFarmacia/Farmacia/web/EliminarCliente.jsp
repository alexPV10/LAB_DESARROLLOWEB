<%-- 
    Document   : EliminarCliente
    Created on : 13 nov 2023, 20:33:56
    Author     : Tambo
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Cliente</title>
    </head>
    <body>
        <h1>Eliminar Cliente</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=EliminarCliente">
            <div>
                <label>id: ${param.id}</label><br>
                <label>nombres: ${param.nombre}</label><br>
                <label>apellidos: ${param.apellido}</label><br>
                <label>dui: ${param.dui}</label><br>
                <label>Fecha_nacimiento: ${param.fecha_nacimiento}</label><br>
                <label>Telefono: ${param.telefono}</label><br>
                <label>Correo: ${param.correo}</label><br>
                <label>ID Direccion: ${param.IdDireccion}</label><br>   
                <input type="hidden" name="id" id="id" value="${param.id}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>