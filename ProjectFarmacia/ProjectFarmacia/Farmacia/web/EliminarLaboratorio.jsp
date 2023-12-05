<%-- 
    Document   : EliminarLaboratorio
    Created on : 15 nov 2023, 13:41:42
    Author     : Tambo
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Laboratorio</title>
    </head>
    <body>
        <h1>Eliminar Laboratorio</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=EliminarLaboratorio">
            <div>
                <label>id: ${param.id}</label><br>
                <label>nif: ${param.nif}</label><br>
                <label>nombres: ${param.nombres}</label><br>
                <label>descripcion: ${param.descripcion}</label><br>
                <label>correo: ${param.correo}</label><br>
                <label>telefono: ${param.telefono}</label><br>
                <label>ID Direccion: ${param.IdDireccion}</label>   
                <input type="hidden" name="id" id="id" value="${param.id}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarLaboratorios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>