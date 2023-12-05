<%-- 
    Document   : AgregarProveedor
    Created on : 15 nov 2023, 13:48:04
    Author     : Tambo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Proveedor</title>
    </head>
    <body>
         <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar Proveedor</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=AgregarProveedor">
            <div>
                <!-- El ID de los cargos es autoincrementable -->
                <label>nombreEmpresa: </label>
                <input type="text" name="nombreEmpresa" id="nombreEmpresa" required /><br><br> 
                <label>contactoNombre: </label>
                <input type="text" name="contactoNombre" id="contactoNombre" required /><br><br> 
                <label>contactoTelefono: </label>
                <input type="text" name="contactoTelefono" id="contactoTelefono" required /><br><br> 
                <label>direccion: </label>
                <input type="text" name="direccion" id="direccion" required /><br><br> 
                <label>email: </label>
                <input type="email" name="email" id="email" required /><br><br> 
                <label>notas: </label>
                <input type="text" name="notas" id="notas" required /><br><br> 
                <label>fechaRegistro: </label>
                <input type="date" name="fechaRegistro" id="fechaRegistro" required /><br><br> 
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el cargo?')" /><br><br>
            </div><br>
            <div>
                <a href="/Farmacia/?accion=GestionarProveedores">Regresar</a>
            </div>            
        </form>
    </body>
</html>
