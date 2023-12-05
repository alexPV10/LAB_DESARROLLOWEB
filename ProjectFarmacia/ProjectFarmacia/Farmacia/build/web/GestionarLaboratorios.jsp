<%-- 
    Document   : GestionarLaboratorios
    Created on : 13 nov 2023, 19:01:23
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Laboratorios</title>
        <link rel="stylesheet" href="Estilos/Lab.css"/>
    </head>
    <body>
        <h1 class="temaLab">Gestión de Laboratorios</h1>
        <h2 class="listadoLab">Listado de Laboratorios</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        
        <a class="enlaLab" href="/Farmacia?accion=AgregarLaboratorio">Agregar Laboratorio</a><br><br>
        <br>


        <table border="2" class="ajusLab">
            <thead class="nomLab">
                <tr>
                    <th>id</th>
                    <th>nif</th>
                    <th>nombres</th>
                    <th>descripcion</th>
                    <th>correo</th>
                    <th>telefono</th>
		    <th>idDireccion</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody class="tablaLab">
                <c:forEach items="${listaLaboratorios}" var="item">
                    <tr>
                        <td><c:out value="${item.id}" /></td>
                        <td><c:out value="${item.nif}" /></td>
                        <td><c:out value="${item.nombres}" /></td>                        
                        <td><c:out value="${item.descripcion}" /></td>
                        <td><c:out value="${item.correo}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
			<td><c:out value="${item.idDireccion}" /></td>                        
                    
                     <td>
                            
                            <form method="POST" action="/Farmacia/ModificarLaboratorio.jsp" >
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nif" value="${item.nif}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" value="Modificar" class="acci"/>
                            </form>
                            <form method="POST" action="/Farmacia/EliminarLaboratorio.jsp">
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nif" value="${item.nif}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" value="Eliminar"                                 
                                <input type="submit" value="Modificar" class="acci"/>
                            </form>
                        </td>
                </c:forEach>
            </tbody>  
        </table>
        <button class="botonLab" onclick="regresar()">Regresar</button>
            <script>
            function regresar(){
                window.history.back();
            }
        </script>
    </body>
</html>


