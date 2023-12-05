<%-- 
    Document   : GestionarProveedores
    Created on : 13 nov 2023, 19:02:01
    Author     : Tambo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Provedores</title>
        <link rel="stylesheet" href="Estilos/Lab.css"/>
    </head>
    <body>
        <h1 class="temaProve">Gestión de Proveedores</h1>
        <h2 class="listadoProve">Listado de Proveedores</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        
        <a class="enlaProve" href="/Farmacia?accion=AgregarProveedor">Agregar Proveedor</a><br><br>
        <br>

        <table border="2" class="ajusteProve">
            <thead class="nomProve">
                <tr>
                    <th>id</th>
                    <th>nombreEmpresa</th>
                    <th>contactoNombre</th>
                    <th>contactoTelefono</th>
                    <th>direccion</th>
                    <th>email</th>
                    <th>notas</th>
                    <th>fechaRegistro</th>
                    <th>Acciones</th>

                </tr>
            </thead>
            <tbody class="tablaProve">
                <c:forEach items="${listaProveedores}" var="item">
                    
                    
                    <tr>
                        <td><c:out value="${item.id}" /></td>
                        <td><c:out value="${item.nombreEmpresa}" /></td>
                        <td><c:out value="${item.contactoNombre}" /></td>                        
                        <td><c:out value="${item.contactoTelefono}" /></td>
                        <td><c:out value="${item.direccion}" /></td>
                        <td><c:out value="${item.email}" /></td>
                        <td><c:out value="${item.notas}" /></td>
                        <td><c:out value="${item.fechaRegistro}" /></td>
			
                    <td>
                            
                            <form method="POST" action="/Farmacia/ModificarProveedor.jsp" >
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nombreEmpresa" value="${item.nombreEmpresa}" />
                                <input type="hidden" name="contactoNombre" value="${item.contactoNombre}" />
                                <input type="hidden" name="contactoTelefono" value="${item.contactoTelefono}" />
                                <input type="hidden" name="direccion" value="${item.direccion}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="notas" value="${item.notas}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="submit" value="Modificar" class="acci"/>
                            </form>
                            <form method="POST" action="/Farmacia/EliminarProveedor.jsp">
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nombreEmpresa" value="${item.nombreEmpresa}" />
                                <input type="hidden" name="contactoNombre" value="${item.contactoNombre}" />
                                <input type="hidden" name="contactoTelefono" value="${item.contactoTelefono}" />
                                <input type="hidden" name="direccion" value="${item.direccion}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="notas" value="${item.notas}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="submit" value="Eliminar"                                 
                                <input type="submit" value="Modificar" class="acci"/>
                            </form>
                        </td>
                </c:forEach>
            </tbody>            
        </table>
        <button class="botonProvee" onclick="regresar()">Regresar</button>
            <script>
            function regresar(){
                window.history.back();
            }
        </script>
    </body>
</html>

