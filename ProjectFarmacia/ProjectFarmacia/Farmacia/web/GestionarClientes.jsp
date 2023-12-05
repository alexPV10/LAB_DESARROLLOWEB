<%-- 
    Document   : GestionarClientes
    Created on : 13 nov 2023, 19:00:28
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Clientes</title>
        <link rel="stylesheet" href="Estilos/Clientes.css"/>
    </head>
    <body>
        <h1 class="temaClientes">Gestión de Clientes</h1>
        <h2 class="listadoClientes">Listado de Clientes</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        
         <a class="enlaAgreCli" href="/Farmacia?accion=AgregarCliente">Agregar Cliente</a><br><br>
        <br>
        <table border="2" class="ajuCli">
            <thead class="nomCli">
                <tr>
                    <th>id</th>
                    <th>nombre</th>
                    <th>apellido</th>
                    <th>dui</th>
                    <th>fecha_nacimiento</th>
                    <th>telefono</th>
                    <th>correo</th>
                    <th>idDireccion</th>
                    <th class="accionbtn">Acciones</th>
                    
                </tr>
            </thead>
            <tbody class="tablaClientes">
                <c:forEach items="${listaClientes}" var="item">
                    <tr>
                        <td><c:out value="${item.id}" /></td>
                        <td><c:out value="${item.nombre}" /></td>
                        <td><c:out value="${item.apellido}" /></td>                        
                        <td><c:out value="${item.dui}" /></td>
                        <td><c:out value="${item.fecha_nacimiento}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.correo}" /></td>
                        <td><c:out value="${item.idDireccion}" /></td> 
                        
                        <td>
                            
                            <form method="POST" action="/Farmacia/ModificarCliente.jsp" >
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="apellido" value="${item.apellido}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="fecha_nacimiento" value="${item.fecha_nacimiento}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" value="Modificar" class="acci" />
                            </form>
                                
                            </td>
                             <td>
                            <form method="POST" action="/Farmacia/EliminarCliente.jsp">
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="apellido" value="${item.apellido}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="fecha_nacimiento" value="${item.fecha_nacimiento}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" value="Eliminar" class="acci" />
                            </form>
                            
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
        <button class="botonCli" onclick="regresar()">Regresar</button>
            <script>
            function regresar(){
                window.history.back();
            }
        </script>
    </body>
</html>


