<%-- 
    Document   : ModificarProveedor
    Created on : 15 nov 2023, 13:48:53
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Proveedor</title>
    </head>
    <body>
        <h1>Modificar Proveedor</h1>
        <form action="/Farmacia/ServletPrincipal?accion=ModificarProveedor" method="POST">
            <div>
                <label>id:</label>
                <input type="text" name="id" id="id" value="${param.id}" readonly /><br>
                <label>nombreEmpresa:</label>
                <input type="text" name="nombreEmpresa" id="nombreEmpresa" value="${param.nombreEmpresa}" required /><br>
                <label>contactoNombre:</label>
                <input type="text" name="contactoNombre" id="contactoNombre" value="${param.contactoNombre}" required /><br>
                <label>contactoTelefono:</label>
                <input type="text" name="contactoTelefono" id="contactoTelefono" value="${param.contactoTelefono}" required /><br>
                <label>direccion:</label>
                <input type="text" name="direccion" id="direccion" value="${param.direccion}" required /><br>
                <label>email:</label>
                <input type="email" name="email" id="email" value="${param.email}" required /><br>
                <label>notas:</label>
                <input type="text" name="notas" id="notas" value="${param.notas}" required /><br>
                <label>fechaRegistro:</label>
                <input type="date" name="fechaRegistro" id="fechaRegistro" value="${param.fechaRegistro}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarProveedor">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
