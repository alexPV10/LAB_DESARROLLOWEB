<%-- 
    Document   : EliminarProveedor
    Created on : 15 nov 2023, 13:49:09
    Author     : Tambo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Proveedor</title>
    </head>
    <body>
        <h1>Eliminar Proveedor</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=EliminarProveedor">
            <div>
                <label>id: ${param.id}</label><br>
                <label>nombreEmpresa: ${param.nombreEmpresa}</label><br>
                <label>contactoNombre: ${param.contactoNombre}</label><br>
                <label>contactoTelefono: ${param.contactoTelefono}</label><br>
                <label>direccion: ${param.direccion}</label><br>
                <label>email: ${param.email}</label><br>
                <label>nota: ${param.nota}</label><br>
                <label>fechaRegistro: ${param.fechaRegistro}</label><br>
                <input type="hidden" name="id" id="id" value="${param.id}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarProveedor">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>