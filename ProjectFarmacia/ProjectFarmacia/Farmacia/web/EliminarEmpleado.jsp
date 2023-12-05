<%-- 
    Document   : EliminarEmpleado
    Created on : 13 nov 2023, 19:00:11
    Author     : Tambo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Empleado</title>
    </head>
    <body>
        <h1>Eliminar empleado</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=EliminarEmpleado">
            <div>
                <label>id: ${param.id}</label><br>
                <label>nombres: ${param.nombres}</label><br>
                <label>apellidos: ${param.apellidos}</label><br>
                <label>dui: ${param.dui}</label><br>
                <label>iss: ${param.iss}</label><br>
                <label>Fecha_nacimiento: ${param.fecha_nacimiento}</label><br>
                <label>Telefono: ${param.telefono}</label><br>
                <label>Correo: ${param.correo}</label><br>
                <label>ID Direccion: ${param.IdDireccion}</label><br>
                <label>ID Cargo: ${param.IdCargo}</label>   
                <input type="hidden" name="id" id="id" value="${param.id}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>