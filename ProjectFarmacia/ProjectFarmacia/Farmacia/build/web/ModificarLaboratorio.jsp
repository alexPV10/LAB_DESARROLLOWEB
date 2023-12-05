<%-- 
    Document   : ModificarLaboratorio
    Created on : 15 nov 2023, 13:42:35
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Laboratorio</title>
    </head>
    <body>
        <h1>Modificar Laboratorio</h1>
        <form action="/Farmacia/ServletPrincipal?accion=ModificarLaboratorio" method="POST">
            <div>
                <label>id:</label>
                <input type="text" name="id" id="id" value="${param.id}" readonly /><br>
                <label>nif:</label>
                <input type="text" name="nif" id="nif" value="${param.nif}" required /><br>
                <label>nombres:</label>
                <input type="text" name="nombres" id="nombres" value="${param.nombres}" required /><br>
                <label>descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" value="${param.descripcion}" required /><br>
                <label>correo:</label>
                <input type="text" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>telefono:</label>
                <input type="date" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>IdDireccion:</label>
                <input type="text" name="IdDireccion" id="IdDireccion" value="${param.IdDireccion}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarLaboratorios">Regresar</a><br>
            </div>             
        </form>
    </body>
</html>
