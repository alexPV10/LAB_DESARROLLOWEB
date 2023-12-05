<%-- 
    Document   : AgregarLaboratorio
    Created on : 15 nov 2023, 13:42:09
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        
        <h1>Agregar nuevo Laboratorio</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=AgregarLaboratorio">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>nif:</label>
                <input type="text" name="nif" id="nif" required /><br>
                <label>nombres:</label>
                <input type="text" name="nombres" id="nombres" required /><br>
                <label>descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" required /><br>
                <label>correo: </label>
                <input type="email" name="correo" id="correo" required /><br>
                <label>telefono: </label>
                <input type="date" name="telefono" id="telefono" required /><br>
                <label>IdDireccion:</label>
                <input type="text" name="IdDireccion" id="IdDireccion" required /><br><br>                            
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div><br>
            <div>
                <a href="/Farmacia/?accion=GestionarLaboratorios">Regresar</a>
            </div>            
        </form>
    </body>
</html>
