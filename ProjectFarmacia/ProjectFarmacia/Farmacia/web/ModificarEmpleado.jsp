<%-- 
    Document   : ModificarEmpleado
    Created on : 13 nov 2023, 19:03:02
    Author     : Tambo
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Empleado</title>
    </head>
    <body>   
        <h1>Modificar empleado</h1>
        <form action="/Farmacia/ServletPrincipal?accion=ModificarEmpleado" method="POST">
            <div>
                <label>id:</label>
                <input type="text" name="id" id="id" value="${param.id}" readonly /><br>
                <label>nombres:</label>
                <input type="text" name="nombres" id="nombres" value="${param.nombres}" required /><br>
                <label>apellidos:</label>
                <input type="text" name="apellidos" id="apellidos" value="${param.apellidos}" required /><br>
                <label>dui:</label>
                <input type="text" name="dui" id="dui" value="${param.dui}" required /><br>
                <label>iss:</label>
                <input type="text" name="iss" id="iss" value="${param.iss}" required /><br>
                <label>fecha_nacimiento:</label>
                <input type="date" name="fecha_nacimiento" id="fecha_nacimiento" value="${param.fecha_nacimiento}" required /><br>
                <label>telefono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>IdDireccion:</label>
                <input type="text" name="IdDireccion" id="IdDireccion" value="${param.IdDireccion}" required /><br>
                <label>IdCargo:</label>
                <input type="text" name="IdCargo" id="IdCargo" value="${param.IdCargo}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>