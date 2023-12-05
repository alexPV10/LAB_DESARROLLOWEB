<%-- 
    Document   : ModificarCliente
    Created on : 13 nov 2023, 20:35:06
    Author     : Tambo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Cliente</title>
    </head>
    <body>   
        <h1>Modificar Cliente</h1>
        <form action="/Farmacia/ServletPrincipal?accion=ModificarCliente" method="POST">
            <div>
                <label>id:</label>
                <input type="text" name="id" id="id" value="${param.id}" readonly /><br>
                <label>nombre</label>
                <input type="text" name="nombre" id="nombre" value="${param.nombre}" required /><br>
                <label>apellido:</label>
                <input type="text" name="apellido" id="apellido" value="${param.apellido}" required /><br>
                <label>dui:</label>
                <input type="text" name="dui" id="dui" value="${param.dui}" required /><br>
                <label>fecha_nacimiento:</label>
                <input type="date" name="fecha_nacimiento" id="fecha_nacimiento" value="${param.fecha_nacimiento}" required /><br>
                <label>telefono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>IdDireccion:</label>
                <input type="text" name="IdDireccion" id="IdDireccion" value="${param.IdDireccion}" required /><br>          
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>