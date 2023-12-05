<%-- 
    Document   : GestionarProductos
    Created on : 13 nov 2023, 19:01:48
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Productos</title>
        <link rel="stylesheet" href="Estilos/Clientes.css"/>
    </head>
    <body>
        <h1 class="temaProducto">Gestión de Productos</h1>
        <h2 class="listadoProducto">Listado de Productos</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        
        <a class="enlaPro" href="/Farmacia?accion=AgregarProducto">Agregar Producto</a><br><br>
        <br>

        <table border="2" class="ajusProduc">
            <thead class="nomProduc">
                <tr>
                    <th class="idPro">id</th>
                    <th>nombre</th>
                    <th>descripcion</th>
                    <th>precio</th>
                    <th>fechaVencimiento</th>
                    <th>stockActual</th>
                    <th>stockMinimo</th>
                    <th>f_UltimaCompra</th>
		    <th>f_UtimaVenta</th>
                    <th>instrucciones</th>
                    <th>idPrecentacion</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>
            <tbody class="tablaProduc">
                <c:forEach items="${listaProductos}" var="item">
                    <tr>
                        <td class="idPro"><c:out value="${item.id}" /></td>
                        <td><c:out value="${item.nombre}" /></td>
                        <td><c:out value="${item.descripcion}" /></td>                        
                        <td><c:out value="${item.precio}" /></td>
                        <td><c:out value="${item.fechaVencimiento}" /></td>
                        <td><c:out value="${item.stockActual}" /></td>
                        <td><c:out value="${item.stockMinimo}" /></td>
                        <td><c:out value="${item.fechaUltimaCompra}" /></td>
			<td><c:out value="${item.fechaUltimaVenta}" /></td> 
                        <td><c:out value="${item.instrucciones}" /></td>
                        <td><c:out value="${item.idPrecentacion}" /></td> 
                    <td>
                            
                            <form method="POST" action="/Farmacia/ModificarProducto.jsp" >
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="precio" value="${item.precio}" />
                                <input type="hidden" name="fechaVencimiento" value="${item.fechaVencimiento}" />
                                <input type="hidden" name="stockActual" value="${item.stockActual}" />
                                <input type="hidden" name="stockMinimo" value="${item.stockMinimo}" />
                                <input type="hidden" name="fechaUltimaCompra" value="${item.fechaUltimaCompra}" />
                                <input type="hidden" name="fechaUltimaVenta" value="${item.fechaUltimaVenta}" />
                                <input type="hidden" name="instrucciones" value="${item.instrucciones}" />
                                <input type="hidden" name="idPrecentacion" value="${item.idPrecentacion}" />
                                <input type="submit" value="Modificar" class="acci"/>
                            </form>
                            <form method="POST" action="/Farmacia/EliminarProducto.jsp">
                                <input type="hidden" name="id" value="${item.id}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="precio" value="${item.precio}" />
                                <input type="hidden" name="fechaVencimiento" value="${item.fechaVencimiento}" />
                                <input type="hidden" name="stockActual" value="${item.stockActual}" />
                                <input type="hidden" name="stockMinimo" value="${item.stockMinimo}" />
                                <input type="hidden" name="fechaUltimaCompra" value="${item.fechaUltimaCompra}" />
                                <input type="hidden" name="fechaUltimaVenta" value="${item.fechaUltimaVenta}" />
                                <input type="hidden" name="instrucciones" value="${item.instrucciones}" />
                                <input type="hidden" name="idPrecentacion" value="${item.idPrecentacion}" />
                                <input type="submit" value="Eliminar"                                 
                                <input type="submit" value="Modificar" class="acci"/>
                            </form>
                        </td>
                </c:forEach>
            </tbody>            
        </table>
        <button class="botonPro" onclick="regresar()">Regresar</button>
            <script>
            function regresar(){
                window.history.back();
            }
        </script>
    </body>
    
</html>
