<%-- 
    Document   : GestionarEmpleados
    Created on : 13 nov 2023, 19:01:02
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Empleados</title>
        <link rel="stylesheet" href="Estilos/EstiloPaginas.css"/>
    </head>
    <body>
        <h1 class="temaEmpleado">Gestión de Empleados</h1>
        <h2 class="listadoEmpleado">Listado de Empleados</h2>
        <h3>Conexion: ${mensaje_conexion}</h3><br>

        <a class="enlaAgre" href="/Farmacia?accion=AgregarEmpleado">Agregar Empleado</a><br><br>
        <br>
        

        <table border="2" class="ajuste">
            <thead class="nomEmple">
                <tr>
                    <th>id</th>
                    <th>nombres</th>
                    <th>apellidos</th>
                    <th>dui</th>
                    <th>iss</th>
                    <th>fecha_nacimiento</th>
                    <th>telefono</th>
                    <th>correo</th>
		    <th>idDireccion</th>
                    <th>idCargo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody class="tablaEmpleado">
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.id}" /></td>
                        <td><c:out value="${item.nombres}" /></td>
                        <td><c:out value="${item.apellidos}" /></td>                        
                        <td><c:out value="${item.dui}" /></td>
                        <td><c:out value="${item.iss}" /></td>
                        <td><c:out value="${item.fecha_nacimiento}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.correo}" /></td>
			<td><c:out value="${item.idDireccion}" /></td>                        
                        <td><c:out value="${item.idCargo}" /></td> 
                        
                        <td>
                            
                            <form method="POST" action="/Farmacia/ModificarEmpleado.jsp" >
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="apellidos" value="${item.apellidos}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="iss" value="${item.iss}" />
                                <input type="hidden" name="fecha_nacimiento" value="${item.fecha_nacimiento}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="hidden" name="idCargo" value="${item.idCargo}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/Farmacia/EliminarEmpleado.jsp">
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="apellidos" value="${item.apellidos}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="iss" value="${item.iss}" />
                                <input type="hidden" name="fecha_nacimiento" value="${item.fecha_nacimiento}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="hidden" name="idCargo" value="${item.idCargo}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                            
                        </td>
                    </tr>
                </c:forEach>
            </tbody>   
        </table>
        <button class="boton" onclick="regresar()">Regresar</button>
            <script>
            function regresar(){
                window.history.back();
            }
        </script>
    </body>
</html>