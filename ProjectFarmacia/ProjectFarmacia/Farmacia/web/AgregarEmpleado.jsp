<%-- 
    Document   : AgregarEmpleado
    Created on : 13 nov 2023, 18:59:43
    Author     : Tambo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Empleado</title>
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
        
        <h1>Agregar nuevo empleado</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=AgregarEmpleado">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>nombres:</label>
                <input type="text" name="nombres" id="nombres" required /><br>
                <label>apellidos:</label>
                <input type="text" name="apellidos" id="apellidos" required /><br>
                <label>dui:</label>
                <input type="text" name="dui" id="dui" required /><br>
                <label>iss:</label>
                <input type="text" name="iss" id="iss" required /><br>
                <label>fecha_nacimiento:</label>
                <input type="date" name="fecha_nacimiento" id="fecha_nacimiento" required /><br>
                <label>teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>correo:</label>
                <input type="email" name="correo" id="correo" required /><br>
                <label>IdDireccion:</label>
                <input type="text" name="IdDireccion" id="IdDireccion" required /><br>
                <label>IdCargo:</label>
                <input type="text" name="IdCargo" id="IdCargo" required /><br><br>                            
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div><br>
            <div>
                <a href="/Farmacia/?accion=GestionarEmpleados">Regresar</a>
            </div>            
        </form>
    </body>
</html>     